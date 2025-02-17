//
//  AnalyticsViewModel.swift
//  AppStoreAnalyticsQA
//
//  Created by Simardeep Singh on 2/16/25.
//
import SwiftUI

@MainActor
class AnalyticsViewModel: ObservableObject {
    @Published var analyticsData: [AnalyticsData] = []
    @Published var showError = false
    @Published var errorMessage = ""
    
    func fetchAnalyticsData() async {
        do {
            let data = try await APIService.shared.fetchAnalytics()
            analyticsData = data
        } catch {
            errorMessage = error.localizedDescription
            showError = true
        }
    }
}
