import SwiftUI

struct EditEventScreen: View {
    @Environment(\.modelContext) private var context
    @StateObject var flowController: AppFlowController
    var initialEvent: EventModel

    /// Data Bindings

    @State var name: String = ""
    @State var location: String = ""
    @State var eventDate: Date = Date()
    @State var eventDescription: String = ""

    var body: some View {
        Form {
            Section {
                TextField("Name", text: $name)
                TextField("Location", text: $location)
                DatePicker("Date", selection: $eventDate)
            } header: {
                Text("Event details")
            }

            Section {
                TextEditor(text: $eventDescription)
                    .frame(height: 200)
            } header: {
                Text("Description")
            }

//            Section {
//                Button(action: saveEvent) {
//                    Text("Save event")
//                }
//            }
        }
    }

    
}

//#Preview {
//    CreateEventView(flowViewModel: AppFlowViewModel())
//}
