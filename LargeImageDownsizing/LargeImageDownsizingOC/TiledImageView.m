//
//  TiledImageView.m
//  LargeImageDownsizingOC
//
//  Created by abctm on 2020/7/6.
//  Copyright © 2020 abctm. All rights reserved.
//

#import "TiledImageView.h"
#import <QuartzCore/QuartzCore.h>

@implementation TiledImageView

@synthesize image;

+ (Class)layerClass {
    return [CATiledLayer class];
}

- (instancetype)initWithFrame:(CGRect)frame image:(UIImage *)image scale:(CGFloat)scale {
    if (self = [super initWithFrame:frame]) {
        self.image = image;
        
        imageRect = CGRectMake(0.0f, 0.0f, CGImageGetWidth(image.CGImage), CGImageGetHeight(image.CGImage));
        imageScale = scale;
        CATiledLayer *tiledLayer = (CATiledLayer *)[self layer];
        
//         levelsOfDetail和levelsOfDetailBias确定如何在不同的缩放级别渲染图层。 这仅在视图缩放时才重要，因为一旦视图完成缩放，便会以正确的大小和比例创建新的TiledImageView。
        tiledLayer.levelsOfDetail = 4;
        tiledLayer.levelsOfDetailBias = 4;
        tiledLayer.tileSize = CGSizeMake(512.0, 512.0);
        
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSaveGState(context);
    
    CGContextScaleCTM(context, imageScale, imageScale);
    CGContextDrawImage(context, imageRect, image.CGImage);
    CGContextRestoreGState(context);
}

@end
