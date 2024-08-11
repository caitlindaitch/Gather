import PhotosUI
import SwiftUI

struct Event {
    var name: String
    var location: String
    var date: Date
    var description: String
    var image: PhotosPickerItem?
}

class CreateEventModel: ObservableObject {
    @Published var name: String = ""
    @Published var location: String = ""
    @Published var date: Date = Date()
    @Published var description: String = ""
    @Published var image: PhotosPickerItem? = nil

    func getEvent() -> Event {
        return Event(
            name: name,
            location: location,
            date: date,
            description: description,
            image: image
        )
    }
}

class CreateEventViewModel {
    private let model: CreateEventModel
    private let defaults: DefaultsManager

    @State var name: String
    @State var location: String
    @State var date: Date
    @State var description: String
    @State var image: PhotosPickerItem?

    init(
        model: CreateEventModel,
        defaultsManager: DefaultsManager
    ) {
        self.model = model
        self.defaults = defaultsManager

        let event = defaults.getEvent()
        _name = State(initialValue: event?.name ?? "")
        _location = State(initialValue: event?.location ?? "")
        _date = State(initialValue: event?.date ?? Date())
        _description = State(initialValue: event?.description ?? "")
        _image = State(initialValue: event?.image)
    }

    func saveEvent() {
        defaults.saveEvent(model.getEvent())
    }
}
