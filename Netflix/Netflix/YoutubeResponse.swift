//
//  YoutubeResponse.swift
//  Netflix
//
//  Created by Aurelio Le Clarke on 19.03.2022.
//

import Foundation

struct YoutubeResponse: Codable {
    
    let items: [VideoElement]
}
struct VideoElement: Codable {
    
    let id: IdVideoElement
}
struct IdVideoElement: Codable {
    let kind: String
    let videoId: String
}
