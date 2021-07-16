//
//  MainViewController.swift
//  DdalBae
//
//  Created by 윤형준 on 2021/07/16.
//

import UIKit

class MainViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    @IBOutlet weak var TestBtn: UIButton!
    @IBOutlet weak var TopView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        TopView.layer.cornerRadius = 10
        TestBtn.layer.shadowColor = UIColor.black.cgColor
        TestBtn.layer.opacity = 10
        TestBtn.layer.shadowOffset = CGSize(width: 3, height: 3)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let  cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        return cell
    }

}

extension MainViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 150, height: 200)
    }
}
