//
//  ViewController.m
//  GHPhotoGallery
//
//  Created by Anatoliy on 11/29/15.
//  Copyright © 2015 mobex. All rights reserved.
//

#import "ViewController.h"

#import "CollectionViewCell.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    [self loadImages];
    [self setupCollectionView];
}

-(void)loadImages {
    self.imagesArray = [[NSMutableArray alloc] init];
    NSString *sourcePath = [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:@"Assets"];
    //NSArray *temp = [[NSFileManager defaultManager] contentsOfDirectoryAtPath:sourcePath error:NULL];
    [self.imagesArray addObjectsFromArray:[[NSFileManager defaultManager] contentsOfDirectoryAtPath:sourcePath error:NULL]];
    
    //self.imagesArray = [[NSFileManager defaultManager] contentsOfDirectoryAtPath:sourcePath error:NULL];
}

-(void)setupCollectionView {
   // [self.collectionView registerClass:[CollectionViewCell class] forCellWithReuseIdentifier:@"myCell"];
    
    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
    [flowLayout setScrollDirection:UICollectionViewScrollDirectionHorizontal];
    [flowLayout setMinimumInteritemSpacing:0.0f];
    [flowLayout setMinimumLineSpacing:0.0f];
    [self.collectionView setPagingEnabled:YES];
    [self.collectionView setCollectionViewLayout:flowLayout];
}


-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    return self.collectionView.frame.size;
}

- (NSInteger) numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger) collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.imagesArray.count;
}

- (UICollectionViewCell *) collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    CollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"myCell" forIndexPath:indexPath];
    
    
    NSString *imageName = [self.imagesArray objectAtIndex:indexPath.row];
    [cell setImageName:imageName];
    [cell updateCell];
    
    //cell.image.image = [UIImage imageNamed:@"Hamed-Hazel-Purple-Swag-AAP-Rocky.jpg"];
    
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
