# ScorePluginTemplate

A [Score](https://github.com/allegro-systems/score) plugin template.

## Usage

Add this plugin to your Score application:

```swift
dependencies: [
    .package(url: "https://github.com/YOUR_ORG/YOUR_PLUGIN.git", from: "0.1.0"),
]
```

Then register it:

```swift
@main
struct MySite: Application {
    var plugins: [any ScorePlugin] { [ScorePluginTemplate()] }
}
```

## Development

```bash
mise run build    # Build
mise run test     # Run tests
mise run format   # Format code
mise run ci       # Run all CI gates
```
