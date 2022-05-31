//
//  ViewController.swift
//  ApiListView
//
//  Created by anas on 03/11/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var searchTextField: UITextField!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var tempLabel: UILabel!
    @IBOutlet weak var weatherImage: UIImageView!
    
   var weatherManager = WeatherManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
      //  weatherManager.delegate = self
    }

    @IBAction func searchPressed(_ sender: UIButton) {
       // weatherManager.urlAddress(cityName: searchTextField.text!)
    }
    
}

//MARK: - WeatherManagerDelegate
extension ViewController: WeatherManagerDelegate {
    func updateWeatherManager(_ weatherManager: WeatherManager, weatherModels: WeatherModels) {
        
        DispatchQueue.main.async {
            self.weatherImage.image = UIImage(systemName: weatherModels.condtionName)
            self.tempLabel.text = weatherModels.tempName
            self.cityLabel.text = weatherModels.name
        }
    }
}

