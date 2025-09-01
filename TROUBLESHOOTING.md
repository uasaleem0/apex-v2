# Troubleshooting Guide

## 🔧 Common Issues & Solutions

### **1. Command Not Found**
**Problem**: `claude setup-project` not recognized
**Solution**: 
```bash
claude system-check    # Verify foundation is installed
claude help            # See all available commands
```

### **2. MCP Configuration Issues**
**Problem**: Strategic validation fails due to MCP errors
**Solution**:
```bash
# Check your .env file has required API keys
cp .env.example .env
# Edit .env with your actual API keys
# Re-run validation
claude validate
```

### **3. Build Session Interruption**
**Problem**: Build stopped unexpectedly
**Solution**:
```bash
claude build --resume    # Resume from last checkpoint
# Or check what happened:
ls docs/build-logs/      # Find your session
cat docs/build-logs/build-*/progress-log.md
```

### **4. Stories Not Ready**
**Problem**: `claude status` shows stories not ready
**Solution**:
```bash
claude validate    # Fix validation issues first
claude fix         # Apply automatic fixes
claude validate    # Re-validate until all clear
```

### **5. Validation Stuck on Blockers**
**Problem**: Critical blockers preventing progress
**Solution**:
- Review blocker details carefully
- Update PRD if requirements need changes  
- Make necessary business/technical decisions
- Re-run `claude validate` after fixes

### **6. Build Quality Issues**
**Problem**: Built code doesn't meet standards
**Solution**:
```bash
claude scan       # Security check
claude fix        # Apply best practices
npm test          # Verify tests pass
npm run build     # Verify build works
```

## 🆘 Emergency Reset

### **Start Over (Project Level)**
```bash
# If project gets corrupted
rm -rf docs/stories docs/validation docs/build-logs
claude setup-project    # Recreate everything
```

### **Foundation Issues**
```bash
# If foundation seems broken
cd ~/Claude
git status              # Check for issues
git pull               # Get latest updates
claude system-check    # Verify components
```

## 📞 Getting Help

### **Check System Status**
```bash
claude system-check    # Foundation health
claude help            # Available commands
```

### **View Logs**
```bash
# Recent build session logs
ls docs/build-logs/
cat docs/build-logs/*/progress-log.md

# Validation history  
ls docs/validation/
```

### **Workflow Reference**
```bash
cat commands/streamlined-workflow.md    # Complete guide
cat QUICK-START.md                      # Quick reference
```

## 🎯 Best Practices

### **Before Starting Build**
- Always run `claude validate` until all clear
- Make sure you have required API keys in .env
- Commit your current work: `git commit -am "Pre-build checkpoint"`

### **During Long Builds**
- System creates automatic checkpoints
- You can safely close terminal and resume later
- Check progress: `tail -f docs/build-logs/*/progress-log.md`

### **After Build**
- Review build summary in `docs/build-logs/*/final-summary.md`
- Run `claude scan` for security check
- Test the application before deployment

Most issues are resolved by running commands in order: `setup-project` → `validate` → `build`