#!/usr/bin/env node

/**
 * APEX Python Design Generator - Node.js Wrapper
 * Integrates Python design generation system with APEX workflow
 */

const { PythonShell } = require('python-shell');
const fs = require('fs');
const path = require('path');

class APEXPythonDesignSystem {
    constructor() {
        this.apexDir = 'C:\\Users\\User\\Claude';
        this.pythonScript = path.join(__dirname, 'python-design-generator.py');
        this.configPath = '.claude/config/design-system.json';
    }

    // Get current APEX project context
    getCurrentAPEXContext() {
        const context = {};
        
        // Try to read current project context
        const contextFiles = [
            '.claude/context/architect-to-ux.md',
            '.claude/context/current-story.md', 
            '.claude/project-context.json'
        ];
        
        for (const file of contextFiles) {
            if (fs.existsSync(file)) {
                try {
                    if (file.endsWith('.json')) {
                        context[path.basename(file, '.json')] = JSON.parse(fs.readFileSync(file, 'utf8'));
                    } else {
                        context[path.basename(file, '.md')] = fs.readFileSync(file, 'utf8');
                    }
                } catch (error) {
                    console.warn(`Could not read context file ${file}:`, error.message);
                }
            }
        }
        
        // Extract key information
        context.projectName = this.extractProjectName(context);
        context.storyName = this.extractStoryName(context);
        context.storyDetails = this.extractStoryDetails(context);
        
        return context;
    }

    // Extract project name from various sources
    extractProjectName(context) {
        // Check various possible locations for project name
        if (context['project-context']?.name) return context['project-context'].name;
        if (context['architect-to-ux']?.includes('Project:')) {
            const match = context['architect-to-ux'].match(/Project:\s*(.+)/);
            if (match) return match[1].trim();
        }
        
        // Fallback to current directory name
        return path.basename(process.cwd());
    }

    // Extract story name from context
    extractStoryName(context) {
        if (context['current-story']?.includes('Story:')) {
            const match = context['current-story'].match(/Story:\s*(.+)/);
            if (match) return match[1].trim();
        }
        if (context['architect-to-ux']?.includes('Feature:')) {
            const match = context['architect-to-ux'].match(/Feature:\s*(.+)/);
            if (match) return match[1].trim();
        }
        return 'Current Feature';
    }

    // Extract story details from context
    extractStoryDetails(context) {
        let details = '';
        if (context['architect-to-ux']) {
            details += context['architect-to-ux'];
        }
        if (context['current-story']) {
            details += '\n' + context['current-story'];
        }
        return details || 'APEX-generated feature';
    }

    // Load design system configuration
    loadDesignConfig() {
        if (fs.existsSync(this.configPath)) {
            return JSON.parse(fs.readFileSync(this.configPath, 'utf8'));
        }
        return null;
    }

    // Save design system configuration
    saveDesignConfig(config) {
        const configDir = path.dirname(this.configPath);
        if (!fs.existsSync(configDir)) {
            fs.mkdirSync(configDir, { recursive: true });
        }
        fs.writeFileSync(this.configPath, JSON.stringify(config, null, 2));
    }

    // Execute Python design generation
    async executePythonDesignGenerator(command) {
        return new Promise((resolve, reject) => {
            const options = {
                mode: 'text',
                pythonPath: 'python',
                pythonOptions: ['-u'],
                scriptPath: path.dirname(this.pythonScript),
                args: [command]
            };

            console.log(`🐍 Executing: python ${path.basename(this.pythonScript)} ${command}`);

            const pyshell = new PythonShell(path.basename(this.pythonScript), options);

            let output = '';
            pyshell.on('message', (message) => {
                console.log(message);
                output += message + '\n';
            });

            pyshell.end((err, code, signal) => {
                if (err) {
                    console.error('❌ Python execution failed:', err.message);
                    reject(err);
                } else {
                    console.log(`✅ Python script completed with exit code: ${code}`);
                    resolve({
                        exitCode: code,
                        output: output,
                        signal: signal
                    });
                }
            });
        });
    }

