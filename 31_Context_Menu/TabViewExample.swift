//
// This example demonstrates how to build
// Tab Views in SwiftUI
//

import SwiftUI

struct TabViewExample: View {
    
    // for tracking currently selected tab
    @State private var currentSelection:String = "tab_context"
    
    var body: some View {
        // binding state variable with current tab
        // using tag() modifier
        TabView(selection: $currentSelection) {
            ContextMenuView()
                .tabItem {
                    Image(systemName: "rectangle.grid.1x2")
                    Text("Context Menu Demo")
                }
                .tag("tab_context")
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
