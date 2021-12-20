//
//  ContentView.swift
//  ol-008-10-my
//
//  Created by Vahtee Boo on 20.12.2021.
//

import SwiftUI



struct ContentView: View {
    
    private let headers = ["Title One", "Title Two", "Title Three", "Title Four", "Title Five"]
    @State private var index = 0
    
    var body: some View {
        NavigationView {
            VStack {
            Image(systemName: "plus.rectangle.on.folder")
                .resizable()
                .frame(width: 300, height: 200)
                Spacer()
            Button("Change the title") {
                if index < headers.count - 1 {
                index += 1
                    print(index)
                }
            }
            }
            .navigationTitle(headers[index])
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
