#!/usr/bin/env node
/**
 * APEX Real-Time Monitoring System
 * Token-efficient background monitoring with silent note logging
 */

const fs = require('fs');
const path = require('path');

class APEXMonitor {
    constructor() {
        this.sessionStart = Date.now();
        this.metrics = {
            commandsRun: 0,
            errorsDetected: 0,
            agentInvocations: 0,
            unusualPatterns: 0
        };
        this.logFile = `docs/meta-analysis/apex-notes-${new Date().toISOString().split('T')[0]}.md`;
        this.isMonitoring = false;
    }

    // Silent logging - just one line output
    logNote(category, message) {
        const timestamp = new Date().toISOString();
        const noteEntry = `## ${timestamp.split('T')[1].slice(0,8)} | ${category}\n${message}\n\n`;
        
        try {
            fs.appendFileSync(this.logFile, noteEntry);
            console.log(`Apex-Note-Logged: ${category}`);
        } catch (error) {
            // Silent failure to avoid disrupting workflow
        }
    }

    // Monitor command execution patterns
    monitorCommand(command, startTime, endTime, exitCode) {
        this.metrics.commandsRun++;
        const duration = endTime - startTime;
        
        // Auto-detect issues
        if (exitCode !== 0) {
            this.metrics.errorsDetected++;
            this.logNote('ERROR', `Command failed: ${command} (exit code: ${exitCode}, duration: ${duration}ms)`);
        }
        
        // Performance anomalies
        if (duration > 30000) { // > 30 seconds
            this.logNote('PERFORMANCE', `Slow command: ${command} took ${Math.round(duration/1000)}s`);
        }
        
        // Agent invocation tracking
        if (command.includes('@') || command.includes('claude ')) {
            this.metrics.agentInvocations++;
        }
    }

    // Monitor for error patterns in output
    scanOutput(output) {
        const errorPatterns = [
            /error|Error|ERROR/g,
            /failed|Failed|FAILED/g,
            /timeout|Timeout|TIMEOUT/g,
            /not found|Not found|NOT FOUND/g,
            /permission denied|Permission denied/g,
            /module not found|Module not found/g
        ];

        let errorCount = 0;
        errorPatterns.forEach(pattern => {
            const matches = output.match(pattern);
            if (matches) {
                errorCount += matches.length;
            }
        });

        if (errorCount > 3) {
            this.logNote('PATTERN', `High error frequency detected: ${errorCount} error indicators in output`);
        }

        // Token usage indicators
        if (output.includes('token') && output.includes('limit')) {
            this.logNote('TOKENS', 'Token limit or usage warning detected');
        }
    }

    // Monitor workflow efficiency
    trackWorkflowStep(step, agent, success) {
        if (!success) {
            this.logNote('WORKFLOW', `Step failed: ${step} by ${agent}`);
        }
        
        // Track agent performance patterns
        const agentMetricsFile = `docs/meta-analysis/agent-performance.json`;
        try {
            let agentData = {};
            if (fs.existsSync(agentMetricsFile)) {
                agentData = JSON.parse(fs.readFileSync(agentMetricsFile, 'utf8'));
            }
            
            if (!agentData[agent]) {
                agentData[agent] = { success: 0, failure: 0, lastUsed: null };
            }
            
            agentData[agent][success ? 'success' : 'failure']++;
            agentData[agent].lastUsed = new Date().toISOString();
            
            fs.writeFileSync(agentMetricsFile, JSON.stringify(agentData, null, 2));
        } catch (error) {
            // Silent failure
        }
    }

    // Check system health indicators
    checkSystemHealth() {
        const checks = [
            // Python dependencies for design system
            () => this.checkPythonDeps(),
            // Git repo status
            () => this.checkGitStatus(),
            // Agent file integrity
            () => this.checkAgentFiles(),
            // Disk space for logs
            () => this.checkDiskSpace()
        ];

        checks.forEach(check => {
            try {
                check();
            } catch (error) {
                // Silent monitoring
            }
        });
    }

