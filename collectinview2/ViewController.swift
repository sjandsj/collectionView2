//
//  ViewController.swift
//  collectinview2
//
//  Created by mac on 03/06/19.
//  Copyright © 2019 gammastack. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let array = [["name":"Subhanshu", "location":"Jablapur"],["name":"Ritwik", "location":"Sagar"],["name":"Akshat", "location":"Dewas"],["name":"aman", "location":"Bhopal"],["name":"Ayush", "location":"Bhopal"],["name":"Khatloyiya", "location":"Jablapur"],["name":"Puneet", "location":"Nagda"],["name":"Shubham", "location":"Gwalior"],["name":"Prannet", "location":"Jablapur"],["name":"Srajan", "location":"Jablapur"],["name":"Sansa", "location":"Winterfell"],["name":"Gendry", "location":"Kings Landing"],["name":"Tyrion Lannister", "location":"Castely Rock"],["name":"Walder Frey", "location":"Riverrun"]]
    
   func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return array.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell:CollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        let dict = array[indexPath.row]
        cell.nameLabel.text = dict["name"]
        cell.locationLabel.text = dict["location"]
        return cell
        }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let detail:secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "secondViewController") as! secondViewController
        detail.dit = array[indexPath.row]

        self.navigationController?.pushViewController(detail, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

