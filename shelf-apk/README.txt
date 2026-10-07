BUILD THE APK (no Android Studio needed)
1. On github.com create a new repository (private is fine), e.g. shelf-tracker-apk.
2. Upload ALL files from this folder, including the hidden .github folder.
3. Open the repo > Actions > "Build APK" > Run workflow. Wait about 5 minutes.
4. Open the finished run, download the artifact "shelf-tracker-apk" (a zip), unzip it to get app-debug.apk.
5. Copy app-debug.apk to the PDA (USB, or send it to yourself), tap it, and allow "Install unknown apps" when asked.

TO UPDATE THE APP: replace www/index.html with the new version and commit. The workflow builds a new APK.
