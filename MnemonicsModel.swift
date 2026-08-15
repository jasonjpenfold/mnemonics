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
    private(set) var categories: [MCategories] 
    private(set) var mnemonicsByCategoryId: [UUID:[Mnemonic]]
    
    // public attributes
    var sortedCategories: [MCategories]{
        categories.sorted{$0.name < $1.name}
    }
   /* var mnemonicsByCategoryId: [UUID:[Mnemonic]]{
        Dictionary(grouping: mnemonicDatabase)
        {$0.categoryID}
            
        }
    */
       // instead of model.mnemonicDatabase.filter{$0.categoryID == category.id}
        var categoryNameFromId: [UUID:String]{
            Dictionary(uniqueKeysWithValues: categories.map{
                ($0.id, $0.name)
            })
        }
        // instead of model.categories.first{$0.id == mnemonic.categoryID} 
    
    init(){
        let mnemonics: [Mnemonic] = Bundle.main.decode("mnemonics.json")
        // need to set Type so <T> can be inferred to decode func
        self.mnemonicDatabase = mnemonics
        let categories: [MCategories] = Bundle.main.decode("categories.json")
        self.categories = categories
        // needs local mnemonics and categories
        self.mnemonicsByCategoryId = Dictionary(grouping: mnemonics){
            $0.categoryID
        }
    }
    
}

