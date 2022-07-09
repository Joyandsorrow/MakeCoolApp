import SwiftUI

struct make2: View {
    var body: some View {
        ScrollView (showsIndicators: false){
        VStack{
            Text("Toolbar")
                .bold()
                .font(.title)
        }.padding()
        }
    }
}
