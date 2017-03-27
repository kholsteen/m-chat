//
//  SumStepVC.swift
//  OtsimoTest
//
//  Created by demirci on 27/03/2017.
//  Copyright © 2017 mdemirci. All rights reserved.
//

import UIKit

class SumStepVC: UIViewController {

    @IBOutlet var icon: UIImageView!
    var total = 0
    var level = OtizmLevel.none
    var myEmail:UITextField = UITextField(frame: CGRect(x: 0, y: 0, width: 10, height: 10))
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func loadView() {
        super.loadView()
        icon.layer.cornerRadius = 50
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func showResult(_ sender: UIButton) {
         showResultScene(total: self.total)
    }
    @IBAction func done(_ sender: UIButton) {
        
        let userDefault = UserDefaults.standard
        userDefault.removeObject(forKey: CacheKeys.mChatKey)
        self.dismiss(animated: true, completion: nil)
    }
    
    //AlertView

    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
