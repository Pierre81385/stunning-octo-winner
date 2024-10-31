//
//  ContentView.swift
//  swift-stunning-octo-winner
//
//  Created by m1_air on 10/29/24.
//

import SwiftUI
import SwiftData
import DLParser

struct ContentView: View {
    @State private var scannedData: String = ""
    
    var body: some View {
        VStack {
            BarcodeScannerView { scannedCode in
                self.scannedData = scannedCode
                parseDriverLicenseData(from: scannedCode)
            }.padding()
            Text("Scanned Data: \(scannedData)")
                .padding()
        }
    }
    
    func parseDriverLicenseData(from scannedData: String) {
        // Parse the PDF417 data according to your region’s driver’s license data format
        let scan = AAMVAParser(data: scannedData)
        let parsedScan = scan.parse()
        print("Parsed Driver’s License Data: \(parsedScan)")
        
//        Parsed Driver’s License Data: DriverLicense(firstName: Optional("PETER"), middleNames: ["JOHN"], lastName: Optional("BISHOP"), givenNameAlias: nil, lastNameAlias: nil, suffixAlias: nil, suffix: nil, firstNameTruncation: Optional(DLParser.Truncation.none), middleNameTruncation: Optional(DLParser.Truncation.none), lastNameTruncation: Optional(DLParser.Truncation.none), expirationDate: Optional(2027-08-13 06:00:00 +0000), issueDate: Optional(2022-05-17 06:00:00 +0000), birthdate: Optional(1985-08-13 06:00:00 +0000), hazmatExpirationDate: nil, revisionDate: Optional(2022-02-28 07:00:00 +0000), underEighteenUtilDate: nil, underNineteenUtilDate: nil, underTwentyOneUtilDate: nil, race: Optional(DLParser.Race.asian), gender: Optional(DLParser.Gender.male), eyeColor: Optional(DLParser.EyeColor.brown), height: Optional(70.0), weight: DLParser.Weight(range: nil, pounds: nil), hairColor: Optional(DLParser.HairColor.black), placeOfBirth: nil, streetAddress: Optional("1700 LAPORTE AVE"), streetAddressTwo: nil, city: Optional("FORT COLLINS"), state: Optional("CO"), postalCode: Optional("805210000"), country: Optional(DLParser.IssuingCountry.unitedStates), version: Optional(10), pdf417Data: Optional("@\n\u{1E}\rANSI 636020100102DL00410275ZC03160010DLDAQ991830274\nDCSBISHOP\nDDEN\nDACPETER\nDDFN\nDADJOHN\nDDGN\nDCAR\nDCBNONE\nDCDNONE\nDBD05172022\nDBB08131985\nDBA08132027\nDBC1\nDAU070 in\nDAYBRO\nDAG1700 LAPORTE AVE\nDAIFORT COLLINS\nDAJCO\nDAK805210000  \nDCF8200060\nDCGUSA\nDDAF\nDDB02282022\nDAZBLK\nDCJCDOR_DL_0_051822_33004\nDCLAP \nDAW180\rZCZCANONE\r"), licenseNumber: Optional("991830274"), documentId: Optional("8200060"), auditInformation: Optional("CDOR_DL_0_051822_33004"), inventoryControlNumber: nil, complianceType: Optional(DLParser.Compliance.fullyCompliant), isOrganDonor: nil, isVeteran: nil, isTemporaryDocument: nil, federalVehicleCode: nil, standardVehicleClass: nil, standardRestrictionCode: nil, standardEndorsementCode: nil, jurisdictionVehicleClass: Optional("R"), jurisdictionRestrictionCode: Optional("NONE"), jurisdictionEndorsementCode: Optional("NONE"), jurisdictionVehicleDescription: nil, jurisdictionRestrictionDescription: nil, jurisdictionEndorsementDescription: nil)
        
        
    }
}

#Preview {
    ContentView()
}
