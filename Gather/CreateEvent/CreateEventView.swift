import PhotosUI
import SwiftUI

struct CreateEventView: View {
    @StateObject var flowViewModel: AppFlowViewModel
    var createEventViewModel: CreateEventViewModel

    var body: some View {
        Form {
            Section {
                TextField("Name", text: createEventViewModel.$name)
                TextField("Location", text: createEventViewModel.$location)
                PhotosPicker("Upload image", selection: createEventViewModel.$image, matching: .images)
                DatePicker("Date", selection: createEventViewModel.$date)
            } header: {
                Text("Event details")
            }

            Section {
                TextEditor(text: createEventViewModel.$description)
                    .frame(height: 200)
            } header: {
                Text("Description")
            }

            Section {
                Button(action: createEventViewModel.saveEvent) {
                    Text("Save event")
                }
            }
        }
    }
}

#Preview {
    CreateEventView(flowViewModel: AppFlowViewModel(), createEventViewModel: CreateEventViewModel(model: CreateEventModel(), defaultsManager: DefaultsManager()))
}
