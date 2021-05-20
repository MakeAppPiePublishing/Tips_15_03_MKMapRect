//
//  PizzaHistoryView.swift
//  HuliPizzaPages
//
//  Created by Steven Lipton on 5/16/21.
//

import SwiftUI
import MapKit

struct PizzaHistoryView:View{
    @Binding var history:HistoryItem
    
    var body:some View{
        VStack {
            HStack {
                Spacer()
                Text("History of " +  history.name + " Pizza")
                    .font(.headline)
            }
            ScrollView{
                Text(history.history)
            }
        }
        
    }
}

struct PizzaHistoryView_Previews: PreviewProvider {
    static var previews: some View {
        PizzaHistoryView(history: .constant(HistoryModel().historyItems[9]))
    }
}
