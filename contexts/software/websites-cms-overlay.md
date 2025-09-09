# WEBSITES & CMS CONTEXT OVERLAY

## Software-Type Specific Specializations

### Technical Focus Areas
```yaml
core_website_requirements:
  seo_optimization:
    - Technical SEO implementation and optimization
    - Schema markup and structured data integration
    - Core Web Vitals optimization and monitoring
    - Mobile-first indexing and responsive design
    
  content_management:
    - Headless CMS architecture patterns
    - Content versioning and workflow management
    - Editorial workflows and content approval processes
    - Multi-language and localization support
    
  performance_optimization:
    - Static site generation and JAMstack architecture
    - Content delivery network (CDN) integration
    - Image optimization and lazy loading implementation
    - Critical resource loading and performance budgets
```

### CMS-Specific Patterns
```yaml
wordpress_specialization:
  architecture_considerations:
    - Theme development best practices and child themes
    - Plugin selection, security, and performance impact
    - Database optimization and caching strategies
    - Security hardening and maintenance workflows
    
  development_workflow:
    - Local development environment setup
    - Version control for themes and customizations
    - Staging and production deployment processes
    - Backup and recovery procedures
    
drupal_specialization:
  architecture_considerations:
    - Module development and configuration management
    - Content type and field architecture design
    - Multisite configuration and management
    - Performance optimization and caching layers
    
headless_cms_patterns:
  technical_implementation:
    - API-first content delivery and management
    - Frontend framework integration (React, Vue, Next.js)
    - Build-time content generation and deployment
    - Real-time content updates and preview capabilities
```

### Agent Context Adaptations

#### John (PM) - Website PRD Additions
```yaml
website_specific_requirements:
  seo_and_discoverability:
    - Search engine optimization strategy and implementation
    - Content marketing and blog functionality requirements
    - Social media integration and Open Graph metadata
    - Local SEO and business listing optimization
    
  content_strategy:
    - Content management workflow and editorial calendar
    - User-generated content and comment systems
    - Newsletter integration and email marketing
    - Content personalization and audience targeting
    
  conversion_optimization:
    - Landing page optimization and A/B testing
    - Contact form and lead generation functionality
    - Analytics and conversion tracking implementation
    - Call-to-action placement and optimization
```

#### Winston (Architect) - Website Architecture Patterns
```yaml
website_architecture:
  hosting_and_infrastructure:
    - Static site hosting vs dynamic server requirements
    - Content delivery network (CDN) selection and setup
    - Database optimization for content-heavy sites
    - Backup and disaster recovery planning
    
  cms_architecture_decisions:
    - Headless vs traditional CMS architecture evaluation
    - Content API design and frontend framework selection
    - Editorial workflow and content approval systems
    - Multi-environment setup (development, staging, production)
    
  performance_architecture:
    - Caching strategies (browser, CDN, server-side)
    - Image optimization and responsive image delivery
    - JavaScript and CSS optimization and minification
    - Progressive Web App (PWA) implementation considerations
```

#### Sally (UX Expert) - Website UX Patterns
```yaml
website_ux_focus:
  information_architecture:
    - Site navigation and menu structure optimization
    - Content hierarchy and information organization
    - Search functionality and content discoverability
    - Breadcrumb navigation and user orientation
    
  content_presentation:
    - Typography and readability optimization
    - Content formatting and scannable layout design
    - Image and media integration best practices
    - Mobile content consumption optimization
    
  conversion_focused_design:
    - Landing page design and conversion optimization
    - Contact form design and lead capture optimization
    - Call-to-action design and placement strategies
    - Trust signals and credibility indicators
```

## Performance Standards
```yaml
website_performance_benchmarks:
  core_web_vitals:
    - Largest Contentful Paint (LCP): < 2.5 seconds
    - First Input Delay (FID): < 100 milliseconds
    - Cumulative Layout Shift (CLS): < 0.1
    
  accessibility_compliance:
    - WCAG 2.1 AA compliance for all content
    - Keyboard navigation and screen reader compatibility
    - Color contrast and visual accessibility standards
    - Alternative text and media accessibility
    
  seo_requirements:
    - Mobile-friendly and responsive design
    - Fast loading times and optimized images
    - Semantic HTML structure and proper heading hierarchy
    - Meta tags and structured data implementation
```

## Technology Stack Recommendations
```yaml
recommended_stacks:
  wordpress_optimized:
    - WordPress with optimized hosting
    - Performance plugins and caching solutions
    - Security plugins and maintenance services
    - Theme optimization and child theme implementation
    
  jamstack_approach:
    - Static site generators (Gatsby, Next.js, Nuxt.js)
    - Headless CMS integration (Contentful, Strapi, Sanity)
    - Global CDN deployment (Netlify, Vercel, AWS CloudFront)
    - Git-based workflow and continuous deployment
    
  traditional_cms:
    - Drupal with performance optimization
    - Custom PHP development with modern frameworks
    - Database optimization and caching layers
    - Server-side performance monitoring and optimization
```