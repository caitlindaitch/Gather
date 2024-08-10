import SwiftUI

class CreateEventModel: ObservableObject {
    @Published var name: String = ""
    @Published var location: String = ""
    @Published var date: String = ""
    @Published var description: String = ""
    @Published var image: String = ""
}

class CreateEventViewModel {
    private let model: CreateEventModel
    
    var name: Binding<String>
    var location: Binding<String>
    var date: Binding<String>
    var description: Binding<String>
    var image: Binding<String>

    init(model: CreateEventModel) {
        self.model = model

        self.name = Binding(get: {
            return model.name
        }, set: { newValue in
            model.name = newValue
        })
        self.location = Binding(get: {
            return model.location
        }, set: { newValue in
            model.location = newValue
        })
        self.date = Binding(get: {
            return model.date
        }, set: { newValue in
            model.date = newValue
        })
        self.description = Binding(get: {
            return model.description
        }, set: { newValue in
            model.description = newValue
        })
        self.image = Binding(get: {
            return model.image
        }, set: { newValue in
            model.image = newValue
        })
    }
}
