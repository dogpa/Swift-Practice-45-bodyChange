//
//  ViewController.swift
//  Swift Practice # 45 bodyChange
//
//  Created by CHEN PEIHAO on 2021/7/26.
//

import UIKit

class ViewController: UIViewController {
    
    //身體
    @IBOutlet var bodyUIView: UIView!
    
    //五官
    @IBOutlet var faceUIView: UIView!
    
    //眼鏡
    @IBOutlet var glassUIView: UIView!
    
    //頭髮
    @IBOutlet var hairUIView: UIView!
    
    //segmented controller
    @IBOutlet weak var viewSelectSegmentedController: UISegmentedControl!
    
    //身體照片顯示位置
    @IBOutlet weak var bodyUIImageView: UIImageView!
    
    //五官照片顯示位置
    @IBOutlet weak var faceUIImageView: UIImageView!
    
    //眼鏡照片顯示位置
    @IBOutlet weak var glassUIImageView: UIImageView!
    
    //頭髮照片顯示位置
    @IBOutlet weak var hairUIImageView: UIImageView!
    
    //定義初始畫面下方的view是誰出現
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        bodyUIView.isHidden = false
        faceUIView.isHidden = true
        hairUIView.isHidden = true
        glassUIView.isHidden = true
    }
    
    //判斷不同的segmented controller 選擇下面的view出現的選項
    @IBAction func fourTypeChoose(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            bodyUIView.isHidden = false
            faceUIView.isHidden = true
            hairUIView.isHidden = true
            glassUIView.isHidden = true
        }else if sender.selectedSegmentIndex == 1 {
            bodyUIView.isHidden = true
            faceUIView.isHidden = false
            hairUIView.isHidden = true
            glassUIView.isHidden = true
        }else if sender.selectedSegmentIndex == 2 {
            bodyUIView.isHidden = true
            faceUIView.isHidden = true
            hairUIView.isHidden = false
            glassUIView.isHidden = true
        }else{
            bodyUIView.isHidden = true
            faceUIView.isHidden = true
            hairUIView.isHidden = true
            glassUIView.isHidden = false
        }
}
    //身體的button action
    @IBAction func bodyChoose(_ sender: UIButton) {
        let bodyImage = sender.currentImage
        bodyUIImageView.image = bodyImage
    }
    //臉的button action
    @IBAction func faceChoose(_ sender: UIButton) {
        let faceImage = sender.currentImage
        faceUIImageView.image = faceImage
    }
    //hair的button action
    @IBAction func hairChoose(_ sender: UIButton) {
        let hairImage = sender.currentImage
        hairUIImageView.image = hairImage
    }
    //glass的button action

    @IBAction func glassChoose(_ sender: UIButton) {
        let glassImage = sender.currentImage
        glassUIImageView.image = glassImage
    }
    
    
    @IBAction func randomButton(_ sender: UIButton) {
        //body的隨機顯示
        bodyUIImageView.image = UIImage(named: "body\(Int(Int.random(in: 0...8)))")
        //face的隨機顯示
        faceUIImageView.image = UIImage(named: "face\(Int.random(in: 0...8))")
        //hair的隨機顯示
        hairUIImageView.image = UIImage(named: "hair\(Int.random(in: 0...8))")
        //glass的隨機顯示
        glassUIImageView.image = UIImage(named: "glass\(Int.random(in: 0...8))")
    }
    
}

