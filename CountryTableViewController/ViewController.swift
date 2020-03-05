//
//  ViewController.swift
//  CountryTableViewController
//
//  Created by Shree Marella on 2020-03-04.
//  Copyright © 2020 Shree Marella. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tblCount: UITableView!
//    var countryNames = ["Afghanisthan","Angola","Aruba","Bahamas","Cambodia","Denmark","Europe","canada","India","Italy","Kenya","Nepal","France","USA","Ghana","Pakisthan","Bermudes","Maldives","Mexico","Mangolia","Oman","Phillipines","Sweden","SriLanka","Venezula","China","Nepal","tuvalu","Qatar","Netherlands","Rawanda","Iran","Iraq","Turkey"]
//
    lazy var countryNames: [Country] = []
    override func viewDidLoad()
    {
        super.viewDidLoad()
        countryNames = DataStorage.getInstance().getAllCountries()
        loadCountries()
        
    }
    
    func loadCountries()
    {
        countryNames.append(Country(name: " Afghanisthan", capital: "Kabul", flag:#imageLiteral(resourceName: "af")))
        countryNames.append(Country(name: "Canada", capital: "Ottawa", flag:#imageLiteral(resourceName: "ca")))
        countryNames.append(Country(name: "India", capital: "New Delhi", flag:#imageLiteral(resourceName: "in")))
        countryNames.append(Country(name: "USA", capital: "Washington DC", flag:#imageLiteral(resourceName: "au")))
        countryNames.append(Country(name: "Australia", capital: "Canberra", flag:#imageLiteral(resourceName: "mu")))
        countryNames.append(Country(name: "Austria", capital: "Vienna", flag:#imageLiteral(resourceName: "la")))
        countryNames.append(Country(name: "Belgium", capital: "Brussels", flag:#imageLiteral(resourceName: "ge")))
        countryNames.append(Country(name: "Brazil", capital: "Brasilia", flag:#imageLiteral(resourceName: "bz")))
        countryNames.append(Country(name: "Benin", capital: "Portanova", flag:#imageLiteral(resourceName: "er")))
        countryNames.append(Country(name: "Bhutan", capital: "Thimpu", flag:#imageLiteral(resourceName: "sa")))
        countryNames.append(Country(name: "Chile", capital: "Santieago", flag:#imageLiteral(resourceName: "tr")))
        countryNames.append(Country(name: "China", capital: "Beijeing", flag:#imageLiteral(resourceName: "np")))
        countryNames.append(Country(name: "Cuba", capital: "Havana", flag:#imageLiteral(resourceName: "sg")))
        countryNames.append(Country(name: "Egypt", capital: "Ciaro", flag:#imageLiteral(resourceName: "fm")))
        countryNames.append(Country(name: "Estonia", capital: "Talinn", flag:#imageLiteral(resourceName: "bh")))
        
    }
}

extension ViewController : UITableViewDataSource,UITableViewDelegate
   {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return countryNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CountryCell")
        
        let country = countryNames[indexPath.row]
        cell?.textLabel?.text = country.name
        cell?.detailTextLabel?.text = country.capital
        cell?.imageView?.image = country.flag
        
        
        return cell!
    }
}
