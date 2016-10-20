//
//  VideoVC.swift
//  PartyRock
//
//  Created by roux g. buciu on 2016-10-19.
//  Copyright © 2016 roux g. buciu. All rights reserved.
//

import UIKit

class VideoVC: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var videoTitleLabel: UILabel!
    
    private var _partyRock: PartyRock!
    
    var partyRock: PartyRock {
        get {
            return _partyRock
        } set {
            _partyRock = newValue
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        videoTitleLabel.text = partyRock.videoTitleURL
        webView.loadHTMLString(partyRock.videoURL, baseURL: nil)

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
