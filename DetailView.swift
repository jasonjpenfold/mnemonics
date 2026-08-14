import SwiftUI

struct DetailView: View{
    
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
                    Text("Category: \(mnemonic.category.rawValue)")
                }.padding(30)
                .background(.blue.opacity(0.3))
                .clipShape(RoundedRectangle(cornerSize: CGSize(width: 10, height: 10)))
            }.padding(30)
        }
        
            }
}

