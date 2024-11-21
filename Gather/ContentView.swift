import SwiftUI


struct AppView: View {
    @StateObject var flowViewModel: AppFlowViewModel

    var body: some View {
        NavigationStack(path: $flowViewModel.navigationPath) {
            GatherLandingView(viewModel: flowViewModel)
            .navigationDestination(for: Int.self) { i in
                CreateEventScreen(flowViewModel: flowViewModel)
            }
        }
    }
}

#Preview {
    AppView(flowViewModel: AppFlowViewModel())
}
