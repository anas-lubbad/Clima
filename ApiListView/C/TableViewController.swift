//
//  TableViewController.swift
//  ApiListView
//
//  Created by anas on 03/11/2021.
//

import UIKit

class TableViewController: UITableViewController {
    
    @IBOutlet weak var searchTextField:UITextField?
    var weatherManager = WeatherManager()
    var item = [HeroStats]()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.reloadData()
        downloadJson()
    }
    
    final let url = URL(string: "https://api.opendota.com/api/heroStats")
    
    func downloadJson() {
        guard let downloadURL = url else { return }
        URLSession.shared.dataTask(with: downloadURL) { data, responce, error in
            guard let data = data, responce != nil, error == nil else {
                print("something is worng")
                return
            }
            print("download")
            do
            {
                let decoder = JSONDecoder()
                self.item = try decoder.decode([HeroStats].self, from: data)
                //print(decodeData[0].name)
                //self.item = decodeData[0].name
                //print(self.item[0].legs)
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            } catch {
                print("Error in pass json: \(error)")
            }
        }.resume()
    }
    
    
    @IBAction func searchPressed(_ sender: Any) {
//        if let city = searchTextField?.text {
            //weatherManager.urlAddress(cityName: city)
//        }
    }
    
    //MARK: - Table View DataSource
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return item.count
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? CustomCell
        cell?.nameLabel.text = item[indexPath.row].name
        return cell ?? CustomCell()
    }
}


