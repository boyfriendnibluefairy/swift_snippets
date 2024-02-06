//
// This code demonstrate how to
// use .onAppear(), .onDisapper() and
// .onChange() event modifiers
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            FirstTabView()
                .tabItem{
                    Image(systemName: "01.circle")
                    Text("First Tab")
                }
            SecondTabView()
                .tabItem{
                    Image(systemName: "02.circle")
                    Text("Second Tab")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
