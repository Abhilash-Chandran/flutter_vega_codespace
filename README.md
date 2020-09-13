# flutter_vega_codespace

A demo project to check flutter in [Github Codespaces](https://github.com/features/codespaces).
It also has configurations for [Gitpod](https://www.gitpod.io/) and hence can be opened there as well.

## Use it codespace
1. Sign up for Github Codespace beta.
2. Click Code -> Open with Codespace and then click on **New codespace**
   * This should open this repo in a Github code space setup with latest flutter master channel and flutter-web enabled.
3. In the terminal run the flutter app targeting a web-server.
   * `flutter run -d web-server --web-hostname=0.0.0.0 --web-port=3000`
4. Once the server starts click on the http://localhost:3000 link and this should open new tab with the live preview.

## Use it in Gitpod
1. I assume you need a gitpod account to open it in Gitpod. Create one before next step.
2. Then click the following button.
[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/Abhilash-Chandran/flutter_vega_codespace)
