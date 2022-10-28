//
//  PhotoCollectionViewController.swift
//  photoCollection
//
//  Created by Suyuxiu on 2022/10/13.
//

import UIKit


var images = [Scape(name: "鵝鑾鼻公園/燈塔", imageName:"0"),Scape(name: "三仙台", imageName:"1"),Scape(name: "野柳", imageName:"2"),Scape(name: "美濃湖", imageName:"3"),Scape(name: "藍眼淚", imageName:"4"),Scape(name: "雙心石滬", imageName:"5"),Scape(name: "阿里山國家風景區", imageName:"6"),Scape(name: "水中機車", imageName:"7"),Scape(name: "嘉明湖", imageName:"8"),Scape(name: "武界", imageName: "9"),Scape(name: "明池", imageName:"10"),Scape(name: "象山夜景", imageName:"11"),Scape(name: "六十石山", imageName:"12"),Scape(name: "蓮池潭", imageName:"13"),Scape(name: "月世界", imageName:"14"),Scape(name: "彩虹教堂", imageName:"15"),Scape(name: "神秘谷步道", imageName:"16"),Scape(name: "牛稠坑", imageName:"17"),Scape(name: "井仔腳瓦盤鹽田", imageName:"18"),Scape(name: "東莒燈塔", imageName:"19"),Scape(name: "千島湖", imageName:"20")]

class PhotoCollectionViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    
    // MARK: - Navigation
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let cell = sender as? PhotoCollectionViewCell,
                   let indexPath = collectionView.indexPath(for: cell),
                   let controller = segue.destination as? DetailViewController {
            let image = images[indexPath.item]
            controller.images = image
                }
    }
  
    // MARK: UICollectionViewDataSource
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return images.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "\(PhotoCollectionViewCell.self)", for: indexPath) as! PhotoCollectionViewCell

        let imgs = images[indexPath.item]
        cell.photosImage.image = UIImage(named:imgs.imageName)
    
        return cell
    }
    
    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
