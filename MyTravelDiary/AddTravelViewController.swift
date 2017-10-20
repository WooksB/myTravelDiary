//
//  AddTravelViewController.swift
//  MyTravelDiary
//
//  Created by 스마트 on 2017. 10. 20..
//  Copyright © 2017년 CJON, INC. All rights reserved.
//

import UIKit

protocol AddTravelDelegate {
    func sendNewTravel(travel:Travel)
}

class AddTravelViewController: UIViewController {
    var delegate:AddTravelDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
