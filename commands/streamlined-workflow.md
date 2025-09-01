# Streamlined Autonomous Development Workflow
*5 Simple Commands - Zero to Production*

## 🎯 Complete Command Set

### **Core Workflow (4 Essential Commands)**
```bash
claude setup-project    # Complete PRD → Stories setup
claude status           # Check story readiness
claude validate         # Strategic validation & blocker detection  
claude build            # Autonomous implementation with checkpointing
```

### **Support Commands (3 Optional)**
```bash
claude map              # Visual story breakdown
claude fix              # Manual auto-fixes application
claude scan             # Security vulnerability scan
```

## 🚀 Complete Workflow Walkthrough

### **Step 1: Project Creation & Setup**
```bash
# Create project structure
claude new-project jewelry-store react
cd jewelry-store

# Complete setup: PRD interview → Analysis → MCPs → Stories
claude setup-project
```

**What `claude setup-project` does:**
1. **Enhanced PRD Interview** - Strategic questions to prevent blockers
2. **Project Analysis** - Identifies industry, scale, compliance needs  
3. **Auto-MCP Selection** - Configures real-time validation tools
4. **Story Creation** - Breaks PRD into implementable stories
5. **Story Summary** - Shows epic breakdown and dependencies

**Example Output:**
```
✅ PRD COMPLETE: E-commerce jewelry marketplace
✅ PROJECT ANALYSIS: Multi-vendor e-commerce platform  
✅ MCP SELECTION: payment-apis, tax-compliance, shipping-apis
✅ STORIES CREATED: 12 stories across 4 epics

📋 STORY SUMMARY:
Foundation Epic (3 stories):
- user-authentication: Secure login/registration system
- database-schema: PostgreSQL schema for products/orders  
- api-foundation: RESTful API base

Business Logic Epic (4 stories):  
- product-catalog: Product management with search
- inventory-tracking: Real-time stock management
- order-processing: Order workflow and status
- payment-integration: Stripe payment processing

User Experience Epic (3 stories):
- shopping-cart: Cart functionality with persistence
- checkout-flow: Complete purchase workflow  
- customer-dashboard: Account and order management

Admin Epic (2 stories):
- admin-dashboard: Seller management interface
- analytics-reporting: Sales and performance analytics

🎯 NEXT: claude status (check readiness) → claude validate (pre-flight) → claude build
```

### **Step 2: Check Story Readiness**
```bash
claude status
```

**Shows comprehensive status dashboard:**
```
📊 PROJECT STATUS DASHBOARD

✅ READY FOR IMPLEMENTATION (8/12 stories):
- user-authentication ✅ Validated, no issues
- database-schema ✅ Validated, no issues  
- api-foundation ✅ Validated, no issues
- product-catalog ✅ Validated, no issues
- inventory-tracking ✅ Validated, no issues
- order-processing ✅ Validated, no issues
- shopping-cart ✅ Validated, no issues
- customer-dashboard ✅ Validated, no issues

⚠️ NEEDS ATTENTION (2 stories):
- payment-integration: Minor - PCI compliance details needed
- checkout-flow: Waiting for payment-integration completion

❌ BLOCKED (2 stories):
- admin-dashboard: Critical - role-based auth specification needed
- analytics-reporting: Blocked by admin-dashboard

🎯 IMPLEMENTATION READINESS: 67% (8/12 stories ready)
⏰ ESTIMATED FIX TIME: 45 minutes
📋 NEXT ACTION: Fix payment-integration, then validate
```

### **Step 3: Strategic Validation & Pre-Flight**
```bash
claude validate
```

**Comprehensive validation with real-time MCP data:**
```
🔍 COMPREHENSIVE VALIDATION REPORT

🤖 AUTO-FIXED (23 issues):
✅ Added password complexity (8+ chars, mixed case)
✅ Added WCAG 2.1 AA accessibility to all UI stories
✅ Added rate limiting (100 req/min) to all API endpoints
✅ Added standard error handling patterns
✅ Added performance benchmarks (<2s page, <500ms API)
[... 18 more auto-fixes ...]

📋 DECISIONS NEEDED (5 items):
1. Social login integration? (Google/Facebook) - affects auth, checkout
2. Real-time inventory updates? (WebSocket) - affects inventory, catalog
3. Advanced search filters? (Elasticsearch) - affects catalog, performance  
4. Mobile app vs responsive web? - affects entire UX approach
5. Email vs SMS notifications? - affects order processing

❌ CRITICAL BLOCKERS (1 item):
1. BLOCKER: Stripe geographic restrictions
   - PRD specifies "global marketplace"
   - Stripe unavailable in 23 target countries
   - DECISION: Multi-payment provider OR limit geography?

🎯 VALIDATION RESULT:
- Auto-fixes applied: 23
- Decisions needed: 5 (10 minutes)
- Critical blockers: 1 (30 minutes discussion)

📋 NEXT ACTIONS:
1. Resolve Stripe geographic limitation
2. Make 5 batch decisions
3. Re-run claude validate until all clear
4. Proceed with claude build
```

