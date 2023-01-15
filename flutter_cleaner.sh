rm -Rf ios/Pods && \
rm -Rf ios/.symlinks && \
rm -Rf ios/Flutter/Flutter.framework && \
rm -Rf ios/Flutter/Flutter.podspec && \
rm -rf ~/.pub-cache && \
flutter pub get && \
cd ios && flutter precache --ios && pod install --repo-update && cd ..
