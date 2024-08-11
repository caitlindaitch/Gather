import SwiftUI

@main
struct GatherApp: App {
    var body: some Scene {
        WindowGroup {
            AppView(flowViewModel: AppFlowViewModel(), createEventViewModel: CreateEventViewModel(model: CreateEventModel(), defaultsManager: DefaultsManager()))
        }
    }
}
