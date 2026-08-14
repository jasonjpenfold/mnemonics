import SwiftUI

enum mnemonicCategory: String{
    case anatomy = "Anatomy"
}

struct Mnemonic:Identifiable, Hashable{
    var id : UUID
    var title: String
    var mnemonic: String
    var description: String
    var category: mnemonicCategory
}
