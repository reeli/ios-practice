//
//  ThirdView.swift
//  my_test_app
//
//  Created by rrli  on 2023/8/15.
//

import SwiftUI

struct ThirdView: View {
    @State var isScaled: Bool = false
    @State private var showText = true
    
    var body: some View {
        NavigationStack {
            Image(systemName: "globe")
                .resizable()
                .frame(width: 50, height: 50)
                .foregroundColor(Color.mint)
    //            .aspectRatio(contentMode: .fit)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.black, lineWidth: 1)
        
                )
            Button("Toggle Text") {
                           showText.toggle()
                       }
                       
            VStack {
                Text("Hello, SwiftUI!")
                    .font(.largeTitle)
                
                Text("Hello, World!")
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.blue, lineWidth: 2)
                    )
            }
            .isHidden(!showText)
            Text("Third View")
                .foregroundColor(Color.mint)
                .padding()
                .background(Color.black)
                .cornerRadius(10)
                .scaleEffect(isScaled ? 2 : 1)
                .onAppear(){
    //                isScaled.toggle()
                }
            Button("Change Opacity") {
                withAnimation(.easeOut) {
                    isScaled.toggle()
                }
            }
            CustomView() {
                print("Button tapped")
            } onTextTapped: {
                print("Text tapped")
            }
        }   
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
    }
}
