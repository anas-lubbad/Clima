//
//  WeatherManager.swift
//  ApiListView
//
//  Created by anas on 03/11/2021.
//

import Foundation
protocol WeatherManagerDelegate {
    func updateWeatherManager(_ weatherManager: WeatherManager, weatherModels: WeatherModels)
}
struct WeatherManager {
    
//    var list = [WeatherModels]()
//    var delegate: WeatherManagerDelegate?
//    func urlAddress(cityName: String) {
//        let url = "https://api.openweathermap.org/data/2.5/weather?appid=331c21b81121ea1b2498fc43474cf195&units=metric"
//        let urlString = ("\(url)&q=\(cityName)")
//        performRequest(with: urlString)
//    }
//    
//    func performRequest(with urlString: String) {
//        if let url = URL(string: urlString) {
//            let session = URLSession(configuration: .default)
//            let task = session.dataTask(with: url) { data, responce, error in
//                if error != nil {
//                    print("This is error: \(error!)")
//                    return
//                }
//                
//                if let safeData = data {
//                    if let weatherPass = PassJson(safeData) {
//                        print(weatherPass.name)
//                        print(weatherPass.tempName)
//                        delegate?.updateWeatherManager(self, weatherModels: weatherPass)
//                    }
//                }
//            }
//            task.resume()
//        }
//    }
//    
//    func PassJson(_ weatherData: Data) -> WeatherModels? {
//        let decoder = JSONDecoder()
//        do {
//            let decodeData = try decoder.decode(DataModels.self, from: weatherData)
//            let id_ = decodeData.weather[0].id
//            let name_ = decodeData.name
//            let temp_ = decodeData.main.temp
//            
//            
//            let weatherModels = WeatherModels(id: id_, name: name_, temp: temp_)
//            return weatherModels
//        } catch {
//            print("Error in pass json: \(error)")
//            return nil
//        }
//        
//    }
}
