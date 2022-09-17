//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Yernar Masujima on 9/10/22.
//

import SwiftUI

struct AppetizerListView: View {
        
    @State private var appetizers = [Appetizer]() 
    
    var body: some View {
        NavigationView {
            List(appetizers) { appetizer in
                AppetizerListCell(appetizer: appetizer)
            }
            .listStyle(.plain)
            .navigationTitle("Appetizers")
        }
        .onAppear {
            getAppetizers()
        }
    }
    
    func getAppetizers() {
        NetworkManager.shared.getAppetizers { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let appetizers):
                    self.appetizers = appetizers
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
        }
    }
}

struct AppetizerListView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerListView()
    }
}
