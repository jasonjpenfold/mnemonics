import SwiftUI

enum MnemonicCategory: String, Codable{
    case anatomy = "Anatomy"
    case gastro = "Gastroenterology"
    case neuro = "Neurology"
    case renal = "Renal"
    case oncology = "Oncology"
    case biochem = "Biochemistry"
    
}

struct Mnemonic:Identifiable, Hashable, Codable{
    var id : UUID
    var title: String
    var mnemonic: String
    var description: String
    var category: MnemonicCategory
}
