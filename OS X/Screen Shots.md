# Screen Shots

## Shadow

### Disabled

```sh
defaults write com.apple.screencapture disable-shadow -bool true; killall SystemUIServer
```

### Enable

```sh
defaults write com.apple.screencapture disable-shadow -bool false; killall SystemUIServer
```
