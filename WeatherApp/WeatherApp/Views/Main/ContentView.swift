

import SwiftUI

struct ContentView: View {
    var body: some View {

        HomeView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



/*
struct ContentView: View {
    var body: some View {
        NavigationView {
            // Ana görünümünüzü burada tanımlayabilirsiniz
            VStack {
                Text("Ana Ekran")
                    .font(.largeTitle)
                    .padding()
                NavigationLink("Detay Sayfa", destination: DetailView())
            }
            .navigationTitle("SwiftUI Gezinme")
        }
    }
}

struct DetailView: View {
    var body: some View {
        VStack {
            Text("Detay Ekran")
                .font(.largeTitle)
                .padding()
        }
        .navigationTitle("Detay")
    }
}

struct NavigationViewExampleApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
} */
