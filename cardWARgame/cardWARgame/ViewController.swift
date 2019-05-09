//
//  ViewController.swift
//  cardWAR
//
//  Created by Kareem Sultan on 5/6/19.
//  Copyright © 2019 Kareem Sultan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var leftimageview: UIImageView!
    
    @IBOutlet weak var rightimageview: UIImageView!
    
    @IBOutlet weak var leftscorelable: UILabel!
    
    @IBOutlet weak var rightscorelable: UILabel!
    
    var leftscore = 0
    var rightscore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func dealtap(_ sender: Any) {
        
        // randomize some numbers
        let leftnumber = Int.random(in: 2...14)
        let rightnumber = Int.random(in: 2...14)
        
        // update the image views
        leftimageview.image = UIImage(named: "card\(leftnumber)")
        rightimageview.image = UIImage(named: "card\(rightnumber)")
        
        //  compare the random numbers
        if leftnumber > rightnumber
        {
        leftscore+=1
            leftscorelable.text = String(leftscore)
    }
        
   else if leftnumber < rightnumber
        {
        
    rightscore+=1
            rightscorelable.text = String(rightscore)

}

}

}
