import SwiftUI

@main
struct GatherApp: App {
    var body: some Scene {
        WindowGroup {
            AppView(flowViewModel: AppFlowViewModel())
        }
    }
}
