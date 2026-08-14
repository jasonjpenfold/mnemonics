import SwiftUI

struct DetailView: View{
    var mneumonic: Mnemonic
    var body: some View{
        VStack(spacing: 30){
            
            Text(mneumonic.title)
                .font(.title)
                .bold()
                
            Spacer()
            Text(mneumonic.mnemonic)
                .padding(30)
                .font(.headline)
                .bold()
                .foregroundStyle(.black)
                .border(.blue.opacity(0.3),width: 2)
                
                
            
            Divider()
            Text(mneumonic.description).padding(20)
            
            Spacer()
            Divider()
            
            Text("Category: \(mneumonic.category.rawValue)")
        }.padding(30)
        
            }
}

