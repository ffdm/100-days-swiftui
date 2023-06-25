# Building menu with List
ContentView.swift code tells us the following:
- Views are structs
- All views conform to the `View` protocol
- That protocol requires a `body` that contains the layout
- Returns `some View`, an opaque return type
- UI is wrapped in `VStack`
- Some methods: `.imageScale()`, `.foregroundStyle()`,
    `.padding()`
---
To update preview area, press `Opt-Cmd-P` to update.
---
So we have a List for our menu. Now we want this List to act as
a navigation controller so that when an item of the menu is
selected, it takes the user to a page with more information about
the item. To do this, we wrap our list in a NavigationStack like
so:
```
NavigationStack {
    List {
        Text("Hello World")
        Text("Hello World")
        Text("Hello World")
    }
}
```
We want to load our table cells from JSON.

