import SwiftUI

struct make2: View {
    @Binding var openTool : Bool
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
