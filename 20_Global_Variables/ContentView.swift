//
//  We start with a codebase that utilizes
//  Observable Object then we gradually
//  transition to Environment Object
//

import SwiftUI

struct ContentView: View {
    
    /* SwiftUI's @StateObject property wrapper is a specialized form of @ObservedObject , having all the same functionality with one important addition: it should be used to create observed objects, rather than just store one that was passed in externally.
     */
    @StateObject var timerData:TimerData = TimerData()
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Timer count = \(timerData.timeCount)")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                Button(action: resetCount){
                    Text("Reset Counter")
                }
                // for observable object
                /*NavigationLink(destination:
                    SecondView(timerData:timerData)){
                    Text("Next Screen")
                }*/
                // for Environment Object
                NavigationLink(destination:
                    SecondView()){
                    Text("Next Screen")
                }
                .padding()
            }
        }
        .environmentObject(timerData)
        
    }
    func resetCount(){
        timerData.resetCount()
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
