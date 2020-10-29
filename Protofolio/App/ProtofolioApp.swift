//
//  ProtofolioApp.swift
//  Protofolio
//
//  Created by Vikram on 27/10/2020.
//

import SwiftUI

@main
struct ProtofolioApp: App {
    @StateObject var dataController: DataController
    
    init() {
        let dataController = DataController()
        _dataController = StateObject(wrappedValue: dataController)
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
                .environmentObject(dataController)
        }
    }
}
