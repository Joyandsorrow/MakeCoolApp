import SwiftUI

struct iosapp : View{
    @Binding var Makeios : [makeaniosapp]
    @State var name = ""
    @State var note = ""
    @State var Alert = false
    //
    @Binding var open : Bool
    @Binding var newmacOSapp : Bool
    @Binding var newapp : Bool
    var body: some View{
        ZStack{
            //ScrollView(.vertical, showsIndicators: false) {
        VStack{
            Text("iOS APP")
                .bold()
                .font(.title)
                .padding(.bottom)
            
                TextField("work name", text: $name)
                .font(.bold(.title)())
            TextField("work note", text: $note)
                .font(.bold(.body)())
                .padding(.bottom)
            HStack{
                Text("Select Picture")
                    .bold()
                    .font(.title3)
                    .foregroundColor(.gray)
                Spacer()
            }
            ScrollView(.horizontal, showsIndicators: false) {
            HStack{
            Image("P1")
                .resizable()
                .scaledToFit()
                .frame(height: 180)
                .cornerRadius(10)
                .shadow(radius: 5)
            Image("P2")
                .resizable()
                .scaledToFit()
                .frame(height: 180)
                .cornerRadius(10)
                .shadow(radius: 5)
            }.padding()
            }
            Spacer()
            Button{
                
                if self.name != ""{
                    open.toggle()
                    Makeios.append(makeaniosapp(name: name,isOpen: true,note: note,photo: "P1",photo2: "P2"))
                    open = false
                } else {
                    //
                    Alert.toggle()
                }
            }label: {
                Text("COOL")
                    .bold()
                    .font(.system(size: 50, weight: .black))
            }.padding(50)
                .alert(isPresented: $Alert) {
                    SwiftUI.Alert(title: Text("Invalid name") , message: Text("Please enter a valid work name"),dismissButton: .default(Text("OK")))
                }
        }.padding()
            //}
        VStack{
            
            //todos.append(Todo(name: name,category: categoryTypes[selectedCategory]))
            Spacer()
            Text("Lighe down to close the page")
                .bold()
                .foregroundColor(.gray)
        }.padding()
    }
    }
}

struct macOSapp : View{
    var body: some View{
        ZStack{
        ScrollView(.vertical, showsIndicators: false) {
        VStack{
            Text("macOS APP")
                .bold()
                .font(.title)
                .padding(.bottom)
        }.padding()
        }
        VStack{
            Spacer()
            Text("Lighe down to close the page")
                .bold()
                .foregroundColor(.gray)
        }.padding()
    }
    }
}

struct app : View{
    var body: some View{
        ZStack{
        ScrollView(.vertical, showsIndicators: false) {
        VStack{
            Text("Make an APP")
                .bold()
                .font(.title)
                .padding(.bottom)
            
        }.padding()
        }
            VStack{
            Spacer()
            Text("Lighe down to close the page")
                .bold()
                .foregroundColor(.gray)
            }.padding()
        }
    }
}

////////

struct iosapp1 : View{
    
    var body: some View{
        VStack{
            
        }
    }
}

struct macOSapp1 : View{
    var body: some View{
        VStack{
            
        }
    }
}

struct app1 : View{
    var body: some View{
        VStack{
            
        }
    }
}

