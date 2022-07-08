import SwiftUI

struct iosapp : View{
    
    var body: some View{
        ZStack{
        ScrollView(.vertical, showsIndicators: false) {
        VStack{
            Text("iOS APP")
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

