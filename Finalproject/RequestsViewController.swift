//
//  RequestsViewController.swift
//  Finalproject
//
//  Created by Ismail on 16/12/2022.
//

import UIKit

class RequestsViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
 

    @IBOutlet weak var tableView: UITableView!
    var arrRequests = [Request]()
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
        arrRequests.append(Request(name: "فيلا",image: UIImage(named: "Screen Shot 2022-12-08 at 11.28.29 PM")!, area: "2222متر٢", city: "دبي", adress: "منطقة١", nameRoom: 4, nameBuild: 4, hight: "2متر", price: "4000درهم"))
        arrRequests.append(Request(name: "شقة",image: UIImage(named: "Screen Shot 2022-12-08 at 11.28.29 PM")!, area: "١٠٠متر٢", city: "دبي", adress: "دبي", nameRoom: 4, nameBuild: 4, hight: "2متر", price: "4000درهم"))

        arrRequests.append(Request(name: "tdgh",image: UIImage(named: "Screen Shot 2022-12-08 at 11.28.29 PM")!, area: "2222متر٢", city: "دبي", adress: "منطقة١", nameRoom: 4, nameBuild: 4, hight: "2متر", price: "4000درهم"))

        arrRequests.append(Request(name: "tdgh",image: UIImage(named: "Screen Shot 2022-12-08 at 11.28.29 PM")!, area: "2222متر٢", city: "دبي", adress: "منطقة١", nameRoom: 4, nameBuild: 4, hight: "2متر", price: "4000درهم"))



    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrRequests.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell  = tableView.dequeueReusableCell(withIdentifier: "RequestsCell") as! RequestsTableViewCell
        let data = arrRequests[indexPath.row]
        cell.layer.cornerRadius=10
        
        cell.setupCell(namet: data.name, pricet: data.price, addreest: data.adress, image: data.image)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    

    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
        headerView.backgroundColor = view.backgroundColor
        return headerView
    }
 
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 20
    }


}

struct Request {
let id:UUID = UUID()
    let name:String
    let image:UIImage
    let area:String
    let city:String
    let adress:String
    let nameRoom:Int
    let nameBuild:Int
    let hight:String
    let price:String

}
