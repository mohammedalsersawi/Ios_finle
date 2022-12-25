//
//  DetatilsRequestsViewController.swift
//  Finalproject
//
//  Created by Ismail on 18/12/2022.
//

import UIKit

class DetatilsRequestsViewController: UIViewController {

    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var hight: UILabel!
    @IBOutlet weak var numroom: UILabel!
    @IBOutlet weak var numBuild: UILabel!
    @IBOutlet weak var adrres: UILabel!
    @IBOutlet weak var ciry: UILabel!
    @IBOutlet weak var area: UILabel!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var name: UILabel!
    var Data:Request?
    override func viewDidLoad() {
        super.viewDidLoad()
        image.image =  UIImage(named: "Screen Shot 2022-12-08 at 11.28.29 PM")
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
