import SwiftUI

struct irmation: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("한국 해양환경청 해양쓰레기 정리 캠페인")
                .font(.title)
                .fontWeight(.bold)
                .padding(.bottom, 8)
            
            VStack(alignment: .leading, spacing: 8) {
                Text("목적:")
                    .font(.headline)
                    .fontWeight(.bold)
                
                Text("해양환경청이 주관하는 해양쓰레기 수거와 정리 활동으로, 해양 및 해안에서 발생하는 쓰레기를 청소하여 환경 오염을 줄이는 데 중점을 둡니다.")
                    .font(.body)
                    .foregroundColor(.secondary)
            }
            .padding(.bottom, 16)
            
            VStack(alignment: .leading, spacing: 8) {
                Text("활동 내용:")
                    .font(.headline)
                    .fontWeight(.bold)
                
                Text("해안 청소, 수중 청소 등 다양한 방법으로 해양쓰레기를 수거하고, 이를 통해 사람들에게 환경 보호의 중요성을 전파합니다.")
                    .font(.body)
                    .foregroundColor(.secondary)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        .padding()
    }
}
