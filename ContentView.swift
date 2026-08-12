import SwiftUI

struct ContentView: View {
    @Environment(MneumonicsModel.self) var model
    var body: some View {
        NavigationStack{
            List{
                ForEach(model.mneumonicDatabase, id: \.id){mneumonic in 
                    NavigationLink(value: mneumonic){MnemonicView(mneumonic: mneumonic)}
                }
            }.navigationTitle("Mneumonics")
                .navigationBarTitleDisplayMode(.large)
                .navigationDestination(for: Mnemonic.self, destination: DetailView.init)
        }
    }
}
