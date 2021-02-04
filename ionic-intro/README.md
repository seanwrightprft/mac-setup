# Ionic

## Install

```
npm install -g @ionic/cli native-run cordova-res
```

## Create New App

```
mkdir -p ~/dev
cd ~/dev
ionic start firstapp tabs --type=angular --capacitor
```

## Run App

```
cd ~/dev/firstapp
ionic serve
```

# Ionic iOS Development

## Install CocoaPods

```
sudo gem install cocoapods
```

## Set the Package ID.

For Capacitor, open the capacitor.config.json file and modify the appId property.

`com.perficient.firstapp`

## Generate Native Project

```
cd ~/dev/firstapp
ionic build
ionic capacitor add ios
```

## Open the project in Xcode.

```
cd ~/dev/firstapp
ionic capacitor open ios
```

In Project navigator, select the project root to open the project editor. Under the Identity section, verify that the Package ID that was set matches the Bundle Identifier.

Optional: In the same project editor, under the Signing section, ensure Automatically manage signing is enabled. Then, select a Development Team. Given a Development Team, Xcode will attempt to automatically prepare provisioning and signing.

## After changes to the ionic src files
```
cd ~/dev/firstapp
ionic capacitor copy ios
```

## Live-reload with Capacitor

Run the following, then select a target simulator or device and click the play button in Xcode:

```
cd ~/dev/firstapp
ionic capacitor run ios -l --external
```

## Debugging

Safari Web Inspector

Safari has Web Inspector support for iOS simulators and devices. Open the Develop menu and select the simulator or device, then select the Ionic App to open Web Inspector.

If the Develop menu is hidden, enable it in Safari » Preferences » Advanced » Show Develop menu in menu bar.

If the app isn't listed, the Web Inspector may need to be enabled on the device in Settings » Safari » Advanced » Web Inspector.

# Capacitor Plugin

## Generate Plugin
```
cd ~/dev
npx @capacitor/cli plugin:generate
npx: installed 56 in 3.988s
✏️  Creating new Capacitor plugin
? Plugin npm name (kebab-case. ex: capacitor-plugin-example): first-plugin
? Plugin id (domain-style syntax. ex: com.mycompany.plugins.example) com.perficient.plugins.firstplugin
? Plugin class name (ex: Example) FirstPlugin
? description: First Plugin
? git repository: http://github.com/seanwrightprft/mac-setup
? author: perficient
? license: MIT
? package.json will be created, do you want to continue? Yes
```

## Add plugin dependency to the app

```
cd ~/dev/first-plugin
npm run build
```

```
cd ~/dev/firstapp
npm link ../first-plugin
```

----------------------------------------

```
cd ~/dev/first-plugin
npm run build
npm link
```

```
cd ~/dev/firstapp
npm link first-plugin
npm install first-plugin
```

```
ionic capacitor copy ios
ionic capacitor open ios
```
