//
//  ImageScrollView.h
//  LargeImageDownsizingOC
//
//  Created by abctm on 2020/7/6.
//  Copyright © 2020 abctm. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class TiledImageView;

@interface ImageScrollView : UIScrollView

@property(nonatomic, strong) UIImage *image;
@property(nonatomic, strong) TiledImageView *backTiledView;

- (instancetype)initWithFrame:(CGRect)frame image:(UIImage *)image;

@end

NS_ASSUME_NONNULL_END
