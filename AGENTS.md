# Score Plugin

A plugin for the [Score](https://github.com/allegro-systems/score) framework — a server-rendered Swift web framework.

## Score Plugin Conventions

Plugins are Swift packages that export a `ScorePlugin` conformance. They can provide:
- Reusable components (`@Component struct`)
- Theme definitions
- Middleware
- Shared modifiers or utilities

### Component Naming

All components must be `UpperCamelCase` `@Component struct` definitions. Never create lowercase helper functions that return `some Node`.

### Modifier Naming

Follow Score's **one modifier per CSS concept** rule:

```swift
.flex(.row, gap: 12)           // flex container
.font(.sans, size: 14)        // all typography in one modifier
.border(width: 1, color: .border, style: .solid)
.radius(8)
```

### Never Use Inline JS or CSS

```swift
// FORBIDDEN:
.htmlAttribute("style", "...")
.htmlAttribute("onclick", "...")
RawTextNode("<style>...</style>")
```

Use Score modifiers for styling. Use `@State`/`@Action` for interactivity.

## Project Structure

```
Sources/
  ScorePluginTemplate/
    Plugin.swift         # ScorePlugin conformance
Tests/
  ScorePluginTemplateTests/
    PluginTests.swift    # Tests
```

## Development

```bash
swift build    # Build the plugin
swift test     # Run tests
```

## Tooling

- Swift 6.3, `swift format` with shared `.swift-format` config
- `hk.pkl` pre-commit hooks: format, build, test
- `mise.toml` for task definitions
- Commit messages: `feat:`, `fix:`, `refactor:`, `chore:`, `test:`
