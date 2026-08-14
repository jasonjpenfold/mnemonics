import SwiftUI

struct ContentView: View {
    @Environment(MnemonicsModel.self) private var model
    var body: some View {
        NavigationStack{
            List{
                ForEach(model.mnemonicDatabase){mnemonic in 
                    NavigationLink(value: mnemonic){MnemonicView(mnemonic: mnemonic)}
                }
            }.navigationTitle("Mnemonics")
                .navigationBarTitleDisplayMode(.large)
                .navigationDestination(for: Mnemonic.self, destination: DetailView.init)
        }
    }
}
