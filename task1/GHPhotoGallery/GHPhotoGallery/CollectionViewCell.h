//
//  CollectionViewCell.h
//  GHPhotoGallery
//
//  Created by Anatoliy on 11/29/15.
//  Copyright © 2015 mobex. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CollectionViewCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIImageView *image;

@property (nonatomic, strong) NSString *imageName;

-(void)updateCell;

@end
