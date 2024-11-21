import SwiftUI

struct AppView: View {
    @StateObject var flowController: AppFlowController

    var body: some View {
        NavigationStack(path: $flowController.navigationPath) {
            GatherLandingView(flowController: flowController)
            .navigationDestination(for: Int.self) { i in
                CreateEventScreen(flowController: flowController)
            }
        }
    }
}
