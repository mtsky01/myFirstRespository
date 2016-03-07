//
//  RestaurantTableViewController.swift
//  FoodPin
//
//  Created by 马腾 on 16/2/29.
//  Copyright © 2016年 马腾. All rights reserved.
//

import UIKit

class RestaurantTableViewController: UITableViewController {
    /*
    var 餐馆 = ["咖啡胡同","霍米","茶.家","洛伊斯咖啡","贝蒂生蚝","福气餐馆","阿波画室","伯克街面包坊","黑氏巧克力","惠灵顿雪梨","北州","布鲁克林塔菲","格雷厄姆大街肉","华夫饼&沃夫","五页","眼光咖啡","忏悔","巴拉菲纳","多尼西亚","皇家橡树","泰咖啡"]
    var 餐馆图片 = ["cafedeadend.jpg","homei.jpg","teakha.jpg","cafeloisl.jpg","petiteoyster.jpg","forkeerestaurant.jpg","posatelier.jpg","bourkestreetbakery.jpg","haighschocolate.jpg","palominoespresso.jpg","upstate.jpg","traif.jpg","grahamavenuemeats.jpg","wafflewolf.jpg","fiveleaves.jpg","cafelore.jpg","confessional.jpg","barrafina.jpg","donostia.jpg","royaloak.jpg","thaicafe.jpg"]
    var 餐馆地点 = ["香港","香港","香港","香港","香港","香港","香港","悉尼","悉尼","悉尼","纽约","纽约","纽约","纽约","纽约","纽约","纽约","伦敦","伦敦","伦敦","伦敦"]
    var 餐馆类型 = ["咖啡&茶店","咖啡","茶屋","奥地利式&休闲饮料","法式","面包房","面包房","巧克力","咖啡","美式&海鲜","美式","美式","早餐&早午餐","法式&茶","咖啡&茶","拉丁美式","西班牙式","西班牙式","西班牙式","英式","泰式"]
    var 去过的餐馆 = [Bool](count: 21, repeatedValue: false)
*/
    var restaurants = [
    Restaurant(name: "咖啡胡同", type: "咖啡&茶店", location: "香港", image: "cafedeadend.jpg", isVisited: false) ,
    Restaurant(name: "霍米", type: "咖啡", location: "香港上环文咸东街太平山22-24A,B店", image: "homei.jpg", isVisited: false) ,
    Restaurant(name: "茶.家", type: "茶屋", location: "香港", image: "teakha.jpg", isVisited: false) ,
    Restaurant(name: "洛伊斯咖啡", type: "奥地利式&休闲饮料", location: "香港", image: "cafeloisl.jpg", isVisited: false) ,
    Restaurant(name: "贝蒂生蚝", type: "法式", location: "香港", image: "petiteoyster.jpg", isVisited: false) ,
    Restaurant(name: "福气餐馆", type: "面包房", location: "香港", image: "forkeerestaurant.jpg", isVisited: false) ,
    Restaurant(name: "阿波画室", type: "面包房", location: "香港", image: "posatelier.jpg", isVisited: false) ,
    Restaurant(name: "伯克街面包坊", type: "巧克力", location: "悉尼", image: "bourkestreetbakery.jpg", isVisited: false) ,
    Restaurant(name: "黑氏巧克力", type: "咖啡", location: "悉尼", image: "haighschocolate.jpg", isVisited: false) ,
    Restaurant(name: "惠灵顿雪梨", type: "美式&海鲜", location: "悉尼", image: "palominoespresso.jpg", isVisited: false) ,
    Restaurant(name: "北州", type: "美式", location: "纽约", image: "upstate.jpg", isVisited: false) ,
    Restaurant(name: "布鲁克林塔菲", type: "美式", location: "纽约", image: "traif.jpg", isVisited: false) ,
    Restaurant(name: "格雷厄姆大街肉", type: "早餐&早午餐", location: "纽约", image: "grahamavenuemeats.jpg", isVisited: false) ,
    Restaurant(name: "华夫饼&沃夫", type: "法式&茶", location: "纽约", image: "wafflewolf.jpg", isVisited: false) ,
    Restaurant(name: "五页", type: "咖啡&茶", location: "纽约", image: "fiveleaves.jpg", isVisited: false) ,
    Restaurant(name: "眼光咖啡", type: "拉丁美式", location: "纽约", image: "cafelore.jpg", isVisited: false) ,
    Restaurant(name: "忏悔", type: "西班牙式", location: "纽约", image: "confessional.jpg", isVisited: false) ,
    Restaurant(name: "巴拉菲纳", type: "西班牙式", location: "伦敦", image: "barrafina.jpg", isVisited: false) ,
    Restaurant(name: "多尼西亚", type: "西班牙式", location: "伦敦", image: "donostia.jpg", isVisited: false) ,
    Restaurant(name: "皇家橡树", type: "英式", location: "伦敦", image: "royaloak.jpg", isVisited: false) ,
    Restaurant(name: "泰咖啡", type: "泰式", location: "伦敦", image: "thaicafe.jpg", isVisited: false)
        ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .Plain, target: nil, action: nil)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return restaurants.count
    }
    //选择了行以后的操作
    /*override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let alert = UIAlertController(title: "亲，你选择了我", message: "消息", preferredStyle: UIAlertControllerStyle.ActionSheet)
        let cancelAction = UIAlertAction(title: "取消", style: UIAlertActionStyle.Cancel, handler: nil)
        let 拨打行为的处理 = {(action: UIAlertAction) -> Void in
            let alert = UIAlertController(title: "提示", message: "您拨打的电话号码暂时无法接通", preferredStyle: .Alert)
            let action = UIAlertAction(title: "ok", style: .Default, handler: nil)
            alert.addAction(action)
            self.presentViewController(alert, animated: true, completion: nil)
        }
        let dialAction = UIAlertAction(title: "拨打 021-6532 \(indexPath.row + 1)", style: .Default, handler: 拨打行为的处理)
        
        let 我来过 = UIAlertAction(title: "我来过", style: .Default) {(_) -> Void in
            let cell = tableView.cellForRowAtIndexPath(indexPath)
            cell?.accessoryType = UITableViewCellAccessoryType.Checkmark
            self.去过的餐馆[indexPath.row] = true
        }
        alert.addAction(cancelAction)
        alert.addAction(dialAction)
        alert.addAction(我来过)
        self.presentViewController(alert, animated: true, completion: nil)
    }
*/
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! CustomTableViewCell

        // Configure the cell...
        cell.restaurantimage.image = UIImage(named: restaurants[indexPath.row].image)
        cell.restaurantName.text = restaurants[indexPath.row].name
        cell.restaurantType.text = restaurants[indexPath.row].type
        cell.location.text = restaurants[indexPath.row].location
        cell.restaurantimage.layer.cornerRadius = cell.restaurantimage.frame.size.width / 2
        cell.restaurantimage.clipsToBounds = true
        if restaurants[indexPath.row].isVisited == true {
            cell.accessoryType = .Checkmark
        }else{
            cell.accessoryType = .None
        }
        //下面一行为上面if判断句的简写，三元运算
        //cell.accessoryType = 去过的餐馆[indexPath.row] ? .Checkmark : .None
        //cell.textLabel?.text = 餐馆[indexPath.row]
       // cell.imageView?.image = UIImage(named: 餐馆图片[indexPath.row])
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            restaurants.removeAtIndex(indexPath.row)
            //tableView.reloadData()
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    override func tableView(tableView: UITableView, editActionsForRowAtIndexPath indexPath: NSIndexPath) -> [UITableViewRowAction]? {
        let 分享行为 = UITableViewRowAction(style: .Default, title: "分享") {
            (action,indexPath) -> Void in
            let alert = UIAlertController(title: "分享到", message: "请选择您要分享的社交类型", preferredStyle: .ActionSheet)
            let qqAction = UIAlertAction(title: "qq", style: .Default, handler: nil)
            let sinaAction = UIAlertAction(title: "sina", style: .Default, handler: nil)
            let wxAction = UIAlertAction(title: "微信", style: .Default, handler: nil)
            alert.addAction(qqAction)
            alert.addAction(sinaAction)
            alert.addAction(wxAction)
            self.presentViewController(alert, animated: true, completion: nil)
        }
        
        分享行为.backgroundColor = UIColor(red: 218/255, green: 225/255, blue: 218/255, alpha: 1)
        
        let 删除行为 = UITableViewRowAction(style: .Default, title: "删除") {
            (action,indexPath) -> Void in
            self.restaurants.removeAtIndex(indexPath.row)
            //self.餐馆图片.removeAtIndex(indexPath.row)
            //self.餐馆地点.removeAtIndex(indexPath.row)
            //self.餐馆类型.removeAtIndex(indexPath.row)
            //self.去过的餐馆.removeAtIndex(indexPath.row)
            //tableView.reloadData()
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
            
        }
        return [分享行为,删除行为]
    }
    

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showRestaurantDetail" {
            let destVC = segue.destinationViewController as! DetailTableViewController
            destVC.restaurant = restaurants[(tableView.indexPathForSelectedRow!.row)]
        }
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    

}
