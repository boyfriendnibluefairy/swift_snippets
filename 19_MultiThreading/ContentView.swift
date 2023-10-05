//
//  This code demonstrates how to use async let and await keywords to perform multithreading
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {

            Button(action: {
                Task {
                    await connectToDrone()
                }
            }) {
                Text("Connect to Drone")
            }
    }
    
    func connectToDrone() async {
        print("START:  \(Date())")
        async let initializationTime = initializeDrone()
        print("after let async call: \(Date())")
        // Other code to run concurrently
        print("result = \(await initializationTime)")
        print("END:    \(Date())\n")
        }
    
    func initializeDrone() async -> Date {
        sleep(6)
        return Date()
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
