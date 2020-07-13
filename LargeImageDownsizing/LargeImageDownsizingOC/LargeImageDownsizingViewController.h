//
//  LargeImageDownsizingViewController.h
//  LargeImageDownsizingOC
//
//  Created by abctm on 2020/7/6.
//  Copyright © 2020 abctm. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LargeImageDownsizingViewController : UIViewController

@property (retain) UIImage* destImage;

-(void)downsize:(id)arg;
-(void)updateScrollView:(id)arg;
-(void)initializeScrollView:(id)arg;
-(void)createImageFromContext;

@end

