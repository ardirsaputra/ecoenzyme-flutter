Eco Enzyme Calculator

aplikasi ini merupakan aplikasi yang mengenalkan eco enzyme serta terdapat kalkulator untuk membuat eco enzyme 

langkah - langkah :

    > add this code in pubspec.yaml

flutter_icons:
  android: "launcher_icon"
  ios: true
  image_path: "assets/logo_eco.jpg"
  min_sdk_android: 21
  web:
    generate: true
    image_path: "assets/logo_eco.jpg"
    background_color: "#F3C8B7"
    theme_color: "#F3C8B7"

==========================================
 be careful space before code 
==========================================

    > flutter pub get
    > flutter pub run flutter_launcher_icons:main
    > flutter build apk --target-platform android-arm,android-arm64,android-x64

