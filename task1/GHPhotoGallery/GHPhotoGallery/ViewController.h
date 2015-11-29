//
//  ViewController.h
//  GHPhotoGallery
//
//  Created by Anatoliy on 11/29/15.
//  Copyright © 2015 mobex. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UICollectionViewController  <UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout>

@property (nonatomic, strong) NSMutableArray *imagesArray;

@end

