import SwiftUI

struct ContentView: View {
    @Environment(MnemonicsModel.self) private var model
    var body: some View {
        NavigationStack{
            List{
                let mnemonics = model.mnemonicDatabase.filter{$0.categoryID == nil}
                if !mnemonics.isEmpty{
                    Section("Uncategorised"){
                        ForEach(mnemonics){
                            mnemonic in
                            NavigationLink(value: mnemonic){MnemonicView(mnemonic: mnemonic)}
                        }
                    }
                                    }
                ForEach(model.categories){
                    category in
                    let mnemonics = model.mnemonicDatabase.filter{$0.categoryID == category.id}
                    Section(category.name){
                        ForEach(mnemonics){
                            mnemonic in
                            NavigationLink(value: mnemonic){MnemonicView(mnemonic: mnemonic)}
                        }
                    }
                }
                
            }.navigationTitle("Mnemonics")
                .navigationBarTitleDisplayMode(.large)
                .navigationDestination(for: Mnemonic.self, destination: DetailView.init)
        }
    }
}
