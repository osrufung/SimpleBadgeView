# SimpleBadgeView

A simple View extension to add a badge on one of the corners of your view. Alignment can be configured and also the background color.


## Supported Platforms :iphone:

- iOS 13.0.


## Usage

### Basic example:

```
Text("Hello")
    .padding(10)
    .background(Color.gray)
    .badge(count: count)
```

### A more customized example:

```
Button("Button with Badge") { }
    .padding()
    .background(Color.yellow)
    .badge(count: 1000, alignment: .bottomTrailing, color: .green)
```
