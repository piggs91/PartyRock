//
//  PartyCell.swift
//  PartyRock
//
//  Created by roux g. buciu on 2016-10-19.
//  Copyright © 2016 roux g. buciu. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {

    @IBOutlet weak var videoPreviewImg: UIImageView!
    @IBOutlet weak var videoTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func updateUI(partyRock: PartyRock) {
        videoTitle.text = partyRock.videoTitleURL
        
        // WHEN DOWNLOADING STUFF ON THE INTERNET, YOU NEED TO PUT IT ON
        // AN ASYNCHRONOUS THREAD!!!
        let url = URL(string: partyRock.imageURL)!
        
        DispatchQueue.global().async {
            
            do {
                let data = try Data(contentsOf: url)
                DispatchQueue.global().sync {
                    self.videoPreviewImg.image = UIImage(data: data)
                }
            } catch {
             // handle the error
            }
            
        }
    }

}
