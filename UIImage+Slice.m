//
//  UIImage+Slice.m
//
//  Created by Jared Halpern on 2/24/16.
//  Copyright © 2016 Jared Halpern. All rights reserved.
//

#import "UIImage+Slice.h"

@implementation UIImage (Slice)

- (NSMutableArray *)sliceImageIntoVerticalPieces:(NSInteger)numPieces; {

    CGFloat imgWidth = self.size.width/numPieces;
    CGFloat imgHeight = self.size.height;

    NSMutableArray *resultImagesArray = [@[] mutableCopy];
    
    CGRect imgFrame = CGRectMake(0, 0, imgWidth, imgHeight);
    CGImageRef imgRef = CGImageCreateWithImageInRect(self.CGImage, imgFrame);
    UIImage *resultImage = [UIImage imageWithCGImage:imgRef];
    [resultImagesArray addObject:resultImage];
    CGImageRelease(imgRef);
    
    for (int i = 1; i < numPieces; i++) {
        imgFrame = CGRectMake(imgWidth * i, 0, imgWidth, imgHeight);
        CGImageRef imgRef = CGImageCreateWithImageInRect(self.CGImage, imgFrame);
        UIImage *resultImage = [UIImage imageWithCGImage:imgRef];
        [resultImagesArray addObject:resultImage];
        CGImageRelease(imgRef);
    }
    
    return resultImagesArray;
}

@end
