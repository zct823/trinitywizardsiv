//
//  MyContactsLists.swift
//  trinitywizardtest
//
//  Created by Mohd Zulhilmi Bin Mohd Zain on 21/04/2024.
//

import UIKit

class MyContactsLists: UITableView {

    var contactsRetrieved: ContactRetrieve!
    var contactData: [ContactModel]!

    func initializes() {

        self.contactsRetrieved = ContactRetrieve.init()
        self.contactData = self.contactsRetrieved.loadContactData()

        self.delegate = self
        self.dataSource = self
    }

}

extension MyContactsLists: UITableViewDelegate {

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }

}

extension MyContactsLists: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.contactData?.count ?? 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell: MyContactsListsCell = MyContactsListsCell.initCell(tableView: tableView, identifier: "clcCell", indexPath: indexPath)
        cell.setupCell(firstName: self.contactData?[indexPath.row].firstName, lastName: self.contactData?[indexPath.row].lastName)

        return cell
    }
}

class MyContactsListsCell: UITableViewCell {

    @IBOutlet weak var vwCLCAvatar: UIView!
    @IBOutlet weak var lblCLCAvatarLabel: UILabel!
    @IBOutlet weak var lblCLCName: UILabel!

    class func initCell(tableView: UITableView, identifier: String, indexPath: IndexPath) -> MyContactsListsCell {
        return tableView.dequeueReusableCell(withIdentifier: identifier) as! MyContactsListsCell
    }

    func setupCell(firstName: String?, lastName: String?) {

        self.vwCLCAvatar.layer.cornerRadius = self.vwCLCAvatar.bounds.width / 2.0
        self.vwCLCAvatar.backgroundColor = UIColor.init(rgb: 0x0077B6)
        self.lblCLCName.text = String.init(format: "%@ %@", firstName ?? "", lastName ?? "")
        self.lblCLCName.setupListName()
    }
}