**After resolving issues:**
```bash
claude validate
```
```
✅ ALL VALIDATION CHECKS PASSED
- No critical blockers remaining
- All batch decisions recorded  
- All stories ready for implementation
- MCP validation successful
- Ready for autonomous implementation

🚀 READY TO BUILD: claude build
```

### **Step 4: Autonomous Implementation**
```bash
claude build
```

**Starts autonomous build with checkpointing:**
```
🚀 STARTING AUTONOMOUS BUILD

📋 BUILD PLAN:
Epic 1: Foundation (3 stories) - ~45 minutes
Epic 2: Business Logic (4 stories) - ~90 minutes  
Epic 3: User Experience (3 stories) - ~60 minutes
Epic 4: Admin Features (2 stories) - ~45 minutes
Total Estimated Time: 4h 20m

🔄 CHECKPOINT STRATEGY:
- Checkpoint after each epic completion
- Auto-save every 30 minutes  
- Resume capability at any checkpoint
- Progress log: docs/build-logs/build-2024-01-17-14-30/

✅ Starting Epic 1: Foundation...
14:30 - [user-authentication] Implementation started
14:45 - [user-authentication] ✅ Completed (tests: 23, coverage: 95%)
14:46 - [database-schema] Implementation started
15:02 - [database-schema] ✅ Completed (migrations: 5, indexes: 12)  
15:03 - [api-foundation] Implementation started
15:18 - ✅ CHECKPOINT: Foundation Epic Complete

15:19 - Starting Epic 2: Business Logic...
15:21 - [product-catalog] Implementation started
15:35 - [product-catalog] Added Redis caching (performance optimization)
15:43 - [product-catalog] ✅ Completed
...

[System runs autonomously for hours]
```

**If you need to step away and resume:**
```bash
claude build --resume
```
```
🔄 RESUMING BUILD SESSION

📊 PREVIOUS SESSION:
- Started: 14:30, Interrupted: 16:45 (2h 15m elapsed)
- Completed: 5/12 stories (Foundation + Business Logic)
- Last Checkpoint: checkpoint-002-business.json
- Tests: 67 passing, 89% coverage

✅ Resuming from order-processing implementation...
```

**Final completion:**
```
✅ BUILD COMPLETE - Session: build-2024-01-17-14-30
Duration: 4h 12m (14:30 - 18:42)

📊 IMPLEMENTATION RESULTS:
✅ All 12 stories implemented
✅ 134 tests written (96% coverage)  
✅ Build successful (1.8s, 245KB gzipped)
✅ All quality gates passed

🔧 OPTIMIZATIONS APPLIED:
- Redis caching for product catalog
- WebSocket real-time inventory updates
- Multi-currency payment support
- Guest checkout option added

🎯 DEPLOYMENT STATUS: Ready for production
Next: claude scan (security) → deploy
```

## 📁 Complete Folder Structure

### **After `claude setup-project`:**
```
my-project/
├── docs/
│   ├── stories/
│   │   ├── README.md                    # Auto-generated story map
│   │   ├── user-authentication.md       # Individual stories
│   │   └── [all story files...]
│   ├── validation/                      # Validation reports
│   ├── build-logs/                      # Build session logs  
│   ├── prd.md                          # Your complete PRD
│   └── [other docs...]
├── .mcp.json                           # Auto-configured MCPs
└── [framework files...]
```

### **After `claude build`:**
```
my-project/
├── docs/
│   ├── build-logs/
│   │   └── build-2024-01-17-14-30/
│   │       ├── build-plan.json
│   │       ├── checkpoint-001-foundation.json
│   │       ├── checkpoint-002-business.json
│   │       ├── checkpoint-003-ux.json
│   │       ├── checkpoint-004-admin.json
│   │       ├── progress-log.md
│   │       └── final-summary.md
│   └── [other docs...]
├── src/                                # Complete application
├── tests/                             # Comprehensive test suite
└── [production-ready codebase...]
```

## 🎯 Key Benefits

### **Simplicity**
- **4 core commands** instead of 15+ confusing options
- **Clear progression** from setup → validate → build
- **No decision fatigue** - system handles complexity intelligently

### **Transparency** 
- **Complete progress logs** show exactly what was built
- **Detailed checkpoint system** for reliable resumption
- **Change tracking** shows all optimizations and modifications

### **Autonomy**
- **Hours of uninterrupted development** with smart checkpointing
- **Strategic decisions made upfront** during planning phase
- **Automatic best practices** applied throughout implementation

### **Quality**
- **Industry-specific MCPs** provide real-time validation
- **Three-tier validation system** catches all potential issues
- **Professional-grade output** with complete test coverage

## 🚀 Getting Started

### **For New Projects:**
```bash
claude new-project my-app react
cd my-app
claude setup-project
claude validate  
claude build
```

### **For Existing Projects:**
```bash
cd existing-project
claude setup-project    # Adds story-driven development
claude validate         # Strategic validation
claude build            # Autonomous implementation
```

Your enhanced foundation now provides **complete autonomous development** from idea to production-ready application in just 4 simple commands!