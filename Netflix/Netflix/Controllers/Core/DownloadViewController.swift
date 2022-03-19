//
//  DownloadViewController.swift
//  Netflix
//
//  Created by Aurelio Le Clarke on 09.03.2022.
//

import UIKit

class DownloadViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Downloads"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.topItem?.largeTitleDisplayMode = .always
        
        view.backgroundColor = .systemBackground
    }
    

    
}
