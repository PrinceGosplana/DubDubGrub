//
//  MockData.swift
//  DubDubGrub
//
//  Created by Oleksandr Isaiev on 30.03.2024.
//

import CloudKit

struct MockData {

    static var location: CKRecord {
        let record = CKRecord(recordType: "DDGLocation")
        record[DDGLocation.kName]           = "Sean's cool Bar & Grill"
        record[DDGLocation.kAddress]        = "123 Main Street"
        record[DDGLocation.kDescription]    = "This is a test description. Isn't it awesome. Not sure how long to make it to test the 3 lines."
        record[DDGLocation.kWebsiteURL]     = "https://seanallen.co"
        record[DDGLocation.kLocation]       = CLLocation(latitude: 37.326543, longitude: -121.891032)
        record[DDGLocation.kPhoneNumber]    = "111-111-1111"

        return record
    }

    static var location2: CKRecord {
        let record = CKRecord(recordType: "DDGLocation")
        record[DDGLocation.kName]           = "AC Kitchen & Lounge"
        record[DDGLocation.kAddress]        = "123 Main Street"
        record[DDGLocation.kDescription]    = "Thrill your palate with diverse and delectable dining."
        record[DDGLocation.kWebsiteURL]     = "https://seanallen.co"
        record[DDGLocation.kLocation]       = CLLocation(latitude: 37.331522, longitude: -121.891050)
        record[DDGLocation.kPhoneNumber]    = "222-222-2222"

        return record
    }

    static var location3: CKRecord {
        let record = CKRecord(recordType: "DDGLocation")
        record[DDGLocation.kName]           = "Chipotle. Main & Neat"
        record[DDGLocation.kAddress]        = "123 Main Street"
        record[DDGLocation.kDescription]    = "It's Chipotle. Enough said."
        record[DDGLocation.kWebsiteURL]     = "https://seanallen.co"
        record[DDGLocation.kLocation]       = CLLocation(latitude: 37.333211, longitude: -121.8915)
        record[DDGLocation.kPhoneNumber]    = "222-222-2222"

        return record
    }

}

