//
// This example demonstrates how to build
// Tab Views in SwiftUI
//

import SwiftUI

struct TabViewExample: View {
    
    // for tracking currently selected tab
    @State private var currentSelection:String = "tab_home"
    
    var body: some View {
        // binding state variable with current tab
        // using tag() modifier
        TabView(selection: $currentSelection) {
            Text("Home")
                .tabItem {
                    Image(systemName: "house.circle")
                    Text("Home")
                }
                .tag("tab_home")
            Text("Profile View")
                .tabItem {
                    Image(systemName: "person.crop.circle")
                    Text("Profile")
                }
                .tag("tab_profile")
            Text("Account Settings")
                .tabItem {
                    Image(systemName: "gear.circle")
                    Text("Settings")
                }
                .tag("tab_settings")
        }
        .font(.largeTitle)
    }
}

#Preview {
    TabViewExample()
}
