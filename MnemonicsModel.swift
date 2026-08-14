import SwiftUI

@Observable
class MnemonicsModel{
    private(set) var mnemonicDatabase: [Mnemonic]
    
    init(){
      
        self.mnemonicDatabase = Bundle.main.decode("mnemonics.json")
    }
    
}