    // Automatically create designs for current APEX story (called by Sally)
    async autoCreateDesigns() {
        console.log('🎨 APEX Python Design System: Auto-creating designs...');
        
        try {
            // Get current APEX context
            const context = this.getCurrentAPEXContext();
            console.log(`📋 Project: ${context.projectName}`);
            console.log(`📖 Story: ${context.storyName}`);
            
            // Check Python dependencies
            await this.checkPythonDependencies();
            
            // Execute all-stages command
            const result = await this.executePythonDesignGenerator('all-stages');
            
            console.log('✅ APEX Python Design System: All stages completed successfully!');
            return result;
            
        } catch (error) {
            console.error('❌ APEX Python Design System failed:', error.message);
            // Create fallback context without designs
            await this.createFallbackHandoff(this.getCurrentAPEXContext());
            throw error;
        }
    }

    // Check Python dependencies
    async checkPythonDependencies() {
        const requiredPackages = [
            'matplotlib',
            'numpy', 
            'Pillow',
            'flask'
        ];

        console.log('🔍 Checking Python dependencies...');

        for (const pkg of requiredPackages) {
            try {
                await this.executePythonCommand(`-c "import ${pkg}"`);
                console.log(`✅ ${pkg} is available`);
            } catch (error) {
                console.warn(`⚠️  ${pkg} not found - attempting to install...`);
                try {
                    await this.executePythonCommand(`-m pip install ${pkg}`);
                    console.log(`✅ ${pkg} installed successfully`);
                } catch (installError) {
                    console.error(`❌ Failed to install ${pkg}:`, installError.message);
                    throw new Error(`Required Python package ${pkg} could not be installed`);
                }
            }
        }

        console.log('✅ All Python dependencies are ready');
    }

    // Execute Python command
    async executePythonCommand(args) {
        return new Promise((resolve, reject) => {
            const { spawn } = require('child_process');
            const python = spawn('python', args.split(' '));

            let output = '';
            let error = '';

            python.stdout.on('data', (data) => {
                output += data.toString();
            });

            python.stderr.on('data', (data) => {
                error += data.toString();
            });

            python.on('close', (code) => {
                if (code === 0) {
                    resolve(output);
                } else {
                    reject(new Error(error || `Python command failed with exit code ${code}`));
                }
            });
        });
    }

    // Create fallback handoff when Python generation fails
    async createFallbackHandoff(context) {
        const fallbackContent = `# UX to Developer Handoff (Python Generation Failed)
## Project: ${context.projectName}
## Story: ${context.storyName}

### ⚠️ Python Design Generation Unavailable
Python design generation system failed. Proceeding with manual design approach.

### 📋 Design Requirements
${context.storyDetails}

### 🎨 Manual Design Guidelines
Please create designs manually following these principles:
- Use clean, modern design principles
- Implement responsive layout (mobile-first approach)
- Follow accessibility best practices (WCAG AA+ compliance)
- Use consistent color scheme and typography
- Focus on user experience and usability

### 🏗️ Three-Stage Implementation Approach
Even without automated design generation, follow the three-stage approach:

1. **Stage 1: Visual Draft**
   - Create wireframes or sketches showing layout concept
   - Define color scheme and typography choices
   - Plan user flow and interaction patterns

2. **Stage 2: HTML/CSS Skeleton**  
   - Build basic HTML structure with semantic elements
   - Create responsive CSS layout using modern techniques
   - Set up live preview for rapid iteration

3. **Stage 3: Full Implementation**
   - Add interactive JavaScript functionality
   - Implement animations and micro-interactions
   - Optimize for performance and accessibility
   - Add SEO and security optimizations

### 🚀 Implementation Checklist
- [ ] Create initial wireframes/mockups
- [ ] Build semantic HTML structure  
- [ ] Style with responsive CSS
- [ ] Add JavaScript interactivity
- [ ] Test across devices and browsers
- [ ] Validate accessibility compliance
- [ ] Optimize performance
- [ ] Prepare for deployment

---
*Generated by APEX Python Design System (Fallback Mode)*
*Consider installing Python dependencies for automated design generation*
`;

        const handoffPath = '.claude/context/ux-to-dev.md';
        const contextDir = path.dirname(handoffPath);
        if (!fs.existsSync(contextDir)) {
            fs.mkdirSync(contextDir, { recursive: true });
        }
        fs.writeFileSync(handoffPath, fallbackContent);
        console.log(`📁 Fallback handoff created: ${handoffPath}`);
    }

