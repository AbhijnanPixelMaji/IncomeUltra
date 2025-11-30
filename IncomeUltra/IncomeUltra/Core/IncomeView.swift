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
                IncomePickerView($viewModel.incomePickerValue)
                switch viewModel.incomePickerValue{
                    case .hourly:
                   hourlyView
                case .salary:
                   salaryView
                }
            }
            .padding(.horizontal)
            .padding(.vertical, 8)
        }
    }
    
    @ViewBuilder
    var salaryView: some View{
       salaryInputView
       salarayOutputView
    }
    @ViewBuilder
    var hourlyView: some View{
        hourlyInputView
        hourlyOutputView
    }
    
    @ViewBuilder
    var salaryInputView: some View{
        Text("")
    }
    @ViewBuilder
    var salarayOutputView: some View{
        Text("")
    }
     
    @ViewBuilder
    var hourlyInputView: some View{
        Text("")
    }
    @ViewBuilder
    var hourlyOutputView: some View{
        Text("")
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
