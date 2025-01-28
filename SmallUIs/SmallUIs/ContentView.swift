import SwiftUI

struct ContentView: View {

    
    var body: some View {
        NavigationStack {
            List{
                NavigationLink(destination: LargeTextListView()) {
                    Text("LargeTextListView")
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
