//
// This code demonstrates how to implement Navigation SplitView in SwiftUI
//

import SwiftUI

struct ContentView: View {
    
    // create an example array and populate it with
    // categories and its icons
    @State private var categories =
    [
        IconCategory(categoryName: "Arrows", images: ["arrow.left",
                                                     "arrow.right",
                                                     "arrow.up",
                                                     "arrow.down",
                                                     "arrow.clockwise",
                                                     "arrow.up.right"]),
        IconCategory(categoryName: "Circles", images: ["circle",
                                                     "circle.fill",
                                                     "person.circle",
                                                     "plus.circle",
                                                     "play.circle",
                                                     "stop.circle"]),
        IconCategory(categoryName: "Squares", images: ["square",
                                                     "play.square",
                                                     "heart.square",
                                                     "star.square",
                                                     "wifi.square",
                                                     "checkmark.square"])
    ]
    
    // create a state variable to store the currently selected item
    @State private var selectedCategory: IconCategory?
    @State private var selectedImage: String?
    // for configuting column visibility
    @State private var columnVisibility = NavigationSplitViewVisibility.all
    
    var body: some View {
        NavigationSplitView(columnVisibility:$columnVisibility) {
            // this is where the side bar column goes
            List(categories, selection: $selectedCategory){ category in
                Text(category.categoryName).tag(category)
            }
        } content: {
            // avoid displaying blank image
            if let selectedCategory {
                List(selectedCategory.images, id:\.self,
                     selection: $selectedImage){ image in
                    HStack{
                        Image(systemName: image)
                        Text(image)
                    }
                }
            }else{
                Text("Select a category")
            }
            
        } detail: {
            if let selectedImage {
                Image(systemName: selectedImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
            } else {
                Text("Select an image")
            }
        }.navigationSplitViewStyle(.balanced)
    }
}

#Preview {
    ContentView()
}
