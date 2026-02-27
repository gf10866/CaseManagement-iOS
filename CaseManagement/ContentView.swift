//
//  ContentView.swift
//  CaseManagement
//
//  Created by gaofeng on 2026/2/9.
//

import SwiftUI
import AppModules

struct ContentView: View {
    var body: some View {
        TabView {
            TaskView()
                .tabItem {
                    Image(systemName: "checklist")
                    Text(String.lan("main_tab_task"))
                }

            MessageView()
                .tabItem {
                    Image(systemName: "message")
                    Text(String.lan("main_tab_message"))
                }

            SettingsView()
                .tabItem {
                    Image(systemName: "gearshape")
                    Text(String.lan("main_tab_setting"))
                }
        }
    }
}

#Preview {
    ContentView()
}
