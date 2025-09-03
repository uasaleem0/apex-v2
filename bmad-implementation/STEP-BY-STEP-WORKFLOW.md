# Enhanced BMAD: Step-by-Step User Workflow

## Phase 1: Project Setup

### Step 1: Initialize Project
**What You Do:**
```bash
mkdir my-project
cd my-project
bmad init-validation
```
**Purpose:** Create project directory and initialize checkpointing system  
**Outcome:** Directory structure created with validation/ folder and project-status.json

## Phase 2: Planning & Requirements

### Step 2: Start Business Analysis
**What You Do:**
```bash
@analyst
```
**Purpose:** Load Analyst agent (Mary) for project discovery  
**Outcome:** Agent loaded, shows available commands (*help, *brainstorm, *create-project-brief, etc.)

### Step 3: Create Project Brief
**What You Do:**
```bash
*create-project-brief
```
**Purpose:** Define initial project concept and requirements  
**Outcome:** Analyst asks questions, generates project-brief.md  
**Your Action:** Answer analyst questions, save final project-brief.md to docs/

### Step 4: Create Product Requirements Document
**What You Do:**
```bash
@pm
*create-prd
```
**Purpose:** Transform project brief into detailed PRD  
**Outcome:** PM (John) asks detailed questions, generates prd.md  
**Your Action:** Answer PM questions about features, users, requirements, save prd.md to docs/

### Step 5: Create Frontend Specification
**What You Do:**
```bash
@ux-expert
*create-front-end-spec
```
**Purpose:** Define UI/UX requirements and specifications  
**Outcome:** UX Expert generates front-end-spec.md  
**Your Action:** Save front-end-spec.md to docs/

### Step 6: Create Technical Architecture
**What You Do:**
```bash
@architect
*create-fullstack-architecture
```
**Purpose:** Define system architecture, database, APIs  
**Outcome:** Architect (Winston) generates fullstack-architecture.md  
**Your Action:** Save fullstack-architecture.md to docs/

### Step 7: Validate Planning Documents
**What You Do:**
```bash
@po
*validate-requirements
```
**Purpose:** Product Owner validates all planning artifacts  
**Outcome:** PO checks consistency, may flag issues  
**Your Action:** If issues found, return to relevant agent to fix, then re-save documents

## Phase 3: Story Generation

### Step 8: Generate Development Stories
**What You Do:**
```bash
@sm
*create-stories-from-prd
```
**Purpose:** Create individual development stories from PRD + Architecture  
**Outcome:** Scrum Master generates story files (story-001.md, story-002.md, etc.)  
**Your Action:** Save all story files to docs/stories/

### Step 9: Initialize Story Checkpoints
**What You Do:**
```bash
bmad checkpoint story-001
bmad checkpoint story-002
bmad checkpoint story-003
# (repeat for each story)
```
**Purpose:** Create initial checkpoints for each story  
**Outcome:** validation/stories/story-XXX/ directories created with status.json files

### Step 10: Check Project Status
**What You Do:**
```bash
bmad project-status
```
**Purpose:** Verify all stories initialized correctly  
**Outcome:** Shows total stories, completion status, current story

## Phase 4: Development (Per Story Loop)

### Story Development Loop (Repeat for Each Story)

#### Step 11: Start Story Work
**What You Do:**
```bash
bmad status story-001
bmad resume story-001
```
**Purpose:** Check story status and resume from checkpoint  
**Outcome:** Shows current story state, loads context for continuation

#### Step 12: Implement Story Features
**What You Do:**
```bash
@dev
*implement-story
```
**Purpose:** Develop the actual story features  
**Outcome:** Dev agent guides implementation, code gets written  
**Your Action:** Follow dev agent guidance, write code, make changes

#### Step 13: Checkpoint Progress (During Development)
**What You Do:**
```bash
bmad checkpoint story-001
```
**Purpose:** Save development progress to prevent data loss  
**Outcome:** Updates status.json and recovery.json with current state  
**When:** Use periodically during development, before risky changes

#### Step 14: Quality Assurance
**What You Do:**
```bash
@qa
*create-test-cases
*integration-test-plan
```
**Purpose:** Test the implemented story  
**Outcome:** QA creates tests, validates story works correctly  
**Your Action:** Run tests, fix any issues found

#### Step 15: Story Validation
**What You Do:**
```bash
bmad validate story-001
```
**Purpose:** Check if story meets all requirements  
**Outcome:** Updates validation.json with pass/fail/pending status  
**If Fails:** Shows specific issues to fix, return to Step 12

#### Step 16: Story Completion Checkpoint
**What You Do:**
```bash
bmad checkpoint story-001
```
**Purpose:** Final checkpoint when story is complete  
**Outcome:** Story marked as complete in status system

#### Step 17: Move to Next Story
**What You Do:**
```bash
bmad project-status
```
**Purpose:** Check overall progress and identify next story  
**Outcome:** Shows which stories remain  
**Your Action:** Repeat Steps 11-16 for next story

## Phase 5: Project Completion

### Step 18: Final Project Validation
**What You Do:**
```bash
@qa
*quality-gates
bmad project-status
```
**Purpose:** Ensure all stories complete and project ready  
**Outcome:** Final quality check, all stories marked complete

### Step 19: Project Handoff
**What You Do:**
```bash
@bmad-orchestrator
*workflow-status
```
**Purpose:** Generate final project status and handoff documentation  
**Outcome:** Complete project ready for deployment/handoff

## Recovery Procedures (Use When Needed)

### If Connection Lost During Work
**What You Do:**
```bash
bmad project-status              # Check overall state
bmad status story-001            # Check current story  
bmad resume story-001            # Resume from last checkpoint
```
**Purpose:** Recover from interruptions  
**Outcome:** Back to where you left off with minimal data loss

### If Validation Fails
**What You Do:**
```bash
bmad validate story-001          # See what failed
# Fix the issues
bmad validate story-001          # Re-validate
bmad checkpoint story-001        # Checkpoint when passes
```
**Purpose:** Address validation failures  
**Outcome:** Story passes validation and can proceed

### If You Need to See Recovery Options
**What You Do:**
```bash
bmad recovery-options story-001
```
**Purpose:** See available recovery points  
**Outcome:** Shows checkpoints you can resume from

## Expected File Structure After Completion
```
my-project/
├── docs/
│   ├── project-brief.md         # From Step 3
│   ├── prd.md                   # From Step 4
│   ├── front-end-spec.md        # From Step 5
│   ├── fullstack-architecture.md # From Step 6
│   └── stories/
│       ├── story-001.md         # From Step 8
│       ├── story-002.md
│       └── story-003.md
├── validation/
│   ├── project-status.json      # From Step 1
│   └── stories/
│       ├── story-001/           # From Step 9
│       │   ├── status.json
│       │   ├── recovery.json
│       │   └── validation.json
│       ├── story-002/
│       └── story-003/
└── src/                         # From Step 12 (your code)
    └── (implementation files)
```

## Key Success Indicators
- **After Phase 2:** All planning documents in docs/ folder
- **After Phase 3:** All stories defined and checkpointed  
- **During Phase 4:** Each story shows "complete" status after Step 16
- **After Phase 5:** bmad project-status shows 100% completion

## Total Time Investment
- **Phase 1:** 5 minutes (setup)
- **Phase 2:** 30-60 minutes (planning, depends on project complexity)  
- **Phase 3:** 15-30 minutes (story generation)
- **Phase 4:** Varies by project (main development work)
- **Phase 5:** 10-15 minutes (final validation)