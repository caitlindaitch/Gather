import PhotosUI
import SwiftUI

struct CreateEventScreen: View {
    @Environment(\.modelContext) private var context
    @StateObject var flowController: AppFlowController

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
                Button(action: saveEvent) {
                    Text("Save event")
                }
            }
        }
    }

    private func saveEvent() {
        guard name != "", location != "", eventDescription != "" else {
            print("Invalid form")
            return
        }
        
        let event = EventModel(
            name: name,
            location: location,
            date: eventDate,
            eventDescription: eventDescription
        )

        context.insert(event)
        flowController.pop()
    }
}

//#Preview {
//    CreateEventView(flowViewModel: AppFlowViewModel())
//}
