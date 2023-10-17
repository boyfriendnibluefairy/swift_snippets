//
// This code demonstrates how we wrap
// a property so that it will persist
// within a scene
//

import SwiftUI

struct SceneStorageView: View {
    
    // simply use the wrapper below and
    // your data will be saved automatically
    // in the scene level
    @SceneStorage("savedText") private var editorText: String = ""
    
    var body: some View {
        TextEditor(text: $editorText)
            .padding(30)
            .font(.largeTitle)
    }
}

struct SceneStorageView_Previews: PreviewProvider {
    static var previews: some View {
        SceneStorageView()
    }
}
