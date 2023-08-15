//
//  MainView.swift
//  my_test_app
//
//  Created by rrli  on 2023/8/15.
//

import SwiftUI

struct MainView: View {
    @ObservedObject var user = User()
    @State var isAlertPresented: Bool = false
    
    var body: some View {
        VStack {
            NavigationLink("Work Folder") {
                SecondView()
            }
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello \(user.name), you're \(user.age) years old!")
                .alert(isPresented: $isAlertPresented) {
                    Alert(title: Text("Alert"), message: Text("This is an alert"), dismissButton: .default(Text("OK")))
                }
            Text("123-456-789")
                .redacted(reason: .placeholder)
                .onTapGesture {
                    print("tap Gesture")
                    isAlertPresented = true
                }
            Button(action: {
                user.name = "nily"
            }) {
                Text("change Username")
            }
            Button(action: {
                self.user.age = self.user.age + 1
            }) {
                Text("change age")
            }
        }
        .onChange(of: user.age) { newValue in
            print("value is newValue \(newValue)")
        }
        .padding()
        .onAppear{
            
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
