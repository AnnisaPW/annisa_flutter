# NostraCode App Project

Flutter project with 3 flavors (Development, Staging, Production)

## 1. create flavors => dev, stg, prod<br/>

-> flutter pub run flutter_flavorizr<br/>

## 2. create launch.json file for multiple flavors<br/>

## 3. splash logo<br/>

-> dart run flutter_native_splash:create --flavors dev,stg,prod<br/>

then...setup iOS via XCode => https://pub.dev/packages/flutter_native_splash#ios-setup<br/>

## 4. add multiple firebase project to flutter project<br/>

-> firebase init<br/>
choose "Don't set up a default project"<br/>

-> firebase use --add<br/>
add project and create alias for each project => dev, stg, prod<br/>

example: "dev"<br/>
-> firebase use dev<br/>
-> flutter build web -t lib/main_dev.dart<br/>
-> firebase serve<br/>
-> firebase deploy --only hosting<br/>

## 3. Flutterfire<br/>

-> flutterfire configure -p nostracodedev -o lib/firebase_options_dev.dart -a com.nostracode.android.dev -i com.nostracode.ios.dev --no-apply-gradle-plugins --no-app-id-json<br/>
-> flutterfire configure -p nostracodestg -o lib/firebase_options_stg.dart -a com.nostracode.android.stg -i com.nostracode.ios.stg --no-apply-gradle-plugins --no-app-id-json<br/>
-> flutterfire configure -p nostracode -o lib/firebase_options_prod.dart -a com.nostracode.android -i com.nostracode.ios --no-apply-gradle-plugins --no-app-id-json<br/>
