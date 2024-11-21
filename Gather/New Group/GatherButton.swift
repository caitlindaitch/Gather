import SwiftUI

struct MainButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        MainButton(configuration: configuration)
    }
}

fileprivate struct MainButton: View {
    let configuration: ButtonStyleConfiguration

    var body: some View {
        configuration.label
                .padding(10.0)
                .foregroundColor(.white)
                .background(.gray)
                .cornerRadius(10.0)
    }
}

extension ButtonStyle where Self == MainButtonStyle {
    internal static var main: MainButtonStyle {
        MainButtonStyle()
    }
}
