import SwiftUI


struct penguinApp: App {
    @State private var windowCount = 1

    var body: some Scene {
        WindowGroup(id: "MainWindow") {
            ContentView(windowCount: $windowCount)
        }
    }
}

