# Refactor iOS

[![CircleCI](https://circleci.com/gh/rolme/refactor-ios/tree/master.svg?style=svg&circle-token=85e54e8fc2736fae1df6c637277798de7c505171)](https://circleci.com/gh/rolme/refactor-ios/tree/master)

## About

Refactor Daily mobile application for iOS.

## Getting Started

### Prerequisites

- [Xcode](https://apps.apple.com/us/app/xcode/id497799835?mt=12)
- [CocoaPods](https://guides.cocoapods.org/using/getting-started.html)

### Installation

Clone the repository and enter the project directory:

```sh
git clone git@github.com:rolme/refactor-ios.git
cd refactor-ios
```

Install core dependencies and bootstrap the project:

```sh
pod install
```

### Development

After installation, you can start the workspace in you terminal

```sh
open refactor-ios.xcworkspace
```

#### Generating GraphQL code

```sh
amplify codegen add

? Choose the type of app that you're building ios
? Enter the file name pattern of graphql queries, mutations and subscriptions ./*.graphql
? Do you want to generate/update all possible GraphQL operations - queries, mutations and subscriptions Yes
? Enter maximum statement depth [increase from default if your schema is deeply nested] 4
? Enter the file name for the generated code API.swift
? Do you want to generate code for your newly created GraphQL API Yes
✔ Generated GraphQL operations successfully and saved at graphql
✔ Code generated successfully and saved in file API.swift
```
