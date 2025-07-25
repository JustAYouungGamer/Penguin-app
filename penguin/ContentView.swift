import SwiftUI

@main
struct PenguinApp: App {
    // AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
    @State private var windowCount = 1

    var body: some Scene {
        // im gonna cry please work
        WindowGroup(id: "MainWindow") {
            ContentView(windowCount: $windowCount)
        }
    }
}

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
                    //holy fucking shit
                    for _ in 0..<windowCount {
                        // please help me
                        openWindow(id: "MainWindow")
                    }
                    // please work this time
                    windowCount *= 2
                }

            Text("penguin army avenges benedict")
        }
        .padding()
        .frame(width: 300, height: 300)
    }
}

#Preview {
    ContentView(windowCount: .constant(1))
}

