//
//  TiledImageView.h
//  LargeImageDownsizingOC
//
//  Created by abctm on 2020/7/6.
//  Copyright © 2020 abctm. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TiledImageView : UIView
{
    CGFloat imageScale;
    UIImage *image;
    CGRect imageRect;
}
@property(nonatomic, strong) UIImage *image;

- (instancetype)initWithFrame:(CGRect)frame image:(UIImage *)image scale:(CGFloat)scale;

@end

NS_ASSUME_NONNULL_END
