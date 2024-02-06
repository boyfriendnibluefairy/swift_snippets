//
// This code demonstrates how to
// use event listeners (in SwiftUI they are called
// Event Modifiers) to update user interface and
// make the app more responsive.
//

import SwiftUI

@main
struct EventListenerExampleApp: App {
    
    // add the ff line to monitor if there are changes on current scene
    // which is the ContentView()
    @Environment(\.scenePhase) private var scenePhase
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .onChange(of: scenePhase, perform:{ phase in
            switch phase {
            case .active:
                print("scene is active")
            case .inactive:
                print("scene is inactive")
            case .background:
                print("scene is in background")
            default:
                print("unknown scene phase")
            }
        })
    }
}
