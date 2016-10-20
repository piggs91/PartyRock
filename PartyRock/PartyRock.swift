//
//  PartyRock.swift
//  PartyRock
//
//  Created by roux g. buciu on 2016-10-19.
//  Copyright © 2016 roux g. buciu. All rights reserved.
//

import Foundation

class PartyRock {
    
    private var _imageURL: String!
    private var _videoURL: String!
    private var _videoTitleURL: String!
    
    var imageURL: String {
        return _imageURL
    }
    
    var videoURL: String {
        return _videoURL
    }
    
    var videoTitleURL: String {
        return _videoTitleURL
    }
    
    init(imageURL: String, videoURL: String, videoTitleURL: String) {
        _imageURL = imageURL
        _videoURL = videoURL
        _videoTitleURL = videoTitleURL
    }
    
}
