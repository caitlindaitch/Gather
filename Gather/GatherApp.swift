import SwiftData
import SwiftUI

@main
struct GatherApp: App {
    var body: some Scene {
        WindowGroup {
            AppView(flowController: AppFlowController())
        }
        .modelContainer(for: EventModel.self)
    }
}
