# amplify-ui-test-sample

Demonstrates Amplify running with UITests

## Setup

- `pod install`
- `amplify init`
- `amplify add auth`

This will create an `amplifyconfiguration.json` file in the root of your project folder. The Xcode project is already set up to reference it.

## Running the example test

- Launch Xcode and open the `amplify-ui-test-sample.xcworkspace` file, not the Project file
- Run the UI tests by hitting "Cmd-U" or selecting **Product > Test** from the Xcode menu
- Note the UI behavior:
  - Simulator launches the app
  - The label reads "(not started)"
  - The test taps a button
  - Behind the scenes the app invokes `Amplify.Auth.fetchAuthSession()`
  - The UI view updates the label to be "Signed out"

## Proving that the test references amplifyconfiguration.json

- Locally edit `amplifyconfiguration.json` to remove all content. I use just an empty object: `{}`
- Re-run the test
- The app crashes as expected with a message like `Fatal error: 'try!' expression unexpectedly raised an error: PluginError: Unable to decode configuration`
- Restore the content of `amplifyconfiguration.json`
- Re-run the test
- Test passes as expected
