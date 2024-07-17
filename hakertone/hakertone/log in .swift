//
//  log in .swift
//  같은 해커톤
//
//  Created by dgsw51 on 7/17/24.
//

import Foundation
import SwiftUI

struct egistrationView: View {
    @State private var nickname: String = UserDefaults.standard.string(forKey: "nickname") ?? ""
    @State private var password: String = UserDefaults.standard.string(forKey: "password") ?? ""
    @State private var rememberMe: Bool = UserDefaults.standard.bool(forKey: "rememberMe")
    @State private var paa: Bool = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.cyan.opacity(0.1) // 배경색 설정
                    .ignoresSafeArea()
                
                VStack(spacing: 20) {
                    Text("로그인")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding()
                    
                    VStack(alignment: .leading, spacing: 10) {z
                        Text("닉네임을 입력하세요:")
                            .font(.headline)
                        TextField("3~6자를 입력하세요", text: $nickname)
                        frame(height:100)
                            .background(Color.cyan.opacity(0.2))
                            .cornerRadius(10)
                            .padding(.horizontal, 20)
                    }
                    
                    VStack(alignment: .leading, spacing: 10) {
                        Text("비밀번호를 입력하세요:")
                            .font(.headline)
                        HStack {
                            if paa {
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
                                paa.toggle()
                            }) {
                                Image(systemName: paa ? "eye.slash.fill" : "eye.fill")
                                    .foregroundColor(.gray)
                            }
                        }
                       
                    }
                    
                    Toggle("정보 기억", isOn: $rememberMe)
                        .padding(.horizontal, 20)
                    
                    Button(action: {
                        if self.rememberMe {
                            UserDefaults.standard.set(self.nickname, forKey: "nickname")
                            UserDefaults.standard.set(self.password, forKey: "password")
                        } else {
                            UserDefaults.standard.removeObject(forKey: "nickname")
                            UserDefaults.standard.removeObject(forKey: "password")
                        }
                        UserDefaults.standard.set(self.rememberMe, forKey: "rememberMe")
                    }) {
                        NavigationLink(destination: homeView()){
                            
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
            .navigationBarTitle("회원가입", displayMode: .inline)
        }
    }
}

struct egistrationView_Previews: PreviewProvider {
    static var previews: some View {
        egistrationView()
    }
}
