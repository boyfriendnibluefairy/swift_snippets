//
// This code demonstrates how onAppear and onDisappear
// can be used to perform other tasks
//
// This code also shows how to launch async task
// when a view is created
//

import SwiftUI

struct FirstTabView: View {
    
    // variable for saving text
    // when changeTitle() is called
    @State var title:String = "Tab One"
    
    var body: some View {
        Text(title).font(.largeTitle)
            .onAppear(perform:
            {
                print("on appear was called")
            })
            .onDisappear(perform:
                            {
                print("on disappear was called")
            })
            .task(priority: .background){
                // the code inside the task()
                // modifier is called when the
                // the containing View is called
                title = await changeTitle()
            }
    }
    
    func changeTitle() async -> String {
        sleep(3)
        return "ASYNC task is complete"
    }
}

struct FirstTabView_Previews: PreviewProvider {
    static var previews: some View {
        FirstTabView()
    }
}
