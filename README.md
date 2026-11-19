# QuickTools iOS — iPad + GitHub Actions

This is **source**, not a precompiled IPA. Contains QuickTools HTML and its original black/white logo.

1. Create a **public** GitHub repository (e.g. QuickTools-iOS).
2. Upload all the files and folders in this ZIP **to the root** of the repository, including `.github/workflows/build-ipa.yml`. The GitHub website may hide dot folders in some upload flows; check that the workflow is present.
3. Open **Actions** > **Build unsigned QuickTools IPA** > **Run workflow**. Push to `main` also starts a build.
4. After the green successful run, download the **QuickTools-unsigned-IPA** artifact. GitHub gives a ZIP containing `QuickTools-unsigned.ipa`.
5. Extract that ZIP in iPad Files, import the `.ipa` into Ksign, sign with your existing certificate and install.

Notes: This workflow has not yet run; build success and Ksign compatibility are not guaranteed. A public repository exposes the source code and logo, never upload signing certificates. macOS GitHub-hosted runners for public repositories are generally free under current GitHub terms. The app works primarily offline; QR generation uses a remote service. Clipboard permissions may differ on iOS.
