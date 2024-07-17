//import SwiftUI

import SwiftUI

struct RegistrationView: View {
    @State private var nickname: String = UserDefaults.standard.string(forKey: "nickname") ?? ""
    @State private var password: String = UserDefaults.standard.string(forKey: "password") ?? ""
    @State private var rememberMe: Bool = UserDefaults.standard.bool(forKey: "rememberMe")
    @State private var showPassword: Bool = false

    var body: some View {
                    ZStack {
                Color.cyan.opacity(0.1)
                    .ignoresSafeArea()

                VStack(spacing: 20) {
                    Text("로그인")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding()

                    VStack(alignment: .leading, spacing: 10) {
                        Text("닉네임을 입력하세요:")
                            .font(.headline)
                        TextField("3~6자를 입력하세요", text: $nickname)
                            .padding()
                            .background(Color.cyan.opacity(0.2))
                            .cornerRadius(10)
                            .padding(.horizontal, 20)
                    }

                    VStack(alignment: .leading, spacing: 10) {
                        Text("비밀번호를 입력하세요:")
                            .font(.headline)
                        HStack {
                            if showPassword {
                                TextField("비밀번호", text: $password)
                                    .padding()
                                    .background(Color.cyan.opacity(0.2))
                                    .cornerRadius(10)
                            } else {
                                SecureField("비밀번호", text: $password)
                                    .padding()
                                    .background(Color.cyan.opacity(0.2))
                                    .cornerRadius(10)
                            }
                            Button(action: {
                                showPassword.toggle()
                            }) {
                                Image(systemName: showPassword ? "eye.slash.fill" : "eye.fill")
                                    .foregroundColor(.gray)
                            }
                            .padding(.trailing, 10)
                        }
                        .padding(.horizontal, 20)
                    }

                    Toggle("정보 기억", isOn: $rememberMe)
                        .padding(.horizontal, 20)

                    Button(action: {
                        if rememberMe {
                            UserDefaults.standard.set(nickname, forKey: "nickname")
                            UserDefaults.standard.set(password, forKey: "password")
                        } else {
                            UserDefaults.standard.removeObject(forKey: "nickname")
                            UserDefaults.standard.removeObject(forKey: "password")
                        }
                        UserDefaults.standard.set(rememberMe, forKey: "rememberMe")
                    }) {
                        NavigationLink(destination: Hom1View()) {
                            Text("로그인")
                                .foregroundColor(.white)
                                .padding()
                                .background(Color.blue)
                                .cornerRadius(10)
                        }
                    }
                    .padding(.horizontal, 20)

                    Spacer()
                }
            }
 
        }
    
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}

