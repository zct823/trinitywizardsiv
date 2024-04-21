//
//  ContactRetrieve.swift
//  trinitywizardtest
//
//  Created by Mohd Zulhilmi Bin Mohd Zain on 21/04/2024.
//

import Foundation

class ContactRetrieve {

    func loadContactData() -> [ContactModel]? {
        if let url = Bundle.main.url(forResource: "data", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let jsonData = try decoder.decode([ContactModel].self, from: data)
                return jsonData
            } catch {
                print("error:\(error)")
            }
        }
        return nil
    }

    func getSpecific(email: String) -> [ContactModel]? {

        guard let contactMap = self.loadContactData()?.filter({$0.email == email}) else {
            return nil
        }

        return contactMap
    }
}
