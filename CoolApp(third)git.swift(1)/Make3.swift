import SwiftUI

struct make3: View {
    @Binding var atitle : [TheText]
    @State var toolnew = TheText(title: "", istaptext: false)
    @Binding var Switch: Bool
    
    var body: some View {
        VStack{
            ForEach(atitle){ (TheText) in
                Button{
                    toolnew.istaptext.toggle()
                    //Bool值传输地点
                    //点击后出现一个动画
                    if toolnew.istaptext{
                        Switch = true
                    }
                    if toolnew.istaptext == false{
                        Switch = false
                    }
                }label: {
                    if toolnew.istaptext == false{
                        Text(TheText.title)
                            .foregroundColor(.black)
                            
                    }
                    if toolnew.istaptext{
                        Text(TheText.title)
                            .foregroundColor(.black)
                            .border(Color.blue, width: 2)
                        
                    }
                    
                    
                 }
                
            }
        }
    }
    /*func newtext() {
        atitle.append(TheText(title: "Hello,world"))
    }*/
}
