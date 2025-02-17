//
//  AnalyticsData.swift
//  AppStoreAnalyticsQA
//

import Foundation

struct AnalyticsData: Codable, Identifiable {
    let id: Int
    let title: String
    let completed: Bool
}
