//
//  log in .swift
//  hakertone
//
//  Created by dgsw51 on 7/17/24.
//
import SwiftUI

struct egistrationView: View {
    @State private var nickname: String = UserDefaults.standard.string(forKey: "nickname") ?? ""
    @State private var email: String = UserDefaults.standard.string(forKey: "email") ?? ""
    @State private var password: String = UserDefaults.standard.string(forKey: "password") ?? ""
    @State private var rememberMe: Bool = UserDefaults.standard.bool(forKey: "rememberMe")
    @State private var isPasswordVisible: Bool = false
    
    var body: some View {
        
            ZStack {
                Color.cyan.opacity(0.1) // 배경색 설정
                    .ignoresSafeArea()
                
                VStack(spacing: 20) {
                    Text("회원가입")
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
                        Text("이메일을 입력하세요:")
                            .font(.headline)
                        TextField("이메일을 입력하세요", text: $email)
                            .padding()
                            .background(Color.cyan.opacity(0.2))
                            .cornerRadius(10)
                            .padding(.horizontal, 20)
                    }
                    
                    VStack(alignment: .leading, spacing: 10) {
                        Text("비밀번호를 입력하세요:")
                            .font(.headline)
                        HStack {
                            if isPasswordVisible {
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
                                isPasswordVisible.toggle()
                            }) {
                                Image(systemName: isPasswordVisible ? "eye.slash.fill" : "eye.fill")
                                    .foregroundColor(.gray)
                            }
                        }
                        .padding(.horizontal, 20)
                    }
                    
                    Toggle("정보 기억", isOn: $rememberMe)
                        .padding(.horizontal, 20)
                    
                    Button(action: {
                        if self.rememberMe {
                            UserDefaults.standard.set(self.nickname, forKey: "nickname")
                            UserDefaults.standard.set(self.email, forKey: "email")
                            UserDefaults.standard.set(self.password, forKey: "password")
                        } else {
                            UserDefaults.standard.removeObject(forKey: "nickname")
                            UserDefaults.standard.removeObject(forKey: "email")
                            UserDefaults.standard.removeObject(forKey: "password")
                        }
                        UserDefaults.standard.set(self.rememberMe, forKey: "rememberMe")
                    }) {
                        NavigationLink(destination: Hom1View()){
                            Text("회원가입")
                                .foregroundColor(.white)
                                .padding()
                                .background(Color.blue)
                                .cornerRadius(10)
                        }
                        .padding(.horizontal, 20)
                        
                        Spacer()
                    }
                }
                .navigationBarTitle("회원가입", displayMode: .inline)
            }
        }
    }
    
    struct egistrationView_Previews: PreviewProvider {
        static var previews: some View {
            egistrationView()
        }
    }

