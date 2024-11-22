import SwiftUI
import SwiftData

struct ViewEventsScreen: View {
    @Environment(\.modelContext) private var context
    @Query var events: [EventModel]
    @StateObject var flowController: AppFlowController

    var body: some View {
        VStack {
            if events.count > 0 {
                List(events) { event in
                    HStack {
                        Text(event.name)
                        Spacer()
                        Button(action: { editEvent(event) }) {
                            Text("Edit")
                        }
                    }
                }
            } else {
                Text("No Gather events planned")
            }
        }
    }

    private func editEvent(_ event: EventModel) {
        flowController.navigate(to: .edit(event))
    }
}
