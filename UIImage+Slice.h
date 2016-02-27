//
//  UIImage+Slice.h
//
//  Created by Jared Halpern on 2/24/16.
//  Copyright © 2016 Jared Halpern. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Slice)
- (NSMutableArray *)sliceImageIntoVerticalPieces:(NSInteger)numPieces;
@end
