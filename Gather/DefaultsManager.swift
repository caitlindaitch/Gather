import Foundation

enum GatherDataElement: String {
    case event
}

class DefaultsManager {
    func getEvent() -> Event? {
        let event = UserDefaults.standard.object(forKey: GatherDataElement.event.rawValue)
        return event as? Event
    }

    func saveEvent(_ event: Event) {
        UserDefaults.standard.set(event, forKey: GatherDataElement.event.rawValue)
    }
}
