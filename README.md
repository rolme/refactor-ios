# Refactor iOS

[![CircleCI](https://circleci.com/gh/rolme/refactor-ios/tree/master.svg?style=svg&circle-token=85e54e8fc2736fae1df6c637277798de7c505171)](https://circleci.com/gh/rolme/refactor-ios/tree/master)

## About

Refactor Daily mobile application for iOS.

## Getting Started

### Prerequisites

- [Xcode](https://apps.apple.com/us/app/xcode/id497799835?mt=12)
- [CocoaPods](https://guides.cocoapods.org/using/getting-started.html)
- [Node 12](https://treehouse.github.io/installation-guides/mac/node-mac.html)

### Setup

Clone the repository and enter the project directory:

```sh
git clone git@github.com:rolme/refactor-ios.git
cd refactor-ios
```

Install core dependencies and bootstrap the project:

```sh
npm install -g @aws-amplify/cli     # may require sudo
pod install
```

### Building

open project in XCode and hit build

```sh
open refactor-ios.xcworkspace
```

## Generating Swift code

If there are updates to `operations.graphql`, `schema.json`, or `schema.graphql`, you can run the following to generate new Swift code.

```sh
amplify codegen
```

## Other Guides

[New Project Setup](https://github.com/rolme/refactor-ios/wiki/New-Project-Setup)