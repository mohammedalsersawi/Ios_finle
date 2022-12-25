//
//  ContanierPageVC.swift
//  Finalproject
//
//  Created by Ismail on 08/12/2022.
//

import UIKit

class ContanierPageVC: UIPageViewController,UIPageViewControllerDelegate,UIPageViewControllerDataSource {
  
    
var arrContainers = [UIViewController]()
    override func viewDidLoad() {
        super.viewDidLoad()
        UIView.appearance().semanticContentAttribute = .forceRightToLeft

        view.backgroundColor = UIColor(#colorLiteral(red: 0.431372549, green: 0.7176470588, blue: 0.7803921569, alpha: 1))
        let vc1 = self.storyboard?.instantiateViewController(withIdentifier: "page1")
        let vc2 = self.storyboard?.instantiateViewController(withIdentifier: "page2")
        let vc3 = self.storyboard?.instantiateViewController(withIdentifier: "page3")

        arrContainers.append(vc1!)
        arrContainers.append(vc2!)
        arrContainers.append(vc3!)

        delegate = self
        dataSource = self
        if let firstVC = arrContainers.first {
            setViewControllers([firstVC], direction: .forward, animated: true,completion: nil)
        }

    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let currentIndex = arrContainers.firstIndex(of: viewController) else{
            return nil
        }
        let previousIndex = currentIndex - 1
        
        guard previousIndex >= 0 else {
            return nil
        }
        return arrContainers[previousIndex]
    
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let currentIndex = arrContainers.firstIndex(of: viewController) else {
            return nil
        }
        let afterIndex = currentIndex + 1
        
        guard afterIndex < arrContainers.count else {
//            let vcLogin = self.storyboard?.instantiateViewController(identifier: "nav")
//            navigationController?.pushViewController(vcLogin!, animated: true)
            return nil
        }
        return arrContainers[afterIndex]
    }
    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return arrContainers.count
    }
    func presentationIndex(for pageViewController: UIPageViewController) -> Int {
        return 0
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
