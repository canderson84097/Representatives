//
//  Represenative.swift
//  Representative
//
//  Created by Chris Anderson on 11/20/19.
//  Copyright © 2019 DevMtnStudent. All rights reserved.
//

import Foundation

struct TopLevelDictionary: Codable {
    let results: [Representative]
}

struct Representative: Codable {
    let name: String
    let party: String
    let state: String
    let district: String
    let phone: String
    let office: String
    let link: String
}

//extension Representative {
//    init?(dictionary: [String: Any]) {
//        guard let name = dictionary["name"] as? String,
//        let party = dictionary["party"] as? String,
//        let state = dictionary["state"] as? String,
//        let district = dictionary["district"] as? String,
//        let phone = dictionary["phone"] as? String,
//        let office = dictionary["office"] as? String,
//        let link = dictionary["link"] as? String else { return nil }
//
//        self.name = name
//        self.party = party
//        self.state = state
//        self.district = district
//        self.phone = phone
//        self.office = office
//        self.link = link
//    }
//
//    var jsonDictionary: [String: Any] {
//        return ["name": self.name, "party": self.party, "state": self.state, "office": self.office, "link": self.link]
//    }
//}
