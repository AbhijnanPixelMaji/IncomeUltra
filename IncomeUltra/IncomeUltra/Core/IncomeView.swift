//
//  IncomeView.swift
//  IncomeUltra
//
//  Created by Abhijnan Maji on 27/11/25.
//

import SwiftUI

struct IncomeView: View {
    @StateObject private var viewModel = IncomeViewModel()
    
    var body: some View {
       incomeView
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{toolbarItem}
    }
}

private extension IncomeView{
    var incomeView: some View{
        ScrollView{
            VStack(spacing: 16){
                
            }
        }
    }
    
    @ToolbarContentBuilder
    var toolbarItem: some ToolbarContent{
        ToolbarItem(placement: .principal){
            HStack(spacing: 5){
                Image(systemName: "dollarsign.circle")
                    .foregroundStyle(Color.appTheme.accent)
                Text(viewModel.appName)
                    
            }
            .fontWeight(.semibold)
        }
    }
}

#Preview {
    NavigationStack{
        IncomeView()
    }
    
}
