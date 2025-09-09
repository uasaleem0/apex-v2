# MOBILE APPS CONTEXT OVERLAY

## Software-Type Specific Specializations

### Platform Requirements
```yaml
mobile_platform_focus:
  ios_requirements:
    - iOS Human Interface Guidelines compliance
    - App Store Review Guidelines adherence
    - Apple privacy and security requirements
    - iOS-specific performance optimization
    
  android_requirements:
    - Material Design 3 principles implementation
    - Google Play Store policies and requirements
    - Android accessibility and internationalization
    - Android-specific performance and battery optimization
    
  cross_platform_considerations:
    - Platform parity and feature consistency
    - Native performance optimization
    - Platform-specific UI adaptation
    - Code sharing and maintenance strategies
```

### Agent Context Adaptations

#### John (PM) - Mobile App PRD Additions
```yaml
mobile_specific_requirements:
  app_store_optimization:
    - App Store and Google Play listing optimization
    - App icon, screenshots, and metadata requirements
    - App category selection and keyword optimization
    - Review and rating management strategies
    
  mobile_user_experience:
    - Push notification strategy and implementation
    - Offline functionality and data synchronization
    - Device capability integration (camera, GPS, contacts)
    - Mobile-specific user flows and interaction patterns
    
  performance_requirements:
    - App launch time and responsiveness benchmarks
    - Memory usage and battery life optimization
    - Network efficiency and data usage minimization
    - Device compatibility and testing requirements
    
  monetization_strategy:
    - In-app purchase and subscription implementation
    - Mobile advertising integration and policies
    - Freemium model and conversion optimization
    - App analytics and user behavior tracking
```

#### Winston (Architect) - Mobile App Architecture
```yaml
mobile_architecture:
  cross_platform_development:
    - React Native vs Flutter vs native development decision
    - Code sharing strategies and platform-specific implementations
    - State management patterns for mobile applications
    - Navigation patterns and deep linking implementation
    
  data_and_networking:
    - Offline-first architecture and data synchronization
    - API design for mobile consumption and efficiency
    - Caching strategies and local data storage
    - Background processing and task scheduling
    
  performance_optimization:
    - Bundle size optimization and code splitting
    - Image optimization and lazy loading for mobile
    - Memory management and garbage collection optimization
    - Battery usage optimization and background processing
    
  security_and_privacy:
    - Mobile app security best practices
    - Data encryption and secure storage implementation
    - Biometric authentication integration
    - Privacy policy implementation and data handling
```

#### Sally (UX Expert) - Mobile UX Patterns
```yaml
mobile_ux_focus:
  mobile_interaction_design:
    - Touch-first interface design and gesture patterns
    - Thumb-zone optimization and reachability considerations
    - Haptic feedback and micro-interaction design
    - Mobile-specific navigation patterns and tab structures
    
  responsive_and_adaptive_design:
    - Multi-device screen size and orientation adaptation
    - Dynamic type and accessibility features
    - Dark mode and theme support implementation
    - Landscape and portrait mode optimization
    
  mobile_conversion_optimization:
    - Mobile onboarding and user activation flows
    - In-app purchase and subscription flow optimization
    - Push notification engagement and retention strategies
    - App permission requests and user consent optimization
    
  platform_specific_patterns:
    - iOS-specific design patterns and components
    - Android Material Design implementation
    - Platform-appropriate interaction and navigation patterns
    - Native look and feel while maintaining brand consistency
```

## Mobile Performance Standards
```yaml
mobile_performance_benchmarks:
  launch_performance:
    - Cold app launch time: < 3 seconds
    - Warm app launch time: < 1 second
    - Screen transition animations: 60fps consistency
    - Memory usage optimization and leak prevention
    
  battery_and_resource_optimization:
    - Background processing minimization
    - Network request batching and efficiency
    - Image and asset optimization for mobile
    - CPU and GPU usage optimization
    
  user_experience_metrics:
    - First meaningful paint: < 2 seconds
    - Time to interactive: < 3 seconds
    - Crash rate: < 1% of sessions
    - App rating maintenance: > 4.0 stars average
```

## Technology Stack Recommendations
```yaml
mobile_development_stacks:
  react_native:
    - React Native with TypeScript
    - React Navigation for routing
    - Redux or Context API for state management
    - Native module integration for platform features
    
  flutter:
    - Flutter with Dart programming language
    - Provider or Bloc pattern for state management
    - Platform channels for native functionality
    - Flutter Web and Desktop considerations
    
  native_development:
    - Swift and SwiftUI for iOS development
    - Kotlin and Jetpack Compose for Android
    - Platform-specific optimization and performance
    - Native tooling and development workflows
    
  hybrid_approaches:
    - Ionic with Angular or React
    - Cordova/PhoneGap for web-to-mobile conversion
    - Progressive Web App (PWA) mobile optimization
    - WebView optimization and native bridge integration
```

## App Store Compliance
```yaml
store_requirements:
  apple_app_store:
    - iOS Human Interface Guidelines compliance
    - App privacy nutrition labels and tracking disclosure
    - In-app purchase guidelines and subscription policies
    - App review process and approval requirements
    
  google_play_store:
    - Android Design Guidelines and Material Design
    - Google Play Developer Policy compliance
    - App bundle optimization and Play Console integration
    - Target API level and security requirements
    
  cross_platform_considerations:
    - Platform-specific feature implementation
    - Store listing optimization and localization
    - Release management and update strategies
    - User review management and response protocols
```