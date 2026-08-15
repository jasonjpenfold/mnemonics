import SwiftUI

struct DetailView: View{
    @Environment(MnemonicsModel.self) private var model
    var mnemonic: Mnemonic
    
    var body: some View{
        ScrollView{
            VStack(spacing: 30){
                
                Text(mnemonic.title)
                    .font(.title)
                    .bold()
                
                
                Text(mnemonic.mnemonic)
                    .padding(30)
                    .font(.headline)
                    .bold()
                    .foregroundStyle(.primary)
                    .border(.blue.opacity(0.3),width: 2)
                
                
                
                
                Divider()
                Text(mnemonic.description).padding(20)
                
                
                Divider()
                HStack{
                    let category = model.categories.first{$0.id == mnemonic.categoryID} 
                    Text("Category: \(category?.name ?? "None")")
                        .padding(10)
                        .background(.blue.opacity(0.3))
                        .clipShape(RoundedRectangle(cornerSize: CGSize(width: 20, height: 20)))
                }.padding(30)
            }.padding(30)
        }
        
            }
}

