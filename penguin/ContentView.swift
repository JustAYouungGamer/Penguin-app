import SwiftUI

struct ContentView: View {
    @Binding var windowCount: Int
    @Environment(\.openWindow) private var openWindow

    var body: some View {
        VStack {
            Image("FatPenguin")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
                .onTapGesture {
                    let newWindows = windowCount
                    for _ in 0..<newWindows {
                        openWindow(id: "PenguinWindow")
                    }
                    windowCount *= 2
                }

            Text("penguin")
        }
        .padding()
    }
}

#Preview {
    ContentView(windowCount: .constant(1))
}
