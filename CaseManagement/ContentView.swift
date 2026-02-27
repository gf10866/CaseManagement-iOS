//
//  ContentView.swift
//  CaseManagement
//
//  Created by gaofeng on 2026/2/9.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            TaskView()
                .tabItem {
                    Image(systemName: "checklist")
                    Text("任务")
                }

            MessageView()
                .tabItem {
                    Image(systemName: "message")
                    Text("消息")
                }

            SettingsView()
                .tabItem {
                    Image(systemName: "gearshape")
                    Text("设置")
                }
        }
    }
}

struct TaskView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("任务页面")
                    .font(.title)
            }
            .navigationTitle("任务")
        }
    }
}

struct MessageView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("消息页面")
                    .font(.title)
            }
            .navigationTitle("消息")
        }
    }
}

struct SettingsView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("设置页面")
                    .font(.title)
            }
            .navigationTitle("设置")
        }
    }
}

#Preview {
    ContentView()
}
