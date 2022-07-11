import SwiftUI

struct AppBox: View {
    @State var chosenew: Bool = false
    @State var openTool = false
    @State private var Makeios = [
        makeaniosapp(name: "Start",
                     isOpen: false, 
                     note: "This is your starts App",
                     photo: "P1",
                     photo2: "P2"
                     
                    )
    ]
    struct TheText: Identifiable { // 遵守 Identifiable 协议
        let id = UUID() // 新加一个 id 属性
        let title : String
        //var istaptext : Bool
    }
    
    var body: some View {
        HStack {
            HomeView(Makeios: $Makeios, chosenew: $chosenew, openTool: $openTool)
        }
    }
}