    checkPythonDeps() {
        const { spawn } = require('child_process');
        const python = spawn('python', ['-c', 'import matplotlib, numpy, flask'], { stdio: 'pipe' });
        
        python.on('close', (code) => {
            if (code !== 0) {
                this.logNote('SYSTEM', 'Python design system dependencies missing or broken');
            }
        });
    }

    checkGitStatus() {
        const { execSync } = require('child_process');
        try {
            const status = execSync('git status --porcelain', { encoding: 'utf8' });
            const untracked = status.split('\n').filter(line => line.startsWith('??')).length;
            
            if (untracked > 10) {
                this.logNote('GIT', `Many untracked files detected: ${untracked} files`);
            }
        } catch (error) {
            // Git not available or not in repo
        }
    }

    checkAgentFiles() {
        const requiredAgents = ['apex-ux.md', 'apex-architect.md', 'apex-pm.md', 'build-manager.md'];
        const agentsDir = 'agents/';
        
        requiredAgents.forEach(agent => {
            if (!fs.existsSync(path.join(agentsDir, agent))) {
                this.logNote('SYSTEM', `Missing critical agent file: ${agent}`);
            }
        });
    }

    checkDiskSpace() {
        try {
            const stats = fs.statSync('docs/meta-analysis/');
            // Basic check - if logs directory exists but is empty, something might be wrong
            const files = fs.readdirSync('docs/meta-analysis/');
            if (files.length === 0) {
                this.logNote('SYSTEM', 'Meta-analysis directory empty - monitoring may not be working');
            }
        } catch (error) {
            this.logNote('SYSTEM', 'Cannot access meta-analysis directory');
        }
    }

    // Session summary (called at end of session)
    generateSessionSummary() {
        const duration = Date.now() - this.sessionStart;
        const summary = `
Session Summary (${Math.round(duration/60000)}m):
- Commands: ${this.metrics.commandsRun}
- Errors: ${this.metrics.errorsDetected}
- Agents: ${this.metrics.agentInvocations}
- Issues: ${this.metrics.unusualPatterns}
        `.trim();

        this.logNote('SESSION', summary);
        console.log('Apex-Session-Logged: Summary');
    }

    // Start background monitoring
    startMonitoring() {
        if (this.isMonitoring) return;
        
        this.isMonitoring = true;
        console.log('Apex-Monitor: Started');
        
        // Periodic health checks (every 5 minutes)
        setInterval(() => {
            this.checkSystemHealth();
        }, 5 * 60 * 1000);
        
        // Hook into process events
        process.on('exit', () => this.generateSessionSummary());
        process.on('SIGINT', () => {
            this.generateSessionSummary();
            process.exit(0);
        });
    }

    // Stop monitoring
    stopMonitoring() {
        this.isMonitoring = false;
        this.generateSessionSummary();
        console.log('Apex-Monitor: Stopped');
    }
}

// CLI interface
if (require.main === module) {
    const args = process.argv.slice(2);
    const command = args[0];
    const monitor = new APEXMonitor();

    switch (command) {
        case 'start':
            monitor.startMonitoring();
            break;
        case 'stop':
            monitor.stopMonitoring();
            break;
        case 'status':
            console.log(`Monitoring: ${monitor.isMonitoring ? 'Active' : 'Inactive'}`);
            break;
        default:
            console.log(`
APEX Real-Time Monitor

Usage: node apex-monitor.js <command>

Commands:
  start    Start background monitoring
  stop     Stop monitoring and generate session summary  
  status   Check monitoring status

Auto-monitors:
- Command failures and performance
- Error patterns in output
- Agent performance metrics
- System health indicators
- Workflow efficiency

Output: Silent operation with minimal "Apex-Note-Logged: category" messages
            `);
    }
}

module.exports = APEXMonitor;