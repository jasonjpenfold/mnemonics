import SwiftUI

@Observable
class MneumonicsModel{
    private(set) var mneumonicDatabase: [Mnemonic]
    
    init(){
        self.mneumonicDatabase = [Mnemonic(title: "Cranial Nerves (names)", mnemonic: "Oh Oh Oh To Touch And Feel Very Good Velvet, AH", description: "I–XII: Olfactory, Optic, Oculomotor, Trochlear, Trigeminal, Abducens, Facial, Vestibulocochlear, Glossopharyngeal, Vagus, Accessory, Hypoglossal", category: .anatomy), Mnemonic(title: "Cranial Nerves (function: sensory/motor/both)", mnemonic: "Some Say Marry Money But My Brother Says Big Brains Matter More", description: "S, S, M, M, B, M, B, S, B, B, M, M", category: .anatomy)]
    }
    func loadMDatabase(){
        
    }
}
