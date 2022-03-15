//
//  Movie.swift
//  Netflix
//
//  Created by Aurelio Le Clarke on 14.03.2022.
//

import Foundation

struct TrendingTitleResponse: Codable {
    let results: [Title]
}
struct Title: Codable {
    let id: Int
    let media_type: String?
    let originial_name: String?
    let original_titlel: String?
    let poster_path: String?
    let overview: String?
    let vote_count: Int
    let release_date: String?
    let vote_average: Double
    
    
}
