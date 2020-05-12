//
//  ViewController.swift
//  Storm Viewer
//
//  Created by Akshay Ramesh on 5/10/20.
//  Copyright © 2020 Akshay Ramesh. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var pictures = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Storm Viewer"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(appRecommendation))
        
        let fileManager = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fileManager.contentsOfDirectory(atPath: path)
        
        for item in items{
            if item.hasPrefix("nssl"){
                pictures.append(item)
            }
        }
        sortImageNames()
        print(pictures.sorted())
    }
    
    @objc func appRecommendation(){
        if let urlStr = NSURL(string: "https://www.zimperium.com/") {
        let objectsToShare = [urlStr]
            
        let vc = UIActivityViewController(activityItems: objectsToShare, applicationActivities: [])
        vc.popoverPresentationController?.barButtonItem = navigationItem.rightBarButtonItem
        present(vc, animated: true)
        }
    }
    
    // Number of Rows in section in table
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pictures.count
    }
    
    // populate each cell with image name from the pictures array
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Picture", for: indexPath)
        cell.textLabel?.text = pictures[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let viewController = storyboard?.instantiateViewController(identifier: "Detail") as? DetailViewController{
            viewController.selectedImage = pictures[indexPath.row]
            viewController.currentImagePosition = indexPath.row + 1
            viewController.totalNumberOfImages = String(pictures.count)
            navigationController?.pushViewController(viewController, animated: true)
        }
    }
    
    func sortImageNames() {
        self.pictures = pictures.sorted()
    }


}

