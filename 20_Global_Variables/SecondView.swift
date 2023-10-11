//
//  2nd swiftUI view is created to demonstrate that this view can also access the same observable object from other views
//

import SwiftUI

struct SecondView: View {
    
    /* This second screen has its own instance of timerData object, the value will come from ContentView() */
    // for observable object
    /* @StateObject var timerData: TimerData */
    
    // for environment object
    @EnvironmentObject var timerData: TimerData
    
    var body: some View {
        VStack{
            Text("Secondary View")
                .font(.largeTitle)
            Text("Timer Count = \(timerData.timeCount)")
                .font(.headline)
        }
        .padding()
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        /* timerData value will come from ContentView() */
        // for observable object
        /* SecondView(timerData: TimerData()) */
        
        // for environment object
        SecondView().environmentObject(TimerData())
    }
}
