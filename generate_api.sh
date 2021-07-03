rm -rf ".pet_api" || echo ".pet_api folder not found"
openapi-generator-cli generate
cd .pet_api || exit
echo "name: pet_api
version: 1.0.0
description: OpenAPI API client

environment:
  sdk: '>=2.12.0 <3.0.0'

dependencies:
  dio: ^4.0.0
  built_value: ^8.1.0
  built_collection: ^5.1.0

dev_dependencies:
  built_value_generator: ^8.1.0
  build_runner: ^2.0.5
  test: ^1.17.9
" > pubspec.yaml
node ../openapi_updater.js
flutter pub get
flutter pub run build_runner build --delete-conflicting-outputs