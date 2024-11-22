import SwiftUI

struct AppView: View {
    @StateObject var flowController: AppFlowController
    @Environment(\.modelContext) private var context

    var body: some View {
        NavigationStack(path: $flowController.path) {
            GatherLandingScreen(flowController: flowController)
                .navigationDestination(for: NavigationScreen.self) { screen in
                    switch screen {
                    case .create:
                        CreateEventScreen(flowController: flowController)
                    case .landing:
                        GatherLandingScreen(flowController: flowController)
                    case .viewAll:
                        ViewEventsScreen(flowController: flowController)
                    case .edit(let event):
                        EditEventScreen(flowController: flowController, event: event)
                    }
            }
        }
    }
}
