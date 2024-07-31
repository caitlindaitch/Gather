import SwiftUI

enum NavigationStep: Int {
    case landing
    case create
}

class AppFlowViewModel: ObservableObject {
    @Published var navigationPath = NavigationPath()
    
    func navigateToCreateEvent() {
        navigationPath.append(NavigationStep.create.rawValue)
    }
}
