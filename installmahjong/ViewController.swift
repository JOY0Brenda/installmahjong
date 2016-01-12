//
//  ViewController.swift
//  installmahjong
//
//  Created by appleofuestc on 16/1/11.
//  Copyright © 2016年 appleofuestc. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    let btnTag:Int = 1000
    
    //数据信息
    let name_links : Dictionary<String,String> =
    [
        "四川麻将iphone":"https://itunes.apple.com/cn/app/bo-ya-si-chuan-ma-jiang/id510582247?mt=8",
        "四川麻将ipad":"https://itunes.apple.com/cn/app/bo-ya-si-chuan-ma-jianghd/id551932207?mt=8",
        "二人麻将iphone":"https://itunes.apple.com/cn/app/bo-ya-er-ren-ma-jiang/id687598024?l=en&mt=8",
        "二人麻将ipad":"https://itunes.apple.com/cn/app/bo-ya-er-ren-ma-jianghd/id768019415?l=en&mt=8",
        "麻将全集通用版":"https://itunes.apple.com/us/app/bo-ya-ma-jiang-quan-ji/id1028958610?ls=1&mt=8",
        "卡五星通用版":"https://itunes.apple.com/us/app/bo-ya-ka-wu-xing-ma-jiang/id1070437555?ls=1&mt=8",
        "广东麻将iphone":"https://itunes.apple.com/cn/app/bo-ya-guang-dong-ma-jiang/id562842492?mt=8",
        "广东麻将ipad":"https://itunes.apple.com/cn/app/bo-ya-guang-dong-ma-jianghd/id569384779?mt=8",
        "国标麻将iphone":"https://itunes.apple.com/cn/app/bo-ya-ma-jiang-zhi-chi-dan-ji/id535696118?mt=8",
        "国标麻将ipad":"https://itunes.apple.com/cn/app/bo-ya-ma-jianghd-zhi-chi-dan-ji/id572459124?mt=8",
        "上海麻将iphone":"https://itunes.apple.com/cn/app/bo-ya-shang-hai-ma-jiang/id572454019?mt=8",
        "上海麻将ipad":"https://itunes.apple.com/cn/app/bo-ya-shang-hai-ma-jianghd/id582577374?mt=8",
        "香港13张iphone":"https://itunes.apple.com/us/app/bo-ya-shi-san-zhang-ma-que/id525352713?ls=1&mt=8",
        "香港13张ipad":"https://itunes.apple.com/us/app/bo-ya-shi-san-zhang-ma-que/id504246210?ls=1&mt=8",
        "台湾16张ipad":"https://itunes.apple.com/us/app/bo-ya-shi-liu-zhang-ma-jiang/id472924591?ls=1&mt=8",
        "易信四川麻将iphone":"https://itunes.apple.com/cn/app/yi-xin-si-chuan-ma-jiang/id982433671?l=en&mt=8",
//        "天天碰碰胡iphone":"https://itunes.apple.com/us/app/tian-tian-peng-peng-hu/id898992411?ls=1&mt=8",
//        "天天碰碰胡ipad":"https://itunes.apple.com/us/app/tian-tian-peng-peng-huhd/id904837814?ls=1&mt=8",
    ]
    
    let name_links_tuples : [(String,String)] =
    [
        ("四川麻将iphone","https://itunes.apple.com/cn/app/bo-ya-si-chuan-ma-jiang/id510582247?mt=8"),
        ("四川麻将ipad","https://itunes.apple.com/cn/app/bo-ya-si-chuan-ma-jianghd/id551932207?mt=8"),
        ("二人麻将iphone","https://itunes.apple.com/cn/app/bo-ya-er-ren-ma-jiang/id687598024?l=en&mt=8"),
        ("二人麻将ipad","https://itunes.apple.com/cn/app/bo-ya-er-ren-ma-jianghd/id768019415?l=en&mt=8"),
        ("麻将全集通用版","https://itunes.apple.com/us/app/bo-ya-ma-jiang-quan-ji/id1028958610?ls=1&mt=8"),
        ("卡五星通用版","https://itunes.apple.com/us/app/bo-ya-ka-wu-xing-ma-jiang/id1070437555?ls=1&mt=8"),
        ("广东麻将iphone","https://itunes.apple.com/cn/app/bo-ya-guang-dong-ma-jiang/id562842492?mt=8"),
        ("广东麻将ipad","https://itunes.apple.com/cn/app/bo-ya-guang-dong-ma-jianghd/id569384779?mt=8"),
        ("国标麻将iphone","https://itunes.apple.com/cn/app/bo-ya-ma-jiang-zhi-chi-dan-ji/id535696118?mt=8"),
        ("国标麻将ipad","https://itunes.apple.com/cn/app/bo-ya-ma-jianghd-zhi-chi-dan-ji/id572459124?mt=8"),
        ("上海麻将iphone","https://itunes.apple.com/cn/app/bo-ya-shang-hai-ma-jiang/id572454019?mt=8"),
        ("上海麻将ipad","https://itunes.apple.com/cn/app/bo-ya-shang-hai-ma-jianghd/id582577374?mt=8"),
        ("香港13张iphone","https://itunes.apple.com/us/app/bo-ya-shi-san-zhang-ma-que/id525352713?ls=1&mt=8"),
        ("香港13张ipad","https://itunes.apple.com/us/app/bo-ya-shi-san-zhang-ma-que/id504246210?ls=1&mt=8"),
        ("台湾16张ipad","https://itunes.apple.com/us/app/bo-ya-shi-liu-zhang-ma-jiang/id472924591?ls=1&mt=8"),
        ("易信四川麻将iphone","https://itunes.apple.com/cn/app/yi-xin-si-chuan-ma-jiang/id982433671?l=en&mt=8"),
//        ("天天碰碰胡iphone","https://itunes.apple.com/us/app/tian-tian-peng-peng-hu/id898992411?ls=1&mt=8"),
//        ("天天碰碰胡ipad","https://itunes.apple.com/us/app/tian-tian-peng-peng-huhd/id904837814?ls=1&mt=8"),
    ]
    
    let device:UIDevice = UIDevice.currentDevice()
    
    //初始化table
    let table:UITableView = UITableView(frame:UIScreen.mainScreen().bounds ,
        style:UITableViewStyle.Plain)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view!.addSubview(table)
        table.dataSource = self
        table.delegate = self
        
        if device.userInterfaceIdiom == UIUserInterfaceIdiom.Pad
        {
            UIDevice.currentDevice().setValue(
                UIInterfaceOrientation.LandscapeLeft.rawValue, forKey: "orientation")
        }
        else {
            UIDevice.currentDevice().setValue(
                UIInterfaceOrientation.Portrait.rawValue, forKey: "orientation")
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func shouldAutorotate() -> Bool {
        return false
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    
    func btnClick(sender:UIButton) {
        print("btn click \(sender.tag)")
        let indexOfBtn :Int = sender.tag - btnTag
        if indexOfBtn >= 0 && indexOfBtn < name_links.count
        {
//            let dicIndex = name_links.startIndex.advancedBy(indexOfBtn)
//            let str = name_links.values[dicIndex]
            let str = name_links_tuples[indexOfBtn].1
            let url = NSURL(string: str)
            if url != nil {
                UIApplication.sharedApplication().openURL(url!)
            }
        }
    }
    
    
    func tableView(tableView: UITableView, willSelectRowAtIndexPath indexPath: NSIndexPath) -> NSIndexPath? {
        return nil
    }
    
    //table的cell高度
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if device.userInterfaceIdiom == UIUserInterfaceIdiom.Phone
        {
            return 70
        }
        else
        {
            return 100
        }
    }
    
    //table的行数
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return name_links.count
    }
    
    //cell
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell:UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: nil)
        
        let title :String = name_links_tuples[indexPath.row].0
        
        cell.textLabel?.text = title
        
        let btn:UIButton = UIButton(type: UIButtonType.Custom)
        if device.userInterfaceIdiom == UIUserInterfaceIdiom.Pad {
            btn.frame = CGRectMake(UIScreen.mainScreen().bounds.width-250, 20, 80, 60)
        }
        else {
            btn.frame = CGRectMake(UIScreen.mainScreen().bounds.width-100, 10, 80, 50)
        }
        
        btn.setTitle("下载", forState: UIControlState.Normal)
        btn.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        btn.backgroundColor = UIColor.redColor()
        btn.tag = indexPath.row+btnTag
        btn.addTarget(self, action: "btnClick:", forControlEvents: UIControlEvents.TouchUpInside)
        
        cell.contentView.addSubview(btn)
        
        return cell
    }

}

