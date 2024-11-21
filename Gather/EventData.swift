import Foundation
import SwiftData

@Model
final class EventModel: Identifiable {
    var id: String
    var name: String
    var location: String
    var date: Date
    var eventDescription: String

    init(
        name: String,
        location: String,
        date: Date,
        eventDescription: String
    ) {
        self.id = UUID().uuidString
        self.name = name
        self.location = location
        self.date = date
        self.eventDescription = eventDescription
    }
}
