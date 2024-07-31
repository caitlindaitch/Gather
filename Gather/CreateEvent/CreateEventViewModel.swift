import SwiftUI

class CreateEventModel: ObservableObject {
    @Published var name: String = ""
}

class CreateEventViewModel {
    let model: CreateEventModel
    
    var name: Binding<String>

    init(model: CreateEventModel) {
        self.model = model
        self.name = Binding(
            get: {
                return model.name
            }, set: { newValue in
                model.name = newValue
            }
        )
    }
}
