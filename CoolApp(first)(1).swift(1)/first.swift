import SwiftUI

struct first: View {
    @Binding var open : Bool
    @Binding var newmacOSapp : Bool
    @Binding var newapp : Bool
    @Binding var Makeios : [makeaniosapp]
    
    @Binding var chosenew: Bool
    var body: some View {
        HStack{
            Button{
                open.toggle()
            }label: {
                HStack{
                    Spacer()
                    Image(systemName: "plus")
                        .foregroundColor(.white)
                        .font(.bold(.title)())
                        .shadow(radius: 3)
                    Text("iOS APP")
                        .bold()
                        .font(.title3)
                        .foregroundColor(.white)
                        .shadow(radius: 5)
                    Spacer()
                }.padding()
                    .background(Color.blue)
                    .cornerRadius(10)
                    .shadow(radius: 5)
            }.sheet(isPresented: $open){
                iosapp(Makeios: $Makeios, open: $open, newmacOSapp: $newmacOSapp, newapp: $newapp)
            }///
            Button{
                newmacOSapp.toggle()
            }label: {
                HStack{
                    Spacer()
                    Image(systemName: "plus")
                        .foregroundColor(.white)
                        .font(.bold(.title)())
                        .shadow(radius: 3)
                    Text("macOS APP")
                        .bold()
                        .font(.title3)
                        .foregroundColor(.white)
                        .shadow(radius: 5)
                    Spacer()
                }.padding()
                    .background(Color.blue)
                    .cornerRadius(10)
                    .shadow(radius: 5)
            }.sheet(isPresented: $newmacOSapp){
                macOSapp()
            }///
            
            Button{
                newapp.toggle()
            }label: {
                HStack{
                    Spacer()
                    Image(systemName: "plus")
                        .foregroundColor(.white)
                        .font(.bold(.title)())
                        .shadow(radius: 3)
                    Text("APP")
                        .bold()
                        .font(.title3)
                        .foregroundColor(.white)
                        .shadow(radius: 5)
                    Spacer()
                }.padding()
                    .background(Color.blue)
                    .cornerRadius(10)
                    .shadow(radius: 5)
            }.sheet(isPresented: $newapp){
                app()
            }///
        }
    }
}
