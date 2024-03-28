//
//  ViewController.swift
//  Demo
//
//  Created by yoway Li on 2024/3/28.
//

import UIKit

class ViewController: UIViewController {
    var index = 0
    let name = ["強尼戴普", "甄子丹", "曾志偉"]
    @IBOutlet weak var imageShow: UIImageView!
    @IBOutlet weak var nameSegament:UISegmentedControl!
    @IBOutlet weak var picturePage: UIPageControl!
    @IBOutlet weak var nameShow: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func updateUI() {
        imageShow.image = UIImage(named: name[index])
        nameShow.text = name[index]
        nameSegament.selectedSegmentIndex = index
        picturePage.currentPage = index
    }

    @IBAction func selectPicture(_ sender: Any) {
        index = nameSegament.selectedSegmentIndex
        updateUI()
    }
    
    @IBAction func changePageControll(_ sender: Any) {
        index = picturePage.currentPage
        updateUI()
    }
    
    @IBAction func pre(_ sender: Any) {
        index -= 1
        if index < 0 {
            index = name.count - 1
        }
        updateUI()

    }
    
    @IBAction func next(_ sender: Any) {
        index += 1
        if index == name.count {
            index = 0
        }
        updateUI()
    }
}

