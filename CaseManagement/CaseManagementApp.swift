//
//  CaseManagementApp.swift
//  CaseManagement
//
//  Created by gaofeng on 2026/2/9.
//

import SwiftUI
import AppLogin
import Combine
import AppBaseFoundation

@main
struct CaseManagementApp: App {
    private var session = SessionManager.shared
    
    var body: some Scene {
        WindowGroup {
            RootView()
        }
    }
}

@MainActor
struct RootView: View {
    
    @StateObject private var session = SessionManager.shared
    
    var body: some View {
        Group {
            if session.isLoggedIn {
                ContentView()
            } else {
                SessionManager.loginView()
            }
        }
    }
}
