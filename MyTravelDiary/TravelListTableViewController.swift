//
//  TravelListTableViewController.swift
//  MyTravelDiary
//
//  Created by 스마트 on 2017. 10. 20..
//  Copyright © 2017년 CJON, INC. All rights reserved.
//

import UIKit

class TravelListTableViewController: UITableViewController, AddTravelDelegate {

    var travels:[Travel] = Array()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let user_data = User(userName: "백영욱", userId: "String", nickName: "String", postCount: 10, profileImage:  nil)
        
        
        let travel1 = Travel(index:0, user: user_data, startDate: "2016-03-01", endDate: "2016-03-07", title: "도쿄에서의 순간 기록",
                             detail: "7월 7일, 내 생일을 핑계로 몰타에서 만난 일본 친구들을 만나러 일주일간 도쿄로 여행을 떠났다 👧🏻🛩🇯🇵늘 틈이 날 때면 꾸준히 일상을 기록하는터라, 여행이라고 따로 글을 남기기보다는 가슴에 기억해두고 싶은 건 사진에 담고, 떠오르는 생각이 있을 때면 핸드폰 메모장이나 스케줄러에 끄적인다", coverImage: UIImage(named: "japan")!, destination: Destination(nationName: "일본", cityName: "오사카", description: "오사카"))
        
        let travel2 = Travel(index:1, user: user_data, startDate: "2017-09-12", endDate: "2017-09-15", title: "베트남 현장 체험 연수",
                             detail: "검색대에서 신발까지 벗으라하고 짜증나는 베트남 검색대!16번 게이트에서 20번 게이트로 옮기라하고 한번 더 짜증나는 베트남!정말 가이드 말처럼 소소한 면세점을 그저 바라볼 뿐입니다.호치민 출발! 오후 11시 30분 출발 인천공항도착 오전 6시 30분 도착청소년금융교육연합회 파트너 기관의 모든분께 감사드립니다.멋진 추억을 마련해 주셨습니다.베트남 현장 체험 연수를 함께하신 모든분께 건강을 기원합니다.", coverImage: UIImage(named: "vietnam")!, destination: Destination(nationName: "베트남", cityName: "호치민", description: "호치민"))
        
        let travel3 = Travel(index:2, user: user_data, startDate: "2017-01-01", endDate: "2017-01-10", title: "괌에서의 소중한 시간",
                             detail: "날 좋은 일요일, 오후 비행기를 타고 괌으로 출발 ! 갑자기 떠나게 된 여행이라 그런지, 여행에 대한 설렘이 그 어느때보다도 강했던 시간 :) 밤새 잠을 설쳤음에도 가벼운 발걸음이었다.", coverImage: UIImage(named: "guam")!, destination: Destination(nationName: "미국", cityName: "괌", description: "괌"))
        
        let travel4 = Travel(index:3, user: user_data, startDate: "2016-05-01", endDate: "2016-05-04", title: "최고의 싱가폴 여행기",
                             detail: "이렇게 싱가포르 3박4일 여행이 끝이났다. 처음에는 해외라는 겁이나서 잘 즐길 수 있을까했는데 누구보다 재밌게 놀았다ㅎㅎ 다음엔 자유로 가서 예쁜 사진도 많이찍어야 겠다. 갈때 아쉬움이 컸지만..아쉬울때 가라는 말이 생각났다!! 꼭 다음에 또 가봐야겠다 ^.^ 제일 좋았던건 이 나라 사람들이 한국인을 좋아한다는 점인거 같다~~ 못생긴 나한테도 예쁘다해줬다😆 알럽싱가포르💜 성공적인 싱가포르 여행 FIN✋🏻", coverImage: UIImage(named: "singapore")!, destination: Destination(nationName: "싱가포르", cityName: "마리나베이", description: "싱가포르"))
        
        let travel5 = Travel(index:4, user: user_data, startDate: "2017-03-01", endDate: "2017-03-10", title: "이태리 로망스",
                             detail: "중앙시장 화덕피자 먹으려고 한시간을 기다렸어. 주문하고 기다리는데 30분이 지나도 내 오더만 않나오는거야. 보니깐 내 뒷번호들은 계속 받아가는데 말야. 짜증을 잇빠이 썩어서 컴플레인을 하고 겨우 받았지. 무덥고 시장했어. 피자가 맛있어서 용서가 됐지.두우모 코폴라에서 여자 두명이 쓰러지는 사고가 있었데. 예약이고 머고 누구든 줄서서 기다리게 했지.다행히 난 십분정도 기다리고 올라갈수 있었어.조토의종탑까지 섭렵하고 해질녘 비키오 다리까지 걸었어. 아름다웠지. 해가 완전히 사라지고 어둠이 깊이질때까지 자리를 떠날수 없는 밤이였어.피렌체는. 역시 아름다웠어.", coverImage: UIImage(named: "italy")!, destination: Destination(nationName: "이탈리아", cityName: "로마", description: "로마"))
        travels.append(travel1)
        travels.append(travel4)
        travels.append(travel3)
        travels.append(travel2)
        travels.append(travel5)



        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return travels.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        if let travelCell = cell as? TravelTableViewCell {
            let travel = self.travels[indexPath.row]
            
            travelCell.travelTitleLabel.text = travel.title
            travelCell.travelCityLabel.text = travel.destination.nationName + " (" + travel.destination.cityName + ")"
            travelCell.travelDateLabel.text = travel.startDate + " ~ " + travel.endDate
            travelCell.travelImageView.image = travel.coverImage
            
            return travelCell
        }

        return cell
    }
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "addvc" {
            if let addVC = segue.destination as? AddTravelViewController {
                addVC.delegate = self
            }
            
        } else if segue.identifier == "detailvc" {
            let cell = sender as? UITableViewCell
            
            let vc = segue.destination as? DetailViewController
            guard let seletedCell = cell, let detailVC = vc else {
                return
            }
            
            if let idx = self.tableView.indexPath(for: seletedCell) {
                detailVC.travel = self.travels[idx.row]
            }
        }
    }
 
    func sendNewTravel(travel: Travel) {
        self.travels.append(travel)
        self.tableView.reloadData()
    }
}

class TravelTableViewCell: UITableViewCell {
    
    @IBOutlet weak var travelImageView: UIImageView!
    @IBOutlet weak var travelTitleLabel: UILabel!
    @IBOutlet weak var travelCityLabel: UILabel!
    @IBOutlet weak var travelDateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
