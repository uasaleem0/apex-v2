# Quick Start Guide
*Get started in 5 minutes*

## 🚀 First Time Setup (Once)

### **1. Verify Foundation**
```bash
claude system-check
```
Should show: ✅ Foundation ready for project creation

### **2. Get Help Anytime**  
```bash
claude help
```
Shows all available commands

## 📋 Create Your First Project (4 Steps)

### **Step 1: Create Project**
```bash
claude new-project my-first-app react
cd my-first-app
```

### **Step 2: Complete Setup**
```bash
claude setup-project
```
*This runs the PRD interview, analyzes your project, selects MCPs, and creates all stories*

### **Step 3: Validate Everything**
```bash
claude validate
```
*Runs strategic validation with blocker detection - fix any issues found*

### **Step 4: Build Autonomously** 
```bash
claude build
```
*System implements everything automatically with checkpointing*

## 🔄 Check Status Anytime
```bash
claude status    # Story readiness dashboard
claude map       # Visual story breakdown
```

## 🛠️ If Build Gets Interrupted
```bash
claude build --resume    # Continue from last checkpoint
```

## 🎯 That's It!
Your app will be built autonomously from PRD to production-ready code.

**Need more details?** Read: `commands/streamlined-workflow.md`