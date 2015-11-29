//
//  CollectionViewCell.m
//  GHPhotoGallery
//
//  Created by Anatoliy on 11/29/15.
//  Copyright © 2015 mobex. All rights reserved.
//

#import "CollectionViewCell.h"

@implementation CollectionViewCell


-(void)updateCell {
    
    NSString *sourcePath = [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:@"Assets"];
    NSString *filename = [NSString stringWithFormat:@"%@/%@", sourcePath, self.imageName];
    
    UIImage *image = [UIImage imageWithContentsOfFile:filename];
    
    [self.image setImage:image];
    [self.image setContentMode:UIViewContentModeScaleAspectFit];
    
}


@end
