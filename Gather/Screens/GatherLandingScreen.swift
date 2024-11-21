import SwiftUI

struct GatherLandingView: View {
    @StateObject var flowController: AppFlowController

    var body: some View {
        VStack {
            Text("Gather")
                .font(.title)
            Text("Party planning made easy")
                .font(.subheadline)
            Button("CREATE GATHERING") {
                flowController.navigateToCreateEvent()
            }
            .buttonStyle(.main)
        }
        .padding()
    }
}

#Preview {
    GatherLandingView(flowController: AppFlowController())
}
