import SwiftUI

struct Home1View: View {
    var body: some View {
//        NavigationView {
            ZStack {
                Image("Image 2")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                
                Color.blue
                    .opacity(0.1)
                    .ignoresSafeArea()
                
                VStack(spacing: 20) {
                    HStack {
                        NavigationLink(destination: Home1View()) {
                            Image("Image")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50, height: 50)
                                .cornerRadius(25)
                                .shadow(radius: 30)
                        }
                        .padding([.leading, .top], 16)
                        
                        Spacer()
                        
                        NavigationLink(destination: ContentView().navigationBarHidden(true)) {
                            Text("로그아웃")
                                .padding()
                                .background(Color.white.opacity(0.5))
                                .font(.system(size: 20))
                                .fontWeight(.bold)
                                .cornerRadius(10)
                        }
                        .padding([.trailing, .top], 16)
                    }
                    
                    HStack(spacing: 16) {
                        NavigationLink(destination: irmation()) {
                            Text("캠페인")
                                .frame(maxWidth: .infinity, minHeight: 50)
                                .background(Color.white.opacity(0.5))
                                .font(.system(size: 20))
                                .fontWeight(.bold)
                                .cornerRadius(10)
                        }
                        
                        NavigationLink(destination: HoView()) {
                            Text("신고")
                                .frame(maxWidth: .infinity, minHeight: 50)
                                .background(Color.cyan.opacity(0.5))
                                .font(.system(size: 20))
                                .fontWeight(.bold)
                                .cornerRadius(10)
                        }
                    }
                    .padding([.leading, .trailing], 16)
                    
                    VStack(spacing: 20) {
                        Text("바다오염 내용")
                            .fontWeight(.bold)
                        
                        Link(destination: URL(string: "https://www.greenpeace.org/korea/update/15617/blog-plastic-so-much-plastic-in-the-ocean/")!) {
                            Image("image3")
                                .resizable()
                                .scaledToFill()
                                .frame(maxWidth: .infinity)
                                .frame(height: 200)
                                .cornerRadius(15)
                        }
                        .buttonStyle(PlainButtonStyle()) // Ensure link style does not override image style
                        
                        Text("바다 오염")
                            .fontWeight(.bold)
                        
                        Link(destination: URL(string: "https://blog.naver.com/keepblog/222110345121")!) {
                            Image("image4")
                                .resizable()
                                .scaledToFill()
                                .frame(maxWidth: .infinity)
                                .frame(height: 200)
                                .cornerRadius(15)
                        }
                        .buttonStyle(PlainButtonStyle()) // Ensure link style does not override image style
                    }
                    .padding([.top, .horizontal], 16)
                    
                    Spacer()
                }
            }
            .navigationBarHidden(true)
        }
//    }
}

struct Home1View_Previews: PreviewProvider {
    static var previews: some View {
        Home1View()
    }
}

