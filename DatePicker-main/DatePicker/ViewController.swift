//
//  ViewController.swift
//  DatePicker
//
//  Created by 경호's mac on 2022/04/01.
//

import UIKit

class ViewController: UIViewController {
    let timeSelector : Selector = #selector(ViewController.updateTime)
    let interval = 1.0
    var count = 0
    

    @IBOutlet var lblCurrentTime: UILabel!
    @IBOutlet var lblPickerTime: UILabel!
    
    
    // 타이머 설정
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // 타이머 간격, 동작될 view, 타이머가 구동될 때 실행할 함수, 사용자 정보, 반복 여부
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
    }

    // 데이터 피커에서 원하는 날짜와 시간을 선택하면 그 내용이 'lblPickerTime' 레이블에 출력되는 기능
    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
        let datePickerView = sender
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm EEE"
        lblPickerTime.text = "선택시간:  " + formatter.string(from: datePickerView.date)
    }
    
    // #selector -> @Objc
    @objc func updateTime() {
//        lblCurrentTime.text = String(count)
//        count = count + 1
        
        // 현재 시간을 가져오기 위해 사용합니다.
        let date = NSDate()
        
        // 날짜를 출력하기 위해 사용
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss EEE"
        lblCurrentTime.text = "현재시간 : " + formatter.string(from: date as Date)
    }
    
}

