import SwiftUI

@Observable
class MnemonicsModel{
    private(set) var mnemonicDatabase: [Mnemonic]
    private(set) var categories: [MCategories] 
    var sortedCategories: [MCategories]{
        categories.sorted{$0.name < $1.name}
    }
    var mnemonicsByCategoryId: [UUID:[Mnemonic]]{
        Dictionary(grouping: mnemonicDatabase)
        {$0.categoryID}
            
        }
       // model.mnemonicDatabase.filter{$0.categoryID == category.id}
        var categoryNameFromId: [UUID:String]{
            Dictionary(uniqueKeysWithValues: categories.map{
                ($0.id, $0.name)
            })
        }
        //model.categories.first{$0.id == mnemonic.categoryID} 
    
    init(){
      
        self.mnemonicDatabase = Bundle.main.decode("mnemonics.json")
        self.categories = Bundle.main.decode("categories.json")
    }
    
}
