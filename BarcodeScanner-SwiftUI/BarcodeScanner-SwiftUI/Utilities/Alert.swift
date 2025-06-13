 //
//  Alert.swift
//  BarcodeScanner-SwiftUI
//
//  Created by Radya Albasha on 13/06/2025.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title : String
    let message : String
    let dismissButton: Alert.Button
}

struct AlertContext{
    static let invalidDeviceInput = AlertItem(title: "Invalid Device Input", message: "Something is wrong whith the camera. We are unable to cupure the input.", dismissButton: .default(Text("OK")))
    
    static let invalidScannedValue = AlertItem(title: "Invalid Scanned Value", message: "The value scanned is not valid. This app scans EAN-8 and EAN-13 barcodes.", dismissButton: .default(Text("OK")))
}
