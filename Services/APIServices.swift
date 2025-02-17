//
//  APIServices.swift
//  AppStoreAnalyticsQA
//
//  Created by Simardeep Singh on 2/16/25.
//

import Foundation
import SwiftUI

class APIService {
    static let shared = APIService()
    
    private init() {}
    
    func fetchAnalytics() async throws -> [AnalyticsData] {
        // Use a test URL or local JSON file for simulation
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/todos") else {
            throw URLError(.badURL)
        }
        
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
            throw URLError(.badServerResponse)
        }
        
        let analytics = try JSONDecoder().decode([AnalyticsData].self, from: data)
        return analytics
    }
}
