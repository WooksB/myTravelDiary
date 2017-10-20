//
//  DetailViewController.swift
//  MyTravelDiary
//
//  Created by 스마트 on 2017. 10. 20..
//  Copyright © 2017년 CJON, INC. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    //@IBOutlet weak var coverImage: UIImageView!
    @IBOutlet weak var coverImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var detailLabel: UITextView!
    @IBOutlet weak var dateLabel: UILabel!
    var travel:Travel?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        guard let newTravel = self.travel else {
            return
        }
        
        self.coverImage.image = newTravel.coverImage
        self.cityLabel.text = newTravel.destination.nationName + " (" + newTravel.destination.cityName + ")"
        self.dateLabel.text = newTravel.startDate + " ~ " + newTravel.endDate
        self.detailLabel.text = newTravel.detail
        self.titleLabel.text = newTravel.title
        // Do any additional setup after loadisng the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
