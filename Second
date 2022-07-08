import SwiftUI

struct second: View {
    @State var opennew = false
    @State var makenew = false
    @State var trynew = false
    var body: some View {
        VStack{
        HStack{
            Text("Make an App")
                .bold()
                .font(.title)
            
        }////
            
            Button{
                opennew.toggle()
            }label: {
                HStack{
                    Spacer()
                Image(systemName: "plus")
                        .foregroundColor(.white)
                    .font(.bold(.title)())
                    .shadow(radius: 3)
                    Text("iOS APP")
                        .bold()
                        .font(.title)
                        .foregroundColor(.white)
                        .shadow(radius: 5)
                    Spacer()
                }.padding()
                    .background(Color.blue)
                    .cornerRadius(10)
                    .shadow(radius: 5)
            }.sheet(isPresented: $opennew){
                iosapp()
            }///
            Button{
                makenew.toggle()
            }label: {
                HStack{
                    Spacer()
                    Image(systemName: "plus")
                        .foregroundColor(.white)
                        .font(.bold(.title)())
                        .shadow(radius: 3)
                    Text("macOS APP")
                        .bold()
                        .font(.title)
                        .foregroundColor(.white)
                        .shadow(radius: 5)
                    Spacer()
                }.padding()
                    .background(Color.blue)
                    .cornerRadius(10)
                    .shadow(radius: 5)
            }.sheet(isPresented: $makenew){
                macOSapp()
            }///
            .padding(.vertical)
            Button{
                trynew.toggle()
            }label: {
                HStack{
                    Spacer()
                    Image(systemName: "plus")
                        .foregroundColor(.white)
                        .font(.bold(.title)())
                        .shadow(radius: 3)
                    Text("APP")
                        .bold()
                        .font(.title)
                        .foregroundColor(.white)
                        .shadow(radius: 5)
                    Spacer()
                }.padding()
                    .background(Color.blue)
                    .cornerRadius(10)
                    .shadow(radius: 5)
            }.sheet(isPresented: $trynew){
                app()
            }///
            
            
            
        }
    }
}
