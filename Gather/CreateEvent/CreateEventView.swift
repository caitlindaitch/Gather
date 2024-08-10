import SwiftUI

struct CreateEventView: View {
    @StateObject var flowViewModel: AppFlowViewModel
    var createEventViewModel: CreateEventViewModel

    var body: some View {
        Form {
            Section {
                TextField("Name", text: createEventViewModel.name)
                TextField("Location", text: createEventViewModel.location)
                TextField("Date", text: createEventViewModel.date)
                TextField("Dsecription", text: createEventViewModel.description)
                TextField("Image", text: createEventViewModel.image)
            } header: {
                Text("Event Details")
            }
        }
    }
}

#Preview {
    CreateEventView(flowViewModel: AppFlowViewModel(), createEventViewModel: CreateEventViewModel(model: CreateEventModel()))
}
