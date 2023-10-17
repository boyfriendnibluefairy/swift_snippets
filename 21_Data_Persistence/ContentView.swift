//
// @SceneStorage wraps properties so they will persist.
// However, such data are only accessible for each scene.
// In order for persistent data to be accessed by all
// scenes, we use @AppStorage wrapper.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            SceneStorageView()
                .tabItem {
                    Image(systemName: "circle.fill")
                    Text("SceneStorage Scene")
                }
            AppStorageView()
                .tabItem {
                    Image(systemName: "square.fill")
                    Text("AppStorage Scene")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
