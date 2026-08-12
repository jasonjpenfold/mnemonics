import SwiftUI

struct DetailView: View{
    var mneumonic: Mnemonic
    var body: some View{
        Text(mneumonic.title)
        Text(mneumonic.mnemonic)
        Text(mneumonic.description)
        Text(mneumonic.category.rawValue)
    }
}

