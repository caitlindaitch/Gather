import SwiftUI

enum NavigationScreen {
    case landing
    case create
    case viewAll
    case edit(EventModel)
}

class AppFlowController: ObservableObject {
    @Published var path: [NavigationScreen] = []

    func navigate(to screen: NavigationScreen) {
        path.append(screen)
    }

    func pop() {
        path.removeLast()
    }
}
