import SwiftUI


struct Mnemonic:Identifiable, Hashable, Codable{
    var id : UUID
    var title: String
    var mnemonic: String
    var description: String
    var categoryID: UUID?
}

struct MCategories: Identifiable, Hashable, Codable{
    var id: UUID
    var name: String
}
