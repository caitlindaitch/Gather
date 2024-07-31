import SwiftUI

struct GatherLandingView: View {
    @StateObject var viewModel: AppFlowViewModel
    
    var body: some View {
        VStack {
            Text("Gather")
                .font(.title)
            Button("CREATE GATHERING") {
                viewModel.navigateToCreateEvent()
            }
            .padding()
            .foregroundColor(.white)
            .background(.gray)
            .clipShape(Capsule())
        }
        .padding()
    }
}

#Preview {
    GatherLandingView(viewModel: AppFlowViewModel())
}
