
import SwiftUI

struct HoView: View {
    @State private var nickname: String = UserDefaults.standard.string(forKey: "nickname") ?? ""
    @State private var content: String = String()
    @FocusState private var titleFocus
    @FocusState private var contentFocus
    
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 20) {
                Text("재목을 입력하세요")
                    .font(.headline)
                    .padding([.top, .leading], 20)
                
                ZStack(alignment: .leading) {
                    if !titleFocus && nickname.isEmpty {
                        Text("3~6자리를 입력해주세요")
                    }
                    
                    TextEditor(text: $nickname)
                        .frame(height: 40)
                        .scrollContentBackground(.hidden)
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                        .focused($titleFocus)
                }
                .padding(.horizontal, 20)
                
                Text("내용을 입력하세요")
                    .font(.headline)
                    .padding([.top, .leading], 20)
                
                TextEditor(text: $content)
                    .frame(height: 200)
                    .scrollContentBackground(.hidden)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
                    .padding(.horizontal, 20)
                    .focused($contentFocus)
                
                Spacer()
                
                NavigationLink(destination: ConfirmationTag()) {
                    Text("재출하기")
                        .frame(width: 200, height: 50) // Adjusted button size
                        .background(Color.gray.opacity(0.5))
                        .foregroundColor(.white)
                        .font(.headline)
                        .cornerRadius(10)
                        .padding(.vertical, 10) // Added vertical padding
                }
                .background(Color.white.opacity(0.8))
                .cornerRadius(10)
                .padding(.horizontal, 20)
                .frame(maxWidth: .infinity) // Ensure the button spans the width of its container
            }
            .background(
                Image("Image 1")
                    .resizable()
                    .ignoresSafeArea()
            )
        }
    }
    
    struct HoView_Previews: PreviewProvider {
        static var previews: some View {
            HoView()
        }
    }
}

