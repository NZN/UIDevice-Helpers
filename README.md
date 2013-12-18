#UIDevice-Helpers

Easy access to device information.

[![Build Status](https://api.travis-ci.org/NZN/UIDevice-Helpers.png)](https://api.travis-ci.org/NZN/UIDevice-Helpers.png)
[![Cocoapods](https://cocoapod-badges.herokuapp.com/v/UIDevice-Helpers/badge.png)](http://beta.cocoapods.org/?q=name%3Auidevice%20name%3Ahelpers%2A)
[![Cocoapods](https://cocoapod-badges.herokuapp.com/p/UIDevice-Helpers/badge.png)](http://beta.cocoapods.org/?q=name%3Auidevice%20name%3Ahelpers%2A)

## Requirements

UIDevice-Helpers works on iOS 5.0+ version and is compatible with ARC projects. It depends on the following Apple frameworks, which should already be included with most Xcode templates:

* Foundation.framework

You will need LLVM 3.0 or later in order to build UIDevice-Helpers.

## Adding UIDevice-Helpers to your project

### Cocoapods

[CocoaPods](http://cocoapods.org) is the recommended way to add UIDevice-Helpers to your project.

* Add a pod entry for UIDevice-Helpers to your Podfile `pod 'UIDevice-Helpers', '~> 0.0.1'`
* Install the pod(s) by running `pod install`.

### Source files

Alternatively you can directly add source files to your project.

1. Download the [latest code version](https://github.com/NZN/UIDevice-Helpers/archive/master.zip) or add the repository as a git submodule to your git-tracked project.
2. Open your project in Xcode, then drag and drop all files at `UIDevice-Helpers` folder onto your project (use the "Product Navigator view"). Make sure to select Copy items when asked if you extracted the code archive outside of your project.

## Usage

* Check if device support iOS 7 new features

```objective-c
#import "UIDevice+Hardware.h"
...
BOOL isSupported = [[UIDevice currentDevice] isSupportedOS7Features];
```

* Check if device support iOS 7 new features (not include support simulator)

```objective-c
#import "UIDevice+ScreenSize.h"
...
UIDeviceScreenSize screenSize = [[UIDevice currentDevice] screenSize];

switch (screenSize) {
	case UIDeviceScreenSize35Inch:
		NSLog(@"iPhone 3.5-inch");
        break;
            
	case UIDeviceScreenSize4Inch:
		NSLog(@"iPhone 4-inch");
		break;
            
	case UIDeviceScreenSizePad:
		NSLog(@"iPad");
		break;
}
```

* Check iOS versions

```objective-c
#import "UIDevice+System.h"
...
if ([[UIDevice currentDevice] isSystemGreaterOS5]) {
	// code
}

if ([[UIDevice currentDevice] isSystemGreaterOS6]) {
	// code
}
```

## License

This code is distributed under the terms and conditions of the [MIT license](LICENSE).

## Change-log

A brief summary of each UIDevice-Helpers release can be found on the [wiki](https://github.com/NZN/UIDevice-Helpers/wiki/Change-log).