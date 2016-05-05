[![License](http://img.shields.io/:license-mit-blue.svg)](http://probablyjosh.mit-license.org)

# Swift Volume Controller iOS 8-9
This is a simple volume controller that is not using any private headers. Technically this would be able to pass Apple's review process.

##How to use:
###Setup:
Simply copy the VolumeControlClass.swift into your project and then somewhere in your project call `VolumeControl.sharedInstance` in your first view to avoid Volume Control not initializing in time.
###Getting current volume level
`VolumeControl.sharedInstance.getCurrentVolume()` - Returns a float between 0-1 that contains the volume level
###Setting the volume level
`VolumeControl.sharedInstance.setVolume(volume : Float)` - Sets the volume to a value between 0-1
###Turn up the volume one notch
`VolumeControl.sharedInstance.turnUp()` - Turns up the volume by 0.0625 which is Apples standard
###Turn down the volume one notch
`VolumeControl.sharedInstance.turnDown()` - Turns down the volume by 0.0625 which is Apples standard

##TODO:
- [ ] Solve issue of sharedInstance not initiating in time to get current volume
- [ ] Transform it into a pod file to allow easier installation
- [ ] Add comments to current code
- [ ] Create unit tests for class

##Author
[Wizages](https://www.twitter.com/wizages/)

##License
[MIT](LICENSE)
