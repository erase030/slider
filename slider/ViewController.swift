//
//  ViewController.swift
//  slider
//
//  Created by dit08 on 2019. 5. 2..
//  Copyright © 2019년 dit. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var tv: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tv.dataSource = self
        tv.delegate = self
    }

    @IBAction func sliderMoved(_ sender: Any) {
        lbl.text = String(Int(slider.value))
        tv.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tv.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let timeTv = Int(slider.value)
        cell.textLabel?.text = String(timeTv + indexPath.row)
        
        return cell
    }
    

}

