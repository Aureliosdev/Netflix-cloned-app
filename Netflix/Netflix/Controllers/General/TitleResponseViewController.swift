//
//  TitleResponseViewController.swift
//  Netflix
//
//  Created by Aurelio Le Clarke on 20.03.2022.
//

import UIKit
import WebKit

class TitleResponseViewController: UIViewController {
	
    private let webView: WKWebView = {
        
        let webview = WKWebView()
        webview.translatesAutoresizingMaskIntoConstraints = false
        return webview
    }()
    
    private let titleLabel: UILabel = {
        
    let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Scorpion"
        label.font = .systemFont(ofSize: 22,weight: .bold)
        return label
    }()
    
    private let overviewLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines  = 0
        label.text = "I'm the Scorpion"
        label.font = .systemFont(ofSize: 18,weight: .regular)
        return label
        
    }()
    private let downloadButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .red
        button.setTitle("Download", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 9
        button.layer.masksToBounds = true
        return button
        
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        view.addSubview(webView)
        view.addSubview(downloadButton)
        view.addSubview(overviewLabel)
        view.addSubview(titleLabel)
   ConfigureConstraints()
    }
    
    
    func ConfigureConstraints() {
        let webViewConstraints = [
        
            webView.topAnchor.constraint(equalTo: view.topAnchor,constant: 50),
            webView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            webView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            webView.heightAnchor.constraint(equalToConstant: 300)
            
        ]
    
    let titleViewConstraints = [
        titleLabel.topAnchor.constraint(equalTo: webView.bottomAnchor,constant: 20),
        titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 20)
        
    
    ]
        
       let overViewConstraints = [
       
        overviewLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor,constant:  15),
        overviewLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 20),
        overviewLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor)
       ]
        
        let DownloadbuttonConstraints = [
            downloadButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            downloadButton.topAnchor.constraint(equalTo: overviewLabel.bottomAnchor,constant: 25),
            downloadButton.widthAnchor.constraint(equalToConstant: 150),
            downloadButton.heightAnchor.constraint(equalToConstant: 40)
        
        ]
        
        NSLayoutConstraint.activate(titleViewConstraints)
        NSLayoutConstraint.activate(webViewConstraints)
        NSLayoutConstraint.activate(overViewConstraints)
        NSLayoutConstraint.activate(DownloadbuttonConstraints)
    
    }
    
    
    func configure(with model: TitlePreviewViewModel) {
        titleLabel.text = model.title
        overviewLabel.text = model.titleOverView
        guard let url = URL(string: "https://www.youtube.com/embed/\(model.youtubeView.id.videoId)") else {return}
    
        webView.load(URLRequest(url: url))
    }
   
    
    
    
}
