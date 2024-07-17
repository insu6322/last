import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Image("Image 1")
                    .resizable()
                    .ignoresSafeArea()
                Image("Image")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .cornerRadius(6)
                    .shadow(radius: 13)
                
                
                VStack(spacing: 40) {
                    Spacer().frame(height: 120)
                    
                    VStack {
                        Text("CIW")
                            .font(.system(size: 49))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        
                        Text("CIW의 일원이 되고 싶나요?")
                            .font(.system(size: 13))
                            .foregroundColor(.white)
                    }
                    
                    Spacer()
                    
                    HStack(spacing: 10) {
                        NavigationLink(destination: RegistrationView()) {
                            Text("로그인")
                                .frame(maxWidth: .infinity)
                                .frame(height: 50)
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .cornerRadius(5)
                                .shadow(radius: 12)
                        }
                        
                        NavigationLink(destination: egistrationView()) {
                            Text("회원가입")
                                .frame(maxWidth: .infinity)
                                .frame(height: 50)
                                .foregroundColor(.white)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 5)
                                        .stroke(Color.white, lineWidth: 0.6)
                                )
                                .shadow(radius: 12)
                        }
                    }
                    
                    HStack {
                        Text("로그인 시")
                        Text("개인정보 취급방침")
                            .underline()
                        Text("과")
                        NavigationLink(destination: RegistrationView()){
                            Text("서비스 운영정책")
                                .underline()
                        }
                        Text("에 동의하는 것으로 간주합니다.")
                    }
                    .foregroundColor(.white)
                    .font(.system(size: 9))
                    .bold()
                    
                    Spacer().frame(height: 43)
                }
                .padding()
            }
            .navigationBarHidden(true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

