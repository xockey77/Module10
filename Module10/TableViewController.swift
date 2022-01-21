//
//  TableViewController.swift
//  Module10
//
//  Created by username on 03.11.2021.
//

import UIKit

class TableViewController: UITableViewController {

    let settings = SettingsSectionFabric.settings()
    var wifiName = "Rostel_16"
    var stateBT: Bool = true
    var modemMode: Bool = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return settings.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return settings[section].rows.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if (indexPath.section == 0 && indexPath.row == 0) {
            let cell = tableView.dequeueReusableCell(withIdentifier: "Switch Cell", for: indexPath) as! SwitchTableViewCell
            cell.textLabel?.text = settings[0].rows[0].name
            let imgName = settings[0].rows[0].pictName
            cell.imageView?.image = UIImage(named: imgName)
            cell.imageView?.layer.cornerRadius = 7.0
            cell.imageView?.clipsToBounds = true
            
            return cell
        }
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Right Detail Cell", for: indexPath)
        cell.textLabel?.text = settings[indexPath.section].rows[indexPath.row].name
        if let detail = settings[indexPath.section].rows[indexPath.row].detail {
            
            let text: String
            
            switch detail {
            case .none:
                text = ""
            case .stateBT:
                text = stateBT ? "Вкл." : "Выкл."
            case .stateWiFi:
                text = wifiName
            case .modemMode:
                text = modemMode ? "Вкл." : "Выкл." 
            }
            cell.detailTextLabel?.text = text
        } else {
            cell.detailTextLabel?.text = ""
        }
        
        let imgName = settings[indexPath.section].rows[indexPath.row].pictName
        cell.imageView?.image = UIImage(named: imgName)
        cell.imageView?.layer.cornerRadius = 7.0
        cell.imageView?.clipsToBounds = true
        
        return cell
    }
}
