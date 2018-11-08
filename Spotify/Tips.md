# Tips

## OS X

### Hide Dock Icon

```sh
vim /Applications/Spotify.app/Contents/Info.plist
```

Add before last `</dict>`:

```
<key>LSUIElement</key>
<true/>
```
