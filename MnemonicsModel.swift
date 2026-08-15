import SwiftUI

@Observable
class MnemonicsModel{
    private(set) var mnemonicDatabase: [Mnemonic]
    private(set) var categories: [MCategories] 
    init(){
      
        self.mnemonicDatabase = Bundle.main.decode("mnemonics.json")
        self.categories = Bundle.main.decode("categories.json")
    }
    
}
