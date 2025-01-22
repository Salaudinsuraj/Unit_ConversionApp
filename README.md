# unit_conversion

Layered Architecture

lib/
├── common/            # Shared resources like themes, styles, utilities
├── src/
│   ├── models/        # Data models
│   ├── services/      # APIs, database, and network services
│   ├── repositories/  # Abstraction for data handling
│   ├── views/         # UI components and screens
│   ├── viewmodels/    # Business logic (e.g., MVVM, Provider, BLoC)
│   ├── widgets/       # Reusable UI widgets
│   ├── routes/        # App navigation (e.g., AutoRoute)
└── main.dart          # App entry point

