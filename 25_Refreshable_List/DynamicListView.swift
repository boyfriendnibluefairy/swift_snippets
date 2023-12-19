//
// This code demonstrates how to create
// lists in SwiftUI
//

import SwiftUI

// for dynamic list
struct ToDoElement: Identifiable {
    var id = UUID()
    var task:String
    var imageName:String
}

struct DynamicListView: View {
    
    @State var listData: [ToDoElement] =
    [
        ToDoElement(task: "Take care of trash", imageName: "trash.circle.fill"),
        ToDoElement(task: "Fetch kids from school", imageName: "person.2.fill"),
        ToDoElement(task: "Refuel the car", imageName: "car.fill")
    ]
    
    @State private var toggleStatus = true
    
    var body: some View {
        
        // Use the code block below for combination of static and dynamic list of items
        List{
            Section(header: Text("Settings")) {
                Toggle(isOn: $toggleStatus){ Text("Allow notification to send updates")}
            }
            
            Section(header: Text("To Do Items")) {
                ForEach(listData){ element in
                    HStack {
                        Image(systemName: element.imageName)
                        Text(element.task)
                    }
                }
            }
        }
        .refreshable{
            listData =
            [
                ToDoElement(task: "Order from foodpanda", imageName: "dollarsign.circle.fill"),
                ToDoElement(task: "Deposit bitcoin", imageName: "phone.fill"),
                ToDoElement(task: "Reserve Grab taxi", imageName: "person.2.fill")
            ]
        }
        
        // Use the code block below if the items in the lists are static and
        // predetermined
        /*List(listData) { item in
            HStack {
                Image(systemName: item.imageName)
                Text(item.task)
            }
        }*/
        
        /*List {
            
            /*
            Text("Buy a lot")
            Text("Design the house")
            Text("Contact a foreman")
            Text("Buy materials")
            Text("Post dormitory in google earth")
            Text("Buy a car")
             */
            
            HStack{
                Image(systemName: "trash.circle.fill")
                Text("Take out the trash")
            }
            .listRowSeparator(.hidden)
            HStack{
                Image(systemName: "person.2.fill")
                Text("Pick up the kids")
            }
            .listRowSeparatorTint(.red)
            HStack{
                Image(systemName: "car.fill")
                Text("Refuel the car")
            }
            HStack{
                Image(systemName: "person.2.fill")
                Text("Pick up the kids")
            }
            .listRowBackground(Image("test.png"))
        }
         */
    }
}

struct DynamicListView_Previews: PreviewProvider {
    static var previews: some View {
        DynamicListView()
    }
}
