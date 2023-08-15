//
//  SecondView.swift
//  my_test_app
//
//  Created by rrli  on 2023/8/15.
//

import SwiftUI

struct SecondView: View {
    @State var isPresented: Bool = false
    @State var isPresented2: Bool = false
    
    var body: some View {
        NavigationStack {
            NavigationLink("Go to Third View") {
                ThirdView()
            }
            Button("Sheet"){
                isPresented.toggle()
            }
            .sheet(isPresented: $isPresented) {
                Color.clear
                    .background(Color.mint.opacity(0.5))
//                    .edgesIgnoringSafeArea(.all)
                Text("This is a sheet")
            }
            
            Button("Full Cover"){
                isPresented2.toggle()
            }
            .fullScreenCover(isPresented: $isPresented2) {
                Color.clear
                    .background(Color.black.opacity(0.5))
                    .edgesIgnoringSafeArea(.all)
                
                FullScreenView(isPresented: $isPresented2)
            }
            Text("Second View Content")
                .navigationTitle("Home View")
                .navigationBarItems(trailing:  Button("Save") {
                    // 处理保存操作
                    print("Save")
                })
        }
    }
}

struct FullScreenView: View {
    @Binding var isPresented:Bool
    var body: some View {
        Text("This is full screen cover")
        Button("Close") {
            isPresented.toggle()
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
