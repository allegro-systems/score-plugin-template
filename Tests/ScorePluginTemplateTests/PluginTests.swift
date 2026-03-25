import Testing

@testable import ScorePluginTemplate

@Suite("ScorePluginTemplate")
struct ScorePluginTemplateTests {

    @Test("Plugin has correct name")
    func pluginName() {
        let plugin = ScorePluginTemplate()
        #expect(plugin.name == "ScorePluginTemplate")
    }
}
