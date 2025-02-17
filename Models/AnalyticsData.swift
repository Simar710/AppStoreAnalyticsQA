//
//  AnalyticsData.swift
//  AppStoreAnalyticsQA
//
//  Created by Simardeep Singh on 2/16/25.
//

import Foundation

struct AnalyticsData: Codable, Identifiable {
    let id: Int
    let title: String
    let completed: Bool
}
