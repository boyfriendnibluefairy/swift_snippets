//
//  How to bind state properties to changes in Views
//  and pass state proprties to external Subviews
//
import SwiftUI

struct StatePropertiesDemo: View {
    
    // declare state properties using @State
    @State private var firstName: String = ""
    @State private var isWifiEnabled:Bool = true
    
    var body: some View {
            VStack(alignment: .center) {
                    // bind the state properties with the view using $ sign
                    Toggle(isOn: $isWifiEnabled){
                        Text("Enable WiFi connection")
                            .foregroundColor(Color.black)
                    }.padding()
                    WiFiImageView(isWifiEnabled: $isWifiEnabled)
                    Text(firstName).font(.title)
                    // bind the state properties with the view using $ sign
                    TextField("Enter your first name", text: $firstName)
                        .border(Color.gray)
                        .font(.title)
                        .padding()
            }
    }
}

// Use @Binding keyword to bind state property inside the Subview
struct WiFiImageView: View {
    
    @Binding var isWifiEnabled:Bool
    var body: some View {
        GeometryReader { geometry in
            Image(systemName: isWifiEnabled ? "wifi" : "wifi.exclamationmark").resizable().scaledToFit().foregroundColor(Color.gray)
                .frame(width: geometry.size.width/4)
        }
    }
}

struct StatePropertiesDemo_Previews: PreviewProvider {
    static var previews: some View {
        StatePropertiesDemo()
            .previewDevice("iPhone SE (2nd generation)")
            .previewDisplayName("iPhone SE")
    }
}

