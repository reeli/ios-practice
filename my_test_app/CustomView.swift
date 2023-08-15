//
//  CustomView.swift
//  my_test_app
//
//  Created by rrli  on 2023/8/15.
//

import SwiftUI

struct CustomView: View {
    let onButtonTapped: () -> Void
    let onTextTapped: () -> Void
    
    var body: some View {
        
        VStack {
            Button("Tap me!") {
                onButtonTapped() // 调用第一个回调
            }
            Text("Tap this text!")
                .onTapGesture {
                    onTextTapped() // 调用第二个回调
                }
        }
    }
}
//
//struct CustomView_Previews: PreviewProvider {
//    static var previews: some View {
//        CustomView()
//    }
//}
