import SwiftUI

@main
struct MyApp: App {
    @State private var model = MnemonicsModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(model)
            // Nb .environment on ContentView()
        }
    }
}
