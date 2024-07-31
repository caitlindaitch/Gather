import SwiftUI

struct CreateEventView: View {
    @StateObject var flowViewModel: AppFlowViewModel
    var createEventViewModel: CreateEventViewModel

    var body: some View {
        VStack(alignment: .leading) {
            Text("Name").font(.headline)
            TextField("", text: createEventViewModel.name)
        }
        .padding(.horizontal, 16)
    }
}

#Preview {
    CreateEventView(flowViewModel: AppFlowViewModel(), createEventViewModel: CreateEventViewModel(model: CreateEventModel()))
}
