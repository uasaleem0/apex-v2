# WEB APPS CONTEXT OVERLAY

## Software-Type Specific Specializations

### Interactive Application Focus
```yaml
web_app_characteristics:
  single_page_applications:
    - Client-side routing and navigation management
    - State management and data flow architecture
    - Component-based architecture and reusability
    - Progressive enhancement and graceful degradation
    
  real_time_features:
    - WebSocket implementation and real-time communication
    - Server-sent events and live data updates
    - Collaborative features and conflict resolution
    - Offline functionality and synchronization
    
  advanced_interactions:
    - Rich user interfaces and complex interactions
    - Drag and drop functionality implementation
    - Advanced form handling and validation
    - Data visualization and interactive dashboards
```

### Agent Context Adaptations

#### John (PM) - Web App PRD Additions
```yaml
web_app_specific_requirements:
  user_interaction_complexity:
    - Complex user workflows and multi-step processes
    - Real-time collaboration and multi-user features
    - Advanced data manipulation and visualization
    - Keyboard shortcuts and power-user functionality
    
  data_management:
    - Client-side data caching and synchronization
    - Offline functionality and conflict resolution
    - Large dataset handling and virtualization
    - Real-time updates and live data streaming
    
  progressive_web_app_features:
    - Service worker implementation and caching strategies
    - Push notification integration and engagement
    - App-like experience and home screen installation
    - Background synchronization and offline capabilities
    
  performance_requirements:
    - Interactive performance and response time optimization
    - Large application bundle management and code splitting
    - Memory management for long-running sessions
    - Client-side performance monitoring and optimization
```

#### Winston (Architect) - Web App Architecture
```yaml
web_app_architecture:
  frontend_architecture:
    - Component architecture and design patterns
    - State management solutions (Redux, Zustand, Context)
    - Client-side routing and lazy loading strategies
    - Bundle optimization and code splitting implementation
    
  data_layer_architecture:
    - API integration patterns and data fetching strategies
    - Client-side caching and state synchronization
    - Real-time data updates and WebSocket integration
    - Offline-first architecture and service workers
    
  scalability_patterns:
    - Micro-frontend architecture for large applications
    - Module federation and dynamic imports
    - Performance monitoring and optimization strategies
    - Error boundary implementation and error handling
    
  deployment_and_hosting:
    - Static site generation and JAMstack deployment
    - Content delivery network (CDN) optimization
    - Continuous integration and deployment pipelines
    - Environment management and configuration
```

#### Sally (UX Expert) - Web App UX Patterns
```yaml
web_app_ux_focus:
  complex_interface_design:
    - Dashboard and data-heavy interface design
    - Navigation patterns for complex applications
    - Information hierarchy and progressive disclosure
    - Keyboard navigation and accessibility for power users
    
  interactive_experience_optimization:
    - Loading states and progressive enhancement
    - Real-time feedback and live updates
    - Drag and drop interactions and visual feedback
    - Form design for complex data entry and validation
    
  performance_focused_ux:
    - Perceived performance and loading optimization
    - Skeleton screens and progressive loading
    - Error states and graceful degradation
    - Offline experience design and synchronization feedback
    
  user_engagement_patterns:
    - Onboarding for complex applications and feature discovery
    - Help systems and contextual guidance
    - User customization and personalization features
    - Productivity features and workflow optimization
```

## Web App Performance Standards
```yaml
web_app_performance_benchmarks:
  interactive_performance:
    - Time to Interactive (TTI): < 3 seconds
    - First Input Delay (FID): < 100 milliseconds
    - Runtime performance: 60fps for animations and interactions
    - Memory usage optimization for long-running sessions
    
  bundle_and_loading_optimization:
    - Initial bundle size: < 200KB gzipped
    - Code splitting and lazy loading implementation
    - Progressive loading and resource prioritization
    - Service worker caching and offline functionality
    
  real_time_performance:
    - WebSocket connection reliability and reconnection
    - Real-time update latency: < 500 milliseconds
    - Conflict resolution and data synchronization accuracy
    - Offline queue management and synchronization
```

## Technology Stack Recommendations
```yaml
web_app_technology_stacks:
  react_ecosystem:
    - React with TypeScript for type safety
    - Next.js for server-side rendering and optimization
    - React Query or SWR for data fetching and caching
    - React Router for client-side navigation
    
  vue_ecosystem:
    - Vue 3 with Composition API and TypeScript
    - Nuxt.js for full-stack development and SSR
    - Pinia for state management and data flow
    - Vue Router for single-page application routing
    
  angular_ecosystem:
    - Angular with TypeScript and reactive forms
    - Angular Universal for server-side rendering
    - NgRx for complex state management
    - Angular Material or custom design system
    
  modern_alternatives:
    - Svelte/SvelteKit for performance-focused applications
    - Solid.js for reactive performance optimization
    - Qwik for resumable and fast-loading applications
    - Astro for content-focused applications with islands architecture
```

## Advanced Web App Features
```yaml
progressive_web_app_features:
  service_worker_implementation:
    - Caching strategies and offline functionality
    - Background synchronization and data updates
    - Push notification integration and engagement
    - App-like experience and installation prompts
    
  advanced_browser_apis:
    - File system access and local file handling
    - Clipboard API and copy/paste functionality
    - Web Share API and social sharing integration
    - Payment Request API and streamlined checkout
    
  performance_optimization:
    - Virtual scrolling for large datasets
    - Web Workers for CPU-intensive operations
    - IndexedDB for client-side data storage
    - WebAssembly integration for performance-critical features
```