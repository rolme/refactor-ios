# Refactor iOS

[![CircleCI](https://circleci.com/gh/rolme/refactor-ios/tree/master.svg?style=svg&circle-token=85e54e8fc2736fae1df6c637277798de7c505171)](https://circleci.com/gh/rolme/refactor-ios/tree/master)

## About

Refactor Daily mobile application for iOS.

## Getting Started

### Prerequisites

- [Xcode](https://apps.apple.com/us/app/xcode/id497799835?mt=12)
- [CocoaPods](https://guides.cocoapods.org/using/getting-started.html)
- [Node](https://nodejs.org/en/)

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

If needed, initialize Amplify
```sh
amplify init

Note: It is recommended to run this command from the root of your app directory
? Enter a name for the project refactor-ios
? Enter a name for the environment staging
? Choose your default editor: Visual Studio Code
? Choose the type of app that you're building ios
Using default provider  awscloudformation

For more information on AWS Profiles, see:
https://docs.aws.amazon.com/cli/latest/userguide/cli-multiple-profiles.html

? Do you want to use an AWS profile? Yes
? Please choose the profile you want to use refactor
Adding backend environment staging to AWS Amplify Console app: d3yh4l5qteyeb
⠹ Initializing project in the cloud...

CREATE_IN_PROGRESS DeploymentBucket                   AWS::S3::Bucket            Tue Mar 24 2020 08:03:38 GMT-0700 (Pacific Daylight Time) Resource creation Initiated
CREATE_IN_PROGRESS UnauthRole                         AWS::IAM::Role             Tue Mar 24 2020 08:03:37 GMT-0700 (Pacific Daylight Time) Resource creation Initiated
CREATE_IN_PROGRESS AuthRole                           AWS::IAM::Role             Tue Mar 24 2020 08:03:37 GMT-0700 (Pacific Daylight Time) Resource creation Initiated
CREATE_IN_PROGRESS DeploymentBucket                   AWS::S3::Bucket            Tue Mar 24 2020 08:03:36 GMT-0700 (Pacific Daylight Time)                            
CREATE_IN_PROGRESS UnauthRole                         AWS::IAM::Role             Tue Mar 24 2020 08:03:36 GMT-0700 (Pacific Daylight Time)                            
CREATE_IN_PROGRESS AuthRole                           AWS::IAM::Role             Tue Mar 24 2020 08:03:36 GMT-0700 (Pacific Daylight Time)                            
CREATE_IN_PROGRESS amplify-refactor-ios-staging-80331 AWS::CloudFormation::Stack Tue Mar 24 2020 08:03:33 GMT-0700 (Pacific Daylight Time) User Initiated             
⠙ Initializing project in the cloud...

CREATE_COMPLETE UnauthRole AWS::IAM::Role Tue Mar 24 2020 08:03:52 GMT-0700 (Pacific Daylight Time) 
CREATE_COMPLETE AuthRole   AWS::IAM::Role Tue Mar 24 2020 08:03:52 GMT-0700 (Pacific Daylight Time) 
⠦ Initializing project in the cloud...

CREATE_COMPLETE DeploymentBucket AWS::S3::Bucket Tue Mar 24 2020 08:03:59 GMT-0700 (Pacific Daylight Time) 
⠙ Initializing project in the cloud...

CREATE_COMPLETE amplify-refactor-ios-staging-80331 AWS::CloudFormation::Stack Tue Mar 24 2020 08:04:01 GMT-0700 (Pacific Daylight Time) 
✔ Successfully created initial AWS cloud resources for deployments.
✔ Initialized provider successfully.
Initialized your environment successfully.

Your project has been successfully initialized and connected to the cloud!

Some next steps:
"amplify status" will show you what you've added already and if it's locally configured or deployed
"amplify add <category>" will allow you to add features like user login or a backend API
"amplify push" will build all your local backend resources and provision it in the cloud
“amplify console” to open the Amplify Console and view your project status
"amplify publish" will build all your local backend and frontend resources (if you have hosting category added) and provision it in the cloud

Pro tip:
Try "amplify add api" to create a backend API and then "amplify publish" to deploy everything
```

#### Generating GraphQL code

```sh
amplify codegen
```

NOTE: First time setup will require you have the `operations.graphql` and `schema.json` files in the root directory.

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

#### Unknown/Unneeded Generated Swift files

You may come across unneeded swift files, this maybe because your `schema.graphql` is invalid. Although not needed, amplify expects it in order to compile your code in XCode.

### Development

After installation, you can start the workspace in you terminal

```sh
open refactor-ios.xcworkspace
```
