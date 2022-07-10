import SwiftUI

struct make3: View {
    @Binding var atitle : [TheText]
    //@Binding var istaptext : Bool
    //
    var body: some View {
        VStack{
            ForEach(atitle){ (TheText) in
                Button{
                    //Bool值传输地点
                    //点击后出现一个动画
                }label: {
                Text(TheText.title)
                 }
                
            }
        }
    }
    func newtext() {
        atitle.append(TheText(title: "Hello,world"))
    }
}
