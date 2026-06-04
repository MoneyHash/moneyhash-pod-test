# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is the MoneyHashPayment iOS CocoaPod - a Swift payment SDK wrapper that integrates with the MoneyHash payment platform. The project structure follows a standard CocoaPods library layout with pre-compiled XCFrameworks.

## Development Commands

### Setup and Installation
```bash
# Navigate to Example directory and install dependencies
cd Example
pod install

# Open the workspace (not the .xcodeproj)
open MoneyHashPayment.xcworkspace
```

### Building and Testing
```bash
# Build the example project in Xcode
# Use Cmd+B or Product > Build in Xcode IDE

# Run tests
# Use Cmd+U or Product > Test in Xcode IDE

# Validate the podspec
pod lib lint MoneyHashPayment.podspec

# Check for syntax issues
pod spec lint MoneyHashPayment.podspec
```

### Version Management
```bash
# Update version in MoneyHashPayment.podspec (line 11)
# Current version: 4.0.9

# Create git tag for new version
git tag -a [version] -m "Version [version]"
git push origin [version]
```

## Architecture

### Core Components

1. **MoneyHashPayment.swift** (`MoneyHashPayment/Classes/`)
   - Main pod entry point (currently minimal wrapper)
   - Actual functionality provided by XCFrameworks

2. **XCFrameworks**
   - `MoneyHash.xcframework`: Main SDK framework with payment logic
   - `MoneyHashShared.xcframework`: Shared utilities and dependencies
   - Both support iOS device (arm64) and simulator (arm64, x86_64) architectures

3. **Example App** (`Example/MoneyHashPayment/`)
   - Demonstrates SDK integration
   - Shows `MoneyHashSDKBuilder.build()` usage pattern
   - Implements `renderForm()` method for payment forms

### Integration Pattern

The SDK follows this integration pattern:
```swift
import MoneyHash

let moneyhashSDK = MoneyHashSDKBuilder.build()
moneyhashSDK.renderForm(
    on: self,
    intentId: "payment_intent_id",
    embedStyle: nil,
    intentType: .payment
) { result in
    // Handle payment result
}
```

### Platform Requirements

- **iOS Deployment Target**: 14.0+
- **Supported Architectures**: arm64 (device), arm64 + x86_64 (simulator)
- **Excluded Architectures**: i386 (legacy 32-bit simulator)
- **Framework Type**: XCFramework with Swift modules

### Testing Structure

- Unit tests located in `Example/Tests/`
- Current test file: `Tests.swift` with basic XCTest setup
- Tests are minimal and need expansion for comprehensive coverage

### CocoaPods Configuration

- **Podspec**: `MoneyHashPayment.podspec`
- **Source**: Git repository with version tags
- **Distribution**: Pre-compiled XCFrameworks (not source files)
- **Dependencies**: None specified (self-contained)

### Development Workflow

1. Make changes to XCFrameworks (external process)
2. Update version in `MoneyHashPayment.podspec`
3. Test integration in Example app
4. Validate with `pod lib lint`
5. Create git tag and push
6. Publish to CocoaPods trunk (if needed)