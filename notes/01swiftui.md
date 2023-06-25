# What is SwiftUI?
## Imperative UI
Might call a function when a button is clicked, and read a value
and show a label in that function, modifying the user inteface
based on what's happening.
## Declarative UI
Lets us tell iOS what all of the possible states are for our app.
We let SwiftUI change between the layouts for us. SwiftUI also
acts as a cross-platform user interface.
# Difference between IB/Storyboards?
IB and Swift are separate. SwiftUI is a Swift-only framework. 
### Seeing preview of code
Enable Canvas in Editor menu.
### What is the basic App template?
- Project.swift
    performs initial setup, creates and displays initial view
- ContentView.swift
    Initial piece of UI
- Assets.xcassets
    Asset catalog: stores images and colors used in project
- Preview Contnetn
    Contains a Preview Assets asset catalog
The only part that matters: ContentView.swift.
### What's in Project.swift?
```
@main
struct YourProjectName: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
```
Creates a `ContentView` instance and places it inside a 
window group so it is visible. 
### ContentView.swift:
```
import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
```
`ContentView` conforms to the
`View` protocol. This basically means you need a property called
`body` that returns some sort of `View`. The return type of `body`
is `some View`. The `some` keyword is an opaque return type.
### Opaque return types
I don't understand this! I need to go back to learning raw Swift.
Or basically, it will return some sort of `View` but SwiftUI 
needs not know what type. So basically just return something
conforming to the `View` protocol.
- There is also a `VStack`, showing a globe image and some text.
- The stack has `.padding()`, which creates a new view with
    padding around it. This is a modifier as opposed to a method
    since it creates modified content as opposed to changing the
    existing content.
- Lastly, the `#Preview` displays the code preview in Xcode.
