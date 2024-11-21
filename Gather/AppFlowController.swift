import SwiftUI

enum NavigationStep: Int {
    case landing
    case create
}

class AppFlowController: ObservableObject {
    @Published var navigationPath = NavigationPath()
    
    func navigateToCreateEvent() {
        navigationPath.append(NavigationStep.create.rawValue)
    }

    func pop() {
        navigationPath.removeLast()
    }
}
