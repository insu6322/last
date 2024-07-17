//
//  OK.swift
//  hakertone
//
//  Created by dgsw51 on 7/17/24.
//

import SwiftUI

struct ConfirmationTag: View {
    @State private var isConfirmationVisible = false
    
    var body: some View {
//        NavigationView {
            VStack {
                NavigationLink(destination:Hom1View()){
                    Text("재출툄")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                    .navigationBarHidden(true)     }
            }
//            }
        }
    }


struct ConfirmationTag_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmationTag()
    }
}


var previews: some View {
    ConfirmationTag()
    }

