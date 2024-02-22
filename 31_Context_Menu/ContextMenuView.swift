//
// This example demonstrates how to
// create context menu in SwiftUI
//

import SwiftUI

struct ContextMenuView: View {
    
    @State private var textForeground:Color = Color.black
    @State private var textBackground:Color = Color.white
    
    var body: some View {
        Text("When it's snowing in Saint Petersburg, hindi ka ba nilalamig?")
            .padding()
            .font(.largeTitle)
            .foregroundColor(textForeground)
            .background(textBackground)
            .contextMenu() {      // this is the context menu
                Button(action: {
                    self.textForeground = .black
                    self.textBackground = .white
                }){
                    Text("Normal Colors")
                    Image(systemName: "paintbrush")
                }
                Button(action: {
                    self.textForeground = .white
                    self.textBackground = .black
                }){
                    Text("Dark Mode")
                    Image(systemName: "moon.circle")
                }
                Button(action: {
                    self.textForeground = .white
                    self.textBackground = .red
                }){
                    Text("Bloody")
                    Image(systemName: "drop.circle")
                }
                Button(action: {
                    self.textForeground = .white
                    self.textBackground = .blue
                }){
                    Text("Frozen")
                    Image(systemName: "fan.oscillation")
                }
            }
    }
}

#Preview {
    ContextMenuView()
}
