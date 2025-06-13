//
//  BarcodeScannerViewModel.swift
//  BarcodeScanner-SwiftUI
//
//  Created by Radya Albasha on 13/06/2025.
//

 import SwiftUI

final class BarcodeScannerViewModel: ObservableObject {
    @Published var scannedCode: String?
    @Published var alertITem: AlertItem?
    
    var statusText: String {
        (scannedCode?.isEmpty ?? true) ? "Not Yet Scanned" : scannedCode!
    }
    
    var statusTextColor: Color {
        (scannedCode?.isEmpty ?? true) ? .red : .green
    }
}
