import SwiftUI

struct HomeView: View {
    @Environment(\.horizontalSizeClass) var horizontalClass
    var body: some View {
        ScrollView{
        VStack{
            Text("CoolApp")
                .bold()
                .font(.largeTitle)
            Text("make some cool app")
                .bold()
                .padding(.bottom)
            //Top title
            if horizontalClass == .regular{
                VStack{
                HStack{
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
                
                Button{
                    
                }label: {
                    HStack {
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
                    first()
                    
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
                second()
            }
        }.padding()
        }
    }
}
