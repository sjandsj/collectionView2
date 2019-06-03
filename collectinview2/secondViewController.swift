//
//  secondViewController.swift
//  collectinview2
//
//  Created by mac on 03/06/19.
//  Copyright © 2019 gammastack. All rights reserved.
//

import UIKit

class secondViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var addresslabel: UILabel!
 
    var dit:[String: String]!

    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = dit["name"]
        addresslabel.text = dit["location"]
        
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
