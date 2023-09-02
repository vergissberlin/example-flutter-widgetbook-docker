# widgetbook

Demo flutter project to demonstrate the usage of the widgetbook package together with Docker.

## Getting Started

### Build the docker image

```bash
docker build -t widgetbook .
```

### Run the docker image

```bash
docker run -p 8080:80 widgetbook
open http://localhost:8080
```

## Development

To develop you own use cases and components, you can use the following commands:

**Start the flutter web server:**
```bash
flutter pub get
flutter run -d chrome -t lib/widgetbook.dart
```

**Start the widgetbook listener:**
```bash
flutter pub run build_runner watch
```

