//
//  Environment Objects (EO) are like global variables
//  in C where mulitple Views and Subviews can have access.
//  This example shows how to publish environment objects and how views and subviews can subscribe to the updates of these environment variables.
//
import SwiftUI
import Foundation

// EOs are declared the same way as observable objects.
// Let's create a struct or class that will hold our
// variables. The instance of struct or class will be our
// Environment Object.
class DroneSetting: ObservableObject {
    // @Published property wrapper sends updates to all
    // subscribers each time the wrapped property
    // value changes
    @Published var altitude = 0.0
}

// Let's create the parent class
struct EnvironmentObjectDemo : View {
    // STEP 1 in creating Environment Objects.
    // create an instance of the class holding the EOs
    let droneSetting = DroneSetting()
    
    var body : some View {
        VStack {
            AltitudeDisplayView()
            AltitudeControlView()
            // STEP 2 in creating Environment Objects.
            // insert the EO into the View hierarchy
            // or in flutter term "Widget Tree"
            // using the .environmentObject() method
        }
        .environmentObject(droneSetting)
    }
    
}

// Subviews that will subscribe to our EOs:
struct AltitudeControlView : View {
    // Subviews simply reference the environment object by simply
    // by using the @EnvironmentObject property wrapper
    @EnvironmentObject var droneSetting : DroneSetting
    var body : some View {
        Slider(value: $droneSetting.altitude, in: 0...1000)
    }
}
struct AltitudeDisplayView : View {
    @EnvironmentObject var droneSetting : DroneSetting
    var body : some View {
        Text("Altitude = \(droneSetting.altitude) m").font(.title)
    }
}

struct EnvironmentObjectDemo_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObjectDemo()
            .previewDevice("iPhone SE (2nd generation)")
            .previewDisplayName("iPhone SE")
    }
}

