//
// This code demonstrates how we wrap
// a property so that it will persist
// at the App level
//

import SwiftUI

struct AppStorageView: View {
    
    // simply use the wrapper below
    // and your data will be saved
    // automatically in the app level
    @AppStorage("appLevelText") var editorText: String = "sample text"
    
    var body: some View {
        TextEditor(text: $editorText)
            .padding(30)
            .font(.largeTitle)
    }
}

struct AppStorageView_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageView()
    }
}
