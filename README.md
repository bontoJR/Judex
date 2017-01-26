# Intro
Jude is a battery included App Review Manager for iOS and macOS in Swift.

The library is heavily based on and inspired by [iRate](https://github.com/nicklockwood/iRate) and [appirater](https://github.com/arashpayan/appirater), 2 well known Objective-C libraries for App Store rating working for iOS and macOS. Judex aims to be a good alternative 100% written Swift.

# Getting Started

### Installation
Install Judex is pretty straight forward with Cocoapods:

```
pod 'Judex'
```

To manual install, copy the `Judex.swift` file and `Judex.bundle` in your project and you are good to go!

### Configuration

To configure Judex just use:

```swift
Judex.shared.daysUntilPrompt = 10
Judex.shared.usesUntilPrompt = 15
Judex.shared.remindPeriod = 3 // days
```

If you want to manually check or present the alert, use:

```swift
// returns a boolean indicating if conditions are matching
Judex.shared.promptIfRequired()

// force prompting
Judex.shared.promptForRating() 
```

If you want to use a custom alert library in iOS, you can use the following callback:

```swift
public var customPrompt: ((_ viewController: UIViewController) -> Void)? = nil
```

You can then use the three functions to process the user's action:

```swift
// User rated
self.rate()

// User asked for reminding later (next release)
self.remindLater()

// User declined 
self.decline()
```

### Manual

Judex self configures itself based on the bundle id, in case you need more control, you can force the bundleID name and App Store ID:

```swift
Judex.shared.applicationBundleID = "developer.apple.wwdc-Release" //WWDC app
```

In case you use the same bundle ID for a macOS and iOS app, you can configure the App Store ID directly, to avoid conflicts:

```swift
Judex.shared.appStoreId = 284910350 // Yelp for iPhone
```

### Development

Judex uses the `[Judex]` log prefix, if you want to activate the debug logs, add this to your code:

```swift
Judex.shared.verbose = true
```

### License

MIT of course.

# Release Notes

Version 0.1.0: 
    
    * Initial release