//
//  ContentView.swift
//  AppStoreAnalyticsQA
//
//  Created by Simardeep Singh on 2/16/25.
//
import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = AnalyticsViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.analyticsData, id: \.id) { data in
                VStack(alignment: .leading) {
                    Text(data.title)
                        .font(.headline)
                    Text(data.completed ? "Completed ✅" : "Pending ⏳")
                        .foregroundColor(data.completed ? .green : .red)
                }
            }
            .refreshable {
                await viewModel.fetchAnalyticsData()
            }
            .navigationTitle("Analytics Dashboard")
            .task {
                await viewModel.fetchAnalyticsData()
            }
            .alert("Error", isPresented: $viewModel.showError) {
                Button("OK", role: .cancel) {}
            } message: {
                Text(viewModel.errorMessage)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
