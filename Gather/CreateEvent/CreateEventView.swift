import PhotosUI
import SwiftUI

struct Event {
    let name: String
    let location: String
    let date: Date
    let eventDescription: String
}

struct CreateEventScreen: View {
    @StateObject var flowViewModel: AppFlowViewModel
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

            Section {
//                Button(action: createEventViewModel.saveEvent) {
//                    Text("Save event")
//                }
            }
        }
    }
}

//#Preview {
//    CreateEventView(flowViewModel: AppFlowViewModel())
//}
