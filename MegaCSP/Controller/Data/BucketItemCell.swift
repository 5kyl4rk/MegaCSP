//
//  BucketItemCell.swift
//  DataProject
//
//  Created by Fitzgerald, Skyler on 11/30/18.
//  Copyright © 2018 CTEC. All rights reserved.
//

import UIKit

class BucketItemCell: UITableViewCell
{

    @IBOutlet weak var bucketItemSymbol: UILabel!
    @IBOutlet weak var bucketItemSignature: UILabel!
    @IBOutlet weak var bucketItemText: UILabel!
    
    var currentBucketItem : BucketItem!
    {
        didSet
        {
            updateCellView()
        }
    }
    
    private func updateCellView() -> Void
    {
        if (currentBucketItem != nil)
        {
            bucketItemSignature.text = currentBucketItem.itemAuthor
            bucketItemText.text = currentBucketItem.itemContents
        }
        else
        {
            bucketItemSignature.text = "Author goes here"
            bucketItemText.text = "Bucket item contents here"
        }
        
        bucketItemSymbol.text = randomEmoji()
    }
    private func randomEmoji() -> String
    {
        let emojiStart = 0x1F601
        let emojiEnd = 0xF64F
        let symbolStart = 0x1F680
        let symbolEnd = 0x1F6C5
        
        let emojiRange = 79
        let symbolRange = 70
        
        let ascii = emojiStart + Int(arc4random_uniform(UInt32(emojiRange)))
        let emoji = UnicodeScalar(ascii)?.description
        
        return emoji!
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
