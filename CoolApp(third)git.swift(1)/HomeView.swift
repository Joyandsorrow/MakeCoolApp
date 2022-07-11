import SwiftUI

struct HomeView: View {
    @Binding var Makeios : [makeaniosapp]
    @State var tap = false
    @Environment(\.horizontalSizeClass) var horizontalClass
    //
    @State var open = false
    @State var opena = false
    @State var newmacOSapp = false
    @State var newapp = false
    @Binding var chosenew : Bool
    
    
    @Binding var openTool: Bool
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
        VStack{
            Text("CoolApp")
                .bold()
                
                .font(.system(size: 60, weight: .black))
                
            Text("make some cool app")
                .bold()
                .padding(.bottom)
            //Top title
            if horizontalClass == .regular{
                VStack{
                HStack{
                Button{
                    opena.toggle()
                }label: {
                    HStack {
                        VStack(alignment: .leading){
                            Text("Let's make an App")
                                .bold()
                                .font(.title2)
                                .foregroundColor(.white)
                            Text("View tutorial")
                                .font(.caption)
                                .foregroundColor(.white)
                        }
                        Spacer()
                        Image(systemName: "book.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 35, height: 35)
                            .foregroundColor(.white)
                    }.shadow(radius: 5)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                        .shadow(radius: 5)
                }/////
                .sheet(isPresented: $opena){
                    Text(":(")
                        
                    Text("Oh,No!")
                }
                
                    HStack{
                Button{
                    
                }label: {
                    
                        VStack(alignment: .leading){
                            Text("Designed for large screen")
                                .bold()
                                .font(.title3)
                                .foregroundColor(.white)
                            Text("Learn more")
                                .font(.caption)
                                .foregroundColor(.white)
                        }
                        Spacer()
                        Image(systemName: "ipad")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 35, height: 35)
                            .foregroundColor(.white)
                    }.shadow(radius: 5)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                        .shadow(radius: 5)
                }/////
                }
                    Text("Make an App")
                        .bold()
                        .font(.title)
                    first(open: $open, newmacOSapp: $newmacOSapp, newapp: $newapp,Makeios: $Makeios, chosenew: $chosenew)
                    Text("My App")
                        .bold()
                        .font(.title)
                    ScrollView (.horizontal, showsIndicators: false){
                        HStack{
                        ForEach(Makeios){ (makeaniosapp) in
                            Button{
                                tap.toggle()
                            }label: {
                                
                                VStack{
                                    
                                    Image(makeaniosapp.photo)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(height: 200)
                                        .cornerRadius(10)
                                        .shadow(radius: 5)
                                    HStack{
                                    VStack(alignment: .leading){
                                        Text(makeaniosapp.name)
                                            .bold()
                                            .font(.largeTitle)
                                            .foregroundColor(.white)
                                        Text(makeaniosapp.note)
                                            .bold()
                                            .font(.caption)
                                            .foregroundColor(.white)
                                            .padding(.trailing)
                                    }
                                        Spacer()
                                    }.padding()
                                        .background(Color.blue)
                                        .cornerRadius(10)
                                        .shadow(radius: 5)
                                }.padding(10)
                                    .background()
                                    .cornerRadius(10)
                                    .shadow(radius: 5)
                            }.padding()
                                .fullScreenCover(isPresented: $tap){
                                    making(openTool: $openTool, Makeios: $Makeios, tap: $tap, chosenew: $chosenew)
                                }
                            }
                        
                    }/////
            }
                }
                
            } else {
                Button{
                    
                }label: {
                HStack {
                VStack(alignment: .leading){
                    Text("Let's make an App")
                        .bold()
                        .font(.title2)
                        .foregroundColor(.white)
                    Text("View tutorial")
                        .font(.caption)
                        .foregroundColor(.white)
                }
                    Spacer()
                    Image(systemName: "book.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 35, height: 35)
                        .foregroundColor(.white)
                }.shadow(radius: 5)
                .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                        .shadow(radius: 5)
                }/////
                second(Makeios: $Makeios, open: $open, newmacOSapp: $newmacOSapp, newapp: $newapp)
                Text("My App")
                    .bold()
                    .font(.title)
                
                ScrollView (.horizontal, showsIndicators: false){
                    HStack{
                ForEach(Makeios){ (makeaniosapp) in
                    HStack{
                    Button{
                        tap.toggle()
                    }label: {
                        
                    VStack{
                        Image(makeaniosapp.photo)
                            .resizable()
                            .scaledToFit()
                            .frame(height: 200)
                            .cornerRadius(10)
                            .shadow(radius: 5)
                        HStack{
                    VStack(alignment: .leading){
                    Text(makeaniosapp.name)
                        .bold()
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        Text(makeaniosapp.note)
                            .bold()
                            .font(.caption)
                            .foregroundColor(.white)
                        
                    }
                        Spacer()
                    }.padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                        .shadow(radius: 5)
                    }.padding(10)
                        .background(Color.white)
                        .cornerRadius(10)
                        .shadow(radius: 5)
                }.padding().fullScreenCover(isPresented: $tap){
                    making(openTool: $openTool, Makeios: $Makeios, tap: $tap, chosenew: $chosenew)
                }
                        
            }
                }/////
        }}
            }
        }.padding()
    }
}
}
