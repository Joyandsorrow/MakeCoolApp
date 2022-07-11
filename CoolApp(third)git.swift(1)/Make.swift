import SwiftUI

struct making: View {
    @State var scale: CGFloat = 1
    @State var add: CGFloat = 0
    @State var Switch = false
    @Binding var openTool: Bool
    
    @Binding var Makeios : [makeaniosapp]
    @Binding var tap: Bool
    @Environment(\.horizontalSizeClass) var horizontalClass
    @State var nook = false
    
    //@Binding var istaptext : Bool
    @Binding var chosenew: Bool
    @State private var atitle = [
        TheText(title: "Hello,world")
    ]
    var body: some View {
        VStack{
            HStack{
                Button{
                    tap.toggle()
                }label: {
            Image(systemName: "multiply")
                        .font(.system(size: 20, weight: .heavy))
                        .padding(10)
                        .background()
                        .cornerRadius(10)
                        .shadow(radius: 5)
                }
                Button{
                    openTool.toggle()
                }label: {
                    Image(systemName: "hammer.fill")
                        .font(.system(size: 15, weight: .heavy))
                        .padding(8)
                        .background()
                        .cornerRadius(10)
                        .shadow(radius: 5)
                }
                Spacer()
                Button{
                    Switch.toggle()
                }label: {
                    HStack{
                        //Image(systemName: "hammer.fill")
                        if Switch{
                            Text("Layout")
                                .font(.system(size: 20, weight: .heavy))
                                .padding(10)
                                .background()
                                .cornerRadius(10)
                                .shadow(radius: 5)
                        }
                        if Switch == false{
                        Text("Tool")
                            .font(.system(size: 20, weight: .heavy))
                            .padding(10)
                            .background()
                            .cornerRadius(10)
                            .shadow(radius: 5)
                        }
                    }
                }
                Button{
                    
                }label: {
                    Image(systemName: "gearshape.fill")
                        .font(.system(size: 20, weight: .heavy))
                        .padding(10)
                        .background()
                        .cornerRadius(10)
                        .shadow(radius: 5)
                }
            }
            .zIndex(1)
            if horizontalClass == .regular{
                ZStack{
                    VStack{
                        Spacer()
                        ZStack{
                            VStack{
                                
                                RoundedRectangle(cornerRadius: 30, style: .continuous)
                                    .frame(width: 300, height: 620)
                                    .shadow(radius: 5)
                                    .foregroundColor(.white)
                            }
                            
                            
                            make3(atitle: $atitle, Switch: $Switch)
                                .frame(width: 300, height: 620)
                                .clipShape(RoundedRectangle(cornerRadius: 30 , style: .continuous))
                        }
                        
                        .zIndex(0)
                        .scaleEffect(scale + add)
                        .gesture(
                            MagnificationGesture()
                                .onChanged { amount in
                                    self.add = amount - 1
                                }
                                .onEnded { amount in
                                    self.scale += self.add
                                    self.add = 0
                                }
                        )
                        Spacer()
                    }
                    
                    
                    HStack{
                    VStack{
                        
                        
                        
                        if openTool == false{
                        if Switch {
                            VStack{
                                Spacer()
                                ZStack{
                                    RoundedRectangle(cornerRadius: 30, style: .continuous)
                                        .frame(width: 350)
                                        .foregroundColor(.white)
                                        .cornerRadius(10)
                                    //.opacity(0.05)
                                        .shadow(radius: 5)
                                    make2(openTool: $openTool)
                                        .frame(width: 350)
                                        .clipShape(RoundedRectangle(cornerRadius: 30 , style: .continuous))
                                }
                            }
                        }
                        if Switch == false{
                            VStack{
                                Spacer()
                                ZStack{
                                    RoundedRectangle(cornerRadius: 30, style: .continuous)
                                        .frame(width: 350)
                                        .foregroundColor(.white)
                                        .cornerRadius(10)
                                    //.opacity(0.05)
                                        .shadow(radius: 5)
                                    make1(chosenew: $chosenew, atitle: $atitle, openTool: $openTool)
                                        .frame(width: 350)
                                        .clipShape(RoundedRectangle(cornerRadius: 30 , style: .continuous))
                                }
                            }
                        }
                        //.clipShape(RoundedRectangle(cornerRadius: 30 , style: .continuous))
                    }
                    }
                        Spacer()
                    }
                    
                }
            }else{
                ZStack{
                VStack{
                Spacer()
                ZStack{
                    VStack{
                    
                    RoundedRectangle(cornerRadius: 30, style: .continuous)
                        .frame(width: 300, height: 620)
                        .shadow(radius: 5)
                        .foregroundColor(.white)
                    }
                    
                    
                make3(atitle: $atitle, Switch: $Switch)
                        .frame(width: 300, height: 620)
                    .clipShape(RoundedRectangle(cornerRadius: 30 , style: .continuous))
                    }
                
                .zIndex(0)
                .scaleEffect(scale + add)
                        .gesture(
                            MagnificationGesture()
                                .onChanged { amount in
                                    self.add = amount - 1
                                }
                                .onEnded { amount in
                                    self.scale += self.add
                                    self.add = 0
                                }
                        )
                    Spacer()
                }
            
                
                
                    VStack{
                        
                        
                            
                        if openTool == false{
                            if Switch {
                                VStack{
                                    Spacer()
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 30, style: .continuous)
                                            .frame(height: 200)
                                            .foregroundColor(.white)
                                        .opacity(0.8)
                                            .shadow(radius: 5)
                                        make2(openTool: $openTool)
                                            .frame(height: 200)
                                            .clipShape(RoundedRectangle(cornerRadius: 30 , style: .continuous))
                                    }
                                }
                            }
                            if Switch == false{
                                VStack{
                                    Spacer()
                                ZStack{
                                    RoundedRectangle(cornerRadius: 30, style: .continuous)
                                        .frame(height: 200)
                                        .foregroundColor(.white)
                                    .opacity(0.8)
                                        .shadow(radius: 5)
                            make1(chosenew: $chosenew, atitle: $atitle, openTool: $openTool)
                                .frame(height: 200)
                                .clipShape(RoundedRectangle(cornerRadius: 30 , style: .continuous))
                                    }
                                }
                            }
                            //.clipShape(RoundedRectangle(cornerRadius: 30 , style: .continuous))
                        
                    
                }
                    }//
                }
            }/////////
            
        }.padding()
    }
}
