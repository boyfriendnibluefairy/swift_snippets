//
// This code demonstrates View as properties
// and Custom Modifier
//

import SwiftUI

// Custom Modifier
struct TemplateForTitle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .background(Color.white)
            .border(Color.gray, width:0.3)
            .shadow(color: Color.black, radius: 6, x:0, y:3)
    }
}

struct ContentView: View {
    
    // View as properties
    let bookStack = HStack {
        Text("Book Title 1")
            .font(.headline)
            .foregroundColor(.red)
        Image(systemName: "book.fill")
            //.resizable()
            //.aspectRatio(contentMode: .fill)
    }
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
                .font(.largeTitle)
                .foregroundColor(.green)
                .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
            bookStack // View as properties
            Text("Awesome")
                .font(.custom("Copperplate", size:60))
            Text("Modifier order is important")
                .padding()
                .border(Color.black)
            Text("Custom Modifier")
                .modifier(TemplateForTitle())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewDevice("iPhone SE (2nd generation)")
            .previewDisplayName("iPhone SE")
            ContentView()
                .preferredColorScheme(.dark)
                .previewDevice("iPhone 13")
            .previewDisplayName("iPhone 13")
        }
    }
}
