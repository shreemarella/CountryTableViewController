//
//  DataStorage.swift
//  CountryTableViewController
//
//  Created by Shree Marella on 2020-03-05.
//  Copyright © 2020 Shree Marella. All rights reserved.
//

import Foundation


class DataStorage
{
    private static let instance = DataStorage()
    private lazy var countryList: [Country] = []
    private init(){}
    
   static func getInstance() -> DataStorage
    {
        return instance
    }
    
    func  addCountry(country: Country)
    {
        self.countryList.append(country)
    }
    
    func getAllCountries() -> [Country]
    {
        return self.countryList
    }
    
    func loadData()
    {
        //countryList.removeAll()
        countryList.append(Country(name: " Afghanisthan", capital: "Kabul", flag:#imageLiteral(resourceName: "af")))
        countryList.append(Country(name: "Canada", capital: "Ottawa", flag:#imageLiteral(resourceName: "ca")))
        countryList.append(Country(name: "India", capital: "New Delhi", flag:#imageLiteral(resourceName: "in")))
        countryList.append(Country(name: "USA", capital: "Washington DC", flag:#imageLiteral(resourceName: "au")))
        countryList.append(Country(name: "Australia", capital: "Canberra", flag:#imageLiteral(resourceName: "mu")))
        countryList.append(Country(name: "Austria", capital: "Vienna", flag:#imageLiteral(resourceName: "la")))
        countryList.append(Country(name: "Belgium", capital: "Brussels", flag:#imageLiteral(resourceName: "ge")))
        countryList.append(Country(name: "Brazil", capital: "Brasilia", flag:#imageLiteral(resourceName: "bz")))
        countryList.append(Country(name: "Benin", capital: "Portanova", flag:#imageLiteral(resourceName: "er")))
        countryList.append(Country(name: "Bhutan", capital: "Thimpu", flag:#imageLiteral(resourceName: "sa")))
        countryList.append(Country(name: "Chile", capital: "Santieago", flag:#imageLiteral(resourceName: "tr")))
        countryList.append(Country(name: "China", capital: "Beijeing", flag:#imageLiteral(resourceName: "np")))
        countryList.append(Country(name: "Cuba", capital: "Havana", flag:#imageLiteral(resourceName: "sg")))
        countryList.append(Country(name: "Egypt", capital: "Ciaro", flag:#imageLiteral(resourceName: "fm")))
        countryList.append(Country(name: "Estonia", capital: "Talinn", flag:#imageLiteral(resourceName: "bh")))
    }
}
