import SwiftUI

struct Hom1View: View {
    @State private var isRefreshing = false
    
    var body: some View {
        ZStack {
            Color.blue
                .opacity(0.4)
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                HStack {
                    Button(action: {
                        // Perform refresh action here
                        self.isRefreshing.toggle()
                    }) {
                        Image("Image")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                            .clipShape(Circle())
                            .shadow(radius: 5)
                    }
                    .padding([.leading, .top], 16)
                    
                    Spacer()
                    
                        NavigationLink(destination: CotentView()){
                            Text("로그아웃")
                                .padding()
                                .background(Color.white.opacity(0.5))
                                .font(.system(size: 20))
                                .fontWeight(.bold)
                                .cornerRadius(10)
                                .shadow(radius: 5)
                        }
                        .padding([.trailing, .top], 16)
                    }
                    
                    HStack(spacing: 16) {
                        NavigationLink(destination: irmation()) {
                            Text("캠페인")
                                .frame(width: 100, height: 50)
                                .background(Color.white.opacity(0.5))
                                .font(.system(size: 20))
                                .fontWeight(.bold)
                                .cornerRadius(10)
                        }
                        
                        NavigationLink(destination: HoView()) {
                            Text("신고")
                                .frame(width: 100, height: 50)
                                .background(Color.cyan.opacity(0.5))
                                .font(.system(size: 20))
                                .fontWeight(.bold)
                                .cornerRadius(10)
                        }
                        
                        NavigationLink(destination: Hom1View()) {
                            Text("시각화")
                                .frame(width: 100, height: 50)
                                .background(Color.cyan.opacity(0.5))
                                .font(.system(size: 20))
                                .fontWeight(.bold)
                                .cornerRadius(10)
                        }
                    }
                    .padding(.top, 16)
                    
                    VStack(spacing: 20) {
                        Text("바다오염 내용")
                            .fontWeight(.bold)
                            .font(.system(size: 24))
                            .foregroundColor(.white)
                        
                        Link(destination: URL(string: "https://www.google.com")!) {
                            Image("image3")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(maxWidth: .infinity)
                                .frame(height: 200)
                                .clipped()
                                .cornerRadius(15)
                                .overlay(RoundedRectangle(cornerRadius: 15)
                                    .stroke(Color.white, lineWidth: 2))
                        }
                        
                        Text("바다 오염")
                            .fontWeight(.bold)
                            .font(.system(size: 24))
                            .foregroundColor(.white)
                        
                        Link(destination: URL(string: "https://blog.naver.com/keepblog/222110345121")!) {
                            Image("image4")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(maxWidth: .infinity)
                                .frame(height: 200)
                                .clipped()
                                .cornerRadius(15)
                                .overlay(RoundedRectangle(cornerRadius: 15)
                                    .stroke(Color.white, lineWidth: 2))
                        }
                    }
                    .padding(.horizontal, 16)
                    
                    Spacer()
                }
            }
            .navigationBarHidden(true)
        }
    }
    
    
    struct Hom1View_Previews: PreviewProvider {
        static var previews: some View {
            Hom1View()
        }
    }
    

