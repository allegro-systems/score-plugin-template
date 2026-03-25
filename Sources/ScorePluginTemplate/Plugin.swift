import Score

/// A Score plugin template.
///
/// Register this plugin in your application:
///
/// ```swift
/// @main
/// struct MySite: Application {
///     var plugins: [any ScorePlugin] { [ScorePluginTemplate()] }
/// }
/// ```
public struct ScorePluginTemplate: ScorePlugin {
    public let name = "ScorePluginTemplate"

    public init() {}
}
