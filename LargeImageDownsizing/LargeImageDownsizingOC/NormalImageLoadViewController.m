//
//  NormalImageLoadViewController.m
//  LargeImageDownsizingOC
//
//  Created by abctm on 2020/7/6.
//  Copyright © 2020 abctm. All rights reserved.
//

#import "NormalImageLoadViewController.h"

@interface NormalImageLoadViewController ()
{
//    UIImageView *imageView;
}

@property(nonatomic, strong) UIImageView *imageView;
@end

@implementation NormalImageLoadViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.imageView = [[UIImageView alloc] initWithFrame:self.view.bounds];
    NSString *path = [[NSBundle mainBundle] pathForResource:@"large_leaves_70mp" ofType:@"jpg"];
    self.imageView.image = [[UIImage alloc] initWithContentsOfFile:path];
    self.imageView.backgroundColor = UIColor.redColor;
    [self.view addSubview:self.imageView];
    
    [self.view setBackgroundColor:[UIColor whiteColor]];
}

@end
