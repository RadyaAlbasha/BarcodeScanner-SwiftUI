//
//  BarcodeScannerView.swift
//  BarcodeScanner-SwiftUI
//
//  Created by Radya Albasha on 12/06/2025.
//

import SwiftUI


struct BarcodeScannerView: View {
    @StateObject private var viewModel = BarcodeScannerViewModel()
    
    var body: some View {
        NavigationStack {
            VStack {
                ScannerView(scannedCode: $viewModel.scannedCode,
                            alertItem: $viewModel.alertITem)
                    .frame(maxWidth: .infinity, maxHeight: 300)
                
                Spacer()
                    .frame(height: 60)
                
                Label("Barcode Scanner:", systemImage: "barcode.viewfinder")
                    .font(.title)
                
                Text(viewModel.statusText)
                    .bold()
                    .font(.largeTitle)
                    .foregroundStyle(viewModel.statusTextColor)
                    .padding()
            }
            .navigationTitle("Barcode Scanner")
            .alert(item: $viewModel.alertITem) { item in
                Alert(title: Text(item.title),
                      message: Text(item.message),
                      dismissButton: item.dismissButton)
            }
        }
    }
}

#Preview {
    BarcodeScannerView()
}
