# CommuteTimely

A simple iOS app that helps you determine the perfect time to leave for your commute.

## Features

- **Launch Screen**: Clean launch screen with "CommuteTimely" branding
- **Home Screen**: Centered message "Get your perfect leave time."
- **Time Generation**: Tap "Get Time" button to generate a random leave time
- **Modern UI**: Clean, modern interface with proper padding and system colors
- **Dark Mode Support**: Fully compatible with iOS dark mode
- **iOS 16+**: Built for iOS 16 and later

## Setup Instructions

1. Open `CommuteTimely.xcodeproj` in Xcode
2. Select your development team in the project settings
3. Choose a simulator or device
4. Build and run the project (⌘+R)

## App Structure

- `CommuteTimelyApp.swift` - Main app entry point
- `ContentView.swift` - Main UI view with time generation logic
- `LaunchScreen.storyboard` - Launch screen with app branding
- `Assets.xcassets` - App icons and colors

## Bundle Identifier

- `com.umerpatel.commutetimely`

## Requirements

- iOS 16.0+
- Xcode 15.0+
- Swift 5.0+

## How It Works

The app generates random times between 6:00 AM and 10:59 AM when you tap the "Get Time" button. The time is displayed with a smooth animation and includes a helpful subtitle.

## Development

This app is built using SwiftUI and follows modern iOS development practices. The UI is responsive and works on both iPhone and iPad devices. 