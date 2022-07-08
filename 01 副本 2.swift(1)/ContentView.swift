import SwiftUI

struct AppBox: View {
    @State private var Makeios = [
        makeaniosapp(name: "Start",
                     isOpen: false, 
                     note: "This is your starts App",
                     photo: "P1",
                     photo2: "P2"
                     
                    )
    ]
    var body: some View {
        HStack {
            HomeView(Makeios: $Makeios)
        }
    }
}
