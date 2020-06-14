# Refactor iOS

[![CircleCI](https://circleci.com/gh/rolme/refactor-ios/tree/master.svg?style=svg&circle-token=85e54e8fc2736fae1df6c637277798de7c505171)](https://circleci.com/gh/rolme/refactor-ios/tree/master)

## About

Refactor Daily mobile application for iOS.

## Getting Started

### Prerequisites

- [asdf](https://asdf-vm.com/#/core-manage-asdf-vm): single CLI to manage runtime environments like nodejs, python, etc.
- [node 14.3](https://nodejs.org)
- [ruby 2.7](https://www.ruby-lang.org/en/news/2020/03/31/ruby-2-7-1-released/)
- [Xcode](https://apps.apple.com/us/app/xcode/id497799835?mt=12)
- [CocoaPods](https://guides.cocoapods.org/using/getting-started.html)

Verify your tooling setup by running

```sh
asdf current
```

It should match closely to the following
```sh
nodejs         14.3.0   (set by ./refactor-ios/.tool-versions)
ruby           2.7.1    (set by ./refactor-ios/.tool-versions)
```

### Setup

Clone the repository and enter the project directory:

```sh
git clone git@github.com:rolme/refactor-ios.git
cd refactor-ios
```

Install core dependencies and bootstrap the project:

```sh
npm install -g aws-appsync-codegen
gem install cocoapods
pod install
```

### Building

open project in XCode and hit build

```sh
open refactor-ios.xcworkspace
```

## Generating Swift code

If there are updates to `operations.graphql` or `schema.json`, you can run the following to generate new Swift code.

```sh
cd refactor-ios && aws-appsync-codegen generate operations.graphql --schema schema.json --output API.swift
```

## Other Guides

[New Project Setup](https://github.com/rolme/refactor-ios/wiki/New-Project-Setup)