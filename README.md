# Bite Up Community

A Flutter app for foodie meetups and community events, built with Clean Architecture and flutter_bloc.

## Features

- **Authentication**: Google Sign-In integration
- **Events Management**: Create, view, and manage food events
- **RSVP System**: Users can RSVP to events
- **Comments**: Interactive commenting system for events
- **User Profiles**: User profile management
- **Real-time Updates**: Live updates using Firestore

## Architecture

This project follows Clean Architecture principles with Feature-first organization:

```
lib/
├── core/                          # Shared/common code
│   ├── di/                        # Dependency injection
│   ├── error/                     # Error handling
│   ├── network/                   # Network utilities
│   └── utils/                     # Utility functions
├── features/                      # All app features
│   ├── auth/                      # Authentication feature
│   ├── events/                    # Events management
│   ├── comments/                  # Comments system
│   └── profile/                   # User profiles
└── main.dart                      # Entry point
```

## Tech Stack

- **Flutter**: Cross-platform mobile development
- **flutter_bloc**: State management
- **Firebase**: Backend services (Auth, Firestore, Storage)
- **Clean Architecture**: Scalable and maintainable code structure
- **GetIt**: Dependency injection
- **Freezed**: Immutable data classes
- **Dartz**: Functional programming utilities

## Getting Started

### Prerequisites

- Flutter SDK (3.0.0 or higher)
- Dart SDK (3.0.0 or higher)
- Firebase project setup
- Android Studio / VS Code

### Installation

1. Clone the repository:
```bash
git clone <repository-url>
cd bite_up_community
```

2. Install dependencies:
```bash
flutter pub get
```

3. Generate code:
```bash
flutter packages pub run build_runner build
```

4. Configure Firebase:
   - Add your `google-services.json` to `android/app/`
   - Add your `GoogleService-Info.plist` to `ios/Runner/`

5. Run the app:
```bash
flutter run
```

## Project Structure

### Core
- **Dependency Injection**: Centralized service locator using GetIt
- **Error Handling**: Custom failure classes and error mapping
- **Network**: Connectivity checking and network utilities

### Features
Each feature follows the same structure:
- **data/**: Data sources, models, and repository implementations
- **domain/**: Entities, repository interfaces, and use cases
- **presentation/**: UI components, blocs, and pages

### State Management
- Uses flutter_bloc for predictable state management
- Immutable states with Freezed
- Event-driven architecture
- Proper error handling and loading states

## Development

### Code Generation
Run the following command to generate code:
```bash
flutter packages pub run build_runner build --delete-conflicting-outputs
```

### Testing
```bash
# Unit tests
flutter test

# Integration tests
flutter test integration_test/
```

### Linting
```bash
flutter analyze
```

## Contributing

1. Follow Clean Architecture principles
2. Use feature-first organization
3. Write tests for new features
4. Follow the existing code style
5. Use meaningful commit messages

## License

This project is licensed under the MIT License.
