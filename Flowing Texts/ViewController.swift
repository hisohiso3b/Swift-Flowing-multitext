//
//  ViewController.swift
//  Flowing Texts
//
//  Created by hiso on 2015/08/17.
//  Copyright (c) 2015年 祐輔 花田. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let items: [Float: String] = [
        0.0:"come",
        0.1:"foo",
        0.2:"here",
        0.3:"Hey",
        0.4:"hey",
        0.5:"Hello",
        0.6:"hey",
        1.1:"foo",
        1.2:"here",
        1.3:"Hey",
        1.4:"YEAAAAAAAAAAAA",
        1.5:"Hello",
        1.6:"hey",
        2.1:"FOOOOOOOOOOOOOOOO",
        2.2:"here",
        2.3:"Hey",
        2.4:"qasdftgyhujkiolp;",
        2.5:"Hello",
        2.6:"hey",
        3.1:"noconocc",
        3.2:"here",
        3.3:"noon",
        3.4:"hey",
        3.5:"Hello",
        3.6:"hey",
        4.1:"foo",
        4.2:"KEY!!!!!!!!!!!!",
        4.3:"Hey",
        4.4:"hey",
        4.5:"Hello",
        4.6:"hey"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        NSTimer.scheduledTimerWithTimeInterval(
            0.1,
            target:self,selector:Selector("searchComments"),
            userInfo: nil,
            repeats: true)
    }
    
    override func viewDidAppear(animated: Bool) {
    }
    
    var timer: Double = 0
    var rows: [Bool] = [true,true,true,true,true,true,true,true]
    
    func searchComments(){
        println(timer)
        println(items[Float(timer)])
        if items[Float(timer)] != nil {
            var i:Int
            for i=0; i<8; i++ {
                if rows[i] {
                    instantiateText(items[Float(timer)]!, row: i)
                    rows[i] = false
                    break
                }else{
                    rows[i] = true
                }
            }
        }
        timer+=0.1
    }
    
    func instantiateText(text: String, row: Int){
        let myLabel: UILabel = UILabel(frame: CGRectMake(0,0,200,50))
        myLabel.text = text
        myLabel.textColor = UIColor.blackColor()
        myLabel.shadowColor = UIColor.grayColor()
        myLabel.textAlignment = NSTextAlignment.Center
        myLabel.layer.position = CGPoint(
            x: self.view.bounds.width+100,
            y: self.view.bounds.height/2 - CGFloat(20*row))
        self.view.addSubview(myLabel)
        
        flowingAnimation(myLabel)
    }
    
    func flowingAnimation(targetLabel: UILabel){
        UIView.animateWithDuration(NSTimeInterval(CGFloat(6.0)),
            animations: {() -> Void in
                targetLabel.center = CGPoint(x: -1*self.view.bounds.width,y: targetLabel.layer.position.y);
            }, completion: {(Bool) -> Void in
                targetLabel.removeFromSuperview()
        })
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}
