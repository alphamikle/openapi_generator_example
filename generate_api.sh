openapi-generator-cli generate
cd .pet_api || exit
flutter pub get
flutter pub run build_runner build --delete-conflicting-outputs