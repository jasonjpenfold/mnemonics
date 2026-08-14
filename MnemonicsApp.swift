import SwiftUI

@main
struct MyApp: App {
    @State private var model = MneumonicsModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(model)
            // Nb .environment on ContentView()
        }
    }
}
