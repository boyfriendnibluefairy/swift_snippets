//
// Use onChange() modifier to monitor state variable
// changes and use it to perform corresponding actions
//

import SwiftUI

struct SecondTabView: View {
    @State private var text:String = ""
    var body: some View {
        TextEditor(text: $text)
            .padding()
            .font(.largeTitle)
            .onChange(of: text, perform:
            { value in
                print("on change is called")
            })
    }
}

struct SecondTabView_Previews: PreviewProvider {
    static var previews: some View {
        SecondTabView()
    }
}
