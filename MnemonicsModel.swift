import SwiftUI

@Observable
class MnemonicsViewModel{
    // private attributes
    private(set) var mnemonicDatabase: [Mnemonic]{
        didSet{ // used if mnemonicDatabase changes
            mnemonicsByCategoryId = Dictionary(grouping: mnemonicDatabase){
                $0.categoryID
            }
        }
    }
    private(set) var categories: [MCategories] {
        didSet{
            categoryNameFromId = Dictionary(uniqueKeysWithValues: categories.map{
                ($0.id, $0.name)
            })
        }
    }
    private(set) var mnemonicsByCategoryId: [UUID:[Mnemonic]]
    private(set) var categoryNameFromId: [UUID:String]
    
    // public attributes
    var sortedCategories: [MCategories]{
        categories.sorted{$0.name < $1.name}
    }
    
    
    init(){
        let decodedMnemonics: [Mnemonic] = Bundle.main.decode("mnemonics.json")
        // need to set Type so <T> can be inferred to decode func
        self.mnemonicDatabase = decodedMnemonics
        let decodedCategories: [MCategories] = Bundle.main.decode("categories.json")
        self.categories = decodedCategories
        // needs local mnemonics and categories
        self.mnemonicsByCategoryId = Dictionary(grouping: decodedMnemonics){
            $0.categoryID
        }
        self.categoryNameFromId =
            Dictionary(uniqueKeysWithValues: decodedCategories.map{
                ($0.id, $0.name)
            })
        
    }
    
}

