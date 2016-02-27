# UIImage-Slice
A Category to slice an image into an arbitrary number of vertical slices

Usage:

    #import "UIImage+Slice.h"

    // ...

    NSInteger numSlices = 4;
    UIImage *mainImage = [UIImage imageNamed:@"HoneyBadger.jpg"];
    NSMutableArray *imagePieces = [mainImage sliceImageIntoVerticalPieces:numSlices];