    // Setup design system for current project
    async setupDesignSystem() {
        console.log('🔧 Setting up Python Design System...');
        
        try {
            // Check Python availability
            await this.executePythonCommand('--version');
            console.log('✅ Python is available');
            
            // Check Python dependencies
            await this.checkPythonDependencies();
            
            // Save configuration
            const config = {
                pythonAvailable: true,
                dependenciesInstalled: true,
                configured: new Date().toISOString(),
                scriptPath: this.pythonScript
            };
            this.saveDesignConfig(config);
            
            // Create project directory structure
            const dirs = ['.claude/config', '.claude/context', 'designs', 'designs/exports'];
            for (const dir of dirs) {
                if (!fs.existsSync(dir)) {
                    fs.mkdirSync(dir, { recursive: true });
                    console.log(`📁 Created directory: ${dir}`);
                }
            }
            
            console.log('✅ Python Design System setup complete!');
            return config;
            
        } catch (error) {
            console.error('❌ Python Design System setup failed:', error.message);
            throw error;
        }
    }

    // Get system status
    async getSystemStatus() {
        const config = this.loadDesignConfig();
        const context = this.getCurrentAPEXContext();
        
        const status = {
            configured: !!config,
            pythonAvailable: config?.pythonAvailable || false,
            dependenciesInstalled: config?.dependenciesInstalled || false,
            projectName: context.projectName,
            storyName: context.storyName,
            hasDesigns: fs.existsSync('project_mockup.png') || fs.existsSync('enhanced-index.html'),
            hasHandoff: fs.existsSync('.claude/context/ux-to-dev.md')
        };
        
        console.log('📊 APEX Python Design System Status:');
        console.log(`   Configured: ${status.configured ? '✅' : '❌'}`);
        console.log(`   Python Available: ${status.pythonAvailable ? '✅' : '❌'}`);
        console.log(`   Dependencies: ${status.dependenciesInstalled ? '✅' : '❌'}`);
        console.log(`   Project: ${status.projectName}`);
        console.log(`   Current Story: ${status.storyName}`);
        console.log(`   Has Designs: ${status.hasDesigns ? '✅' : '❌'}`);
        console.log(`   Dev Handoff Ready: ${status.hasHandoff ? '✅' : '❌'}`);
        
        return status;
    }
}

// CLI Interface
async function main() {
    const args = process.argv.slice(2);
    const command = args[0];
    const designSystem = new APEXPythonDesignSystem();

    try {
        switch (command) {
            case 'auto-create':
                await designSystem.autoCreateDesigns();
                break;
            
            case 'setup':
                await designSystem.setupDesignSystem();
                break;
            
            case 'status':
                await designSystem.getSystemStatus();
                break;

            case 'stage1':
            case 'stage2': 
            case 'stage3':
            case 'all-stages':
            case 'handoff':
                await designSystem.executePythonDesignGenerator(command);
                break;
            
            default:
                console.log(`
🎨 APEX Python Design Generation System

Usage: node python-design-generator.js <command> [args...]

Commands:
  auto-create              Automatically create designs for current APEX story (used by Sally)
  setup                    Setup Python design system for current project  
  status                   Show current system status
  
  stage1                   Generate Stage 1: Python visual draft
  stage2                   Generate Stage 2: HTML/CSS skeleton with live server
  stage3                   Generate Stage 3: Full production implementation
  all-stages              Generate all three stages automatically
  handoff                 Create developer handoff context file

Three-Stage Approach:
  Stage 1: Python Visual Draft    → Token-efficient mockup generation
  Stage 2: HTML/CSS Skeleton      → Interactive structure with live preview  
  Stage 3: Full Implementation    → Production-ready code with all features

Examples:
  node python-design-generator.js setup
  node python-design-generator.js auto-create
  node python-design-generator.js all-stages
  node python-design-generator.js status

Integration Flow:
  @architect → Sally (@ux-expert) → auto-create → ux-to-dev.md → @build-manager
                `);
        }
    } catch (error) {
        console.error('Error:', error.message);
        process.exit(1);
    }
}

if (require.main === module) {
    main();
}

module.exports = APEXPythonDesignSystem;