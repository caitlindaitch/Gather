import SwiftUI

struct AppView: View {
    @StateObject var flowViewModel: AppFlowViewModel
    var createEventViewModel: CreateEventViewModel

    var body: some View {
        NavigationStack(path: $flowViewModel.navigationPath) {
            GatherLandingView(viewModel: flowViewModel)
            .navigationDestination(for: Int.self) { i in
                CreateEventView(flowViewModel: flowViewModel, createEventViewModel: createEventViewModel)
            }
        }
    }
}

#Preview {
    AppView(flowViewModel: AppFlowViewModel(), createEventViewModel: CreateEventViewModel(model: CreateEventModel(), defaultsManager: DefaultsManager()))
}
