//
//  ViewController.swift
//  OrderPo
//
//  Created by yingyi on 16/1/11.
//  Copyright © 2016年 yingyi. All rights reserved.
//


import UIKit



class ViewController: UIViewController {

    var SWidth:CGFloat = UIScreen.mainScreen().bounds.width
    var SHeight:CGFloat = UIScreen.mainScreen().bounds.height
    
    var vegettablesArray:[String] = ["A区","B区","C区","全部"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.grayColor()
        setDeskListView()
        setVegetables()
    }
    //显示所有的桌台
    func setDeskListView(){
        
        let deskListView:UIScrollView = UIScrollView.init(frame: CGRectMake(0, 0, SWidth * 0.7,SHeight-30))
        deskListView.backgroundColor = UIColor.yellowColor()
        view.addSubview(deskListView)
    }
    //显示所有的菜类
    func setVegetables(){
        let deskListView:UIScrollView = UIScrollView.init(frame: CGRectMake(SWidth * 0.7, 0, SWidth * 0.3,SHeight-30))
        deskListView.backgroundColor = UIColor.brownColor()
        var index = 0
        for index = 0;index < vegettablesArray.count;index++ {
            
            let button:UIButton = UIButton.init(frame: CGRectMake(SWidth * 0.05, (CGFloat)(50 + index * 60) , SWidth * 0.2, 50))
            button.backgroundColor = UIColor.redColor()
            button.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
            
            button.setTitle(vegettablesArray[index], forState: UIControlState.Normal)
//            print(vegettablesArray[index])
            deskListView.addSubview(button)
        }
        
        view.addSubview(deskListView)

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

