//
//  ContentView.swift
//  my_test_app
//
//  Created by rrli  on 2023/6/16.
//

import SwiftUI
import UIKit

struct ContentView: View {
    var body: some View {
        NavigationStack {
            TabView {
                MainView()
                    .badge(1)
                    .tabItem {
                        Label("Home", systemImage: "person.crop.circle.fill")
                    }
                SecondView()
                    .badge(2)
                    .tabItem {
                        Label("Recieved", systemImage: "tray.and.arrow.down.fill")
                    }
                ThirdView()
                    .tabItem {
                        Label("Sent", systemImage: "tray.and.arrow.up.fill")
                    }
            }
        }
    }
}
//s
//extension View {
//    func redacted(reason: RedactionReasons?, roundCorners: Bool=false) -> some View {
//        self.modifier(CustomRedactionView(resaon: reason, roundCorners: roundCorners))
//    }
//}
//
//enum RedactionReasons {
//    case confidencial
//    case shape
//}
//
//public struct CustomRedactionView: ViewModifier {
//    let resaon: RedactionReasons?
//    let roundCorners: Bool
//
//    init(resaon: RedactionReasons?, roundCorners: Bool = false) {
//        self.resaon = resaon
//        self.roundCorners = roundCorners
//    }
//
//    @ViewBuilder
//    public func body(content: Content) -> some View {
//        switch self.resaon {
//        case .confidencial:
//            content.modifier(Confidential(roundedCorners: roundCorners))
//        case .shape:
//            content.modifier(Shape())
//        case .none:
//            content
//        }
//    }
//
//    public struct Confidential: ViewModifier {
//        public let roundedCorners: Bool
//        public func body(content: Content) -> some View {
//            content.overlay(buildOverlay())
//        }
//
//        @ViewBuilder private func buildOverlay() -> some View {
//            let overlay = Rectangle().fill(.blue)
//            if roundedCorners {
//                overlay.clipShape(Capsule())
//            }else {
//                overlay
//            }
//        }
//    }
//
//    public struct Shape: ViewModifier {
//        public func body(content: Content) -> some View {
//            content.overlay(Rectangle().fill(.red))
//        }
//    }
//
//    struct ContentView_Previews: PreviewProvider {
//        static var previews: some View {
//            ContentView()
//        }
//    }
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
