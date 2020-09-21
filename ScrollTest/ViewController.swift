//
//  ViewController.swift
//  ScrollTest
//
//  Created by Sakurako Shimbori on 2020/09/21.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource,UICollectionViewDelegate,UICollectionViewDataSource{

    
    let posts = ["今日は楽しかったね","ゲームで負けたのが悔しい","負けてられない","特訓中","野球の練習しよ","勉強もしないと"]
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var collectionViewConstraintHeight: NSLayoutConstraint!
    @IBOutlet weak var tableViewConstraintHeight: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        collectionView.delegate = self
        collectionView.dataSource = self
    }
//    override func viewDidLayoutSubviews() {
//
////      scrollView.contentSize = contentView.frame.siz
//      scrollView.flashScrollIndicators()
//
    //    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        // Set collectionView height to content size height.
        if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            collectionViewConstraintHeight.constant = layout.collectionViewContentSize.height
            view.layoutIfNeeded()
            view.frame.size.height = layout.collectionViewContentSize.height
        }
        tableView.layoutIfNeeded()
        tableViewConstraintHeight.constant = tableView.contentSize.height
        view.frame.size.height = tableView.contentSize.height
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "postCell", for: indexPath)
        cell.textLabel?.text = posts[indexPath.row]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "redCell", for: indexPath)
        cell.backgroundColor = UIColor.red
        return cell
    }
    



}

