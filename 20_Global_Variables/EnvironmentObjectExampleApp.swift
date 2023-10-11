//
//  SwiftUI observables are objects that are passed by
//  reference so that different views can access state
//  properties. On the other hand, environment objects
//  are readily accessible to all views without the
//  concept of pass by reference
//

import SwiftUI

@main
struct EnvironmentObjectExampleApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
