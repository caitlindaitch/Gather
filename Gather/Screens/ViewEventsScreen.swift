import SwiftUI
import SwiftData

struct ViewEventsScreen: View {
    @Environment(\.modelContext) private var context
    @Query var events: [EventModel]
    @StateObject var flowController: AppFlowController

    var body: some View {
        VStack {
            List(events) { event in
                HStack {
                    Text(event.name)
                    Button(action: { editEvent(event) }) {
                        Text("EDIT")
                    }
                }
            }
        }
    }

    private func editEvent(_ event: EventModel) {
        flowController.navigate(to: .edit(event))
    }
}
