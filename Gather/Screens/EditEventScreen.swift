import SwiftUI

struct EditEventScreen: View {
    @Environment(\.modelContext) private var context
    @StateObject var flowController: AppFlowController
    @Bindable var event: EventModel

    var body: some View {
        Form {
            Section {
                TextField("Name", text: $event.name)
                TextField("Location", text: $event.location)
                DatePicker("Date", selection: $event.date)
            } header: {
                Text("Event details")
            }

            Section {
                TextEditor(text: $event.eventDescription)
                    .frame(height: 200)
            } header: {
                Text("Description")
            }

            Section {
                Button(action: onSave) {
                    Text("Save event")
                }
                Button("Delete", role: .destructive) {
                    self.onDelete(event)
                }
            }
        }
    }

    private func onDelete(_ event: EventModel) {
        context.delete(event)
        flowController.pop()
    }

    private func onSave() {
        try? context.save()
        flowController.pop()
    }
}

//#Preview {
//    CreateEventView(flowViewModel: AppFlowViewModel())
//}
