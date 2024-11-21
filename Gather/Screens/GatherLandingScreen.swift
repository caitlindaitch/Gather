import SwiftUI

struct GatherLandingScreen: View {
    @StateObject var flowController: AppFlowController

    var body: some View {
        VStack {
            Text("Gather")
                .font(.title)
            Text("Party planning made easy")
                .font(.subheadline)
            Button("CREATE GATHERING") {
                flowController.navigate(to: .create)
            }
            .padding(.top)
            .buttonStyle(.main)
            Button("VIEW All GATHERINGS") {
                flowController.navigate(to: .viewAll)
            }
            .buttonStyle(.main)
        }
        .padding()
    }
}

#Preview {
    GatherLandingScreen(flowController: AppFlowController())
}
