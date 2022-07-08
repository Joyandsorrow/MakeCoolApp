import SwiftUI

struct first: View {
    @State var open = false
    @State var newmacOSapp = false
    @State var newapp = false
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
                iosapp()
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
