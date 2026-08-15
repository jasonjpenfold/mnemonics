import SwiftUI

struct ContentView: View {
    @Environment(MnemonicsModel.self) private var model
    var body: some View {
        NavigationStack{
            List{
                
                ForEach(model.sortedCategories){
                    category in
                    if let mnemonics = model.mnemonicsByCategoryId[category.id]{
                        Section(category.name){
                            ForEach(mnemonics){
                                mnemonic in
                                NavigationLink(value: mnemonic){MnemonicView(mnemonic: mnemonic)}
                            }
                        }
                    }
                }
                
            }.navigationTitle("Mnemonics")
                .navigationBarTitleDisplayMode(.large)
                .navigationDestination(for: Mnemonic.self, destination: DetailView.init)
        }
    }
}
