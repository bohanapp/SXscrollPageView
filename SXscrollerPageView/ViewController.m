//
//  ViewController.m
//  SXscrollerPageView
//
//  Created by ShaoPro on 15/12/21.
//  Copyright © 2015年 ShaoPro. All rights reserved.
//

#import "ViewController.h"
#import "SXScrPageView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    NSMutableArray * images = [NSMutableArray array];
    
    for (NSInteger i = 0; i<8; i++)
    {
        [images addObject:[NSString stringWithFormat:@"%02ld.jpg",i+1]];
    }
    
  SXScrPageView * sxView =   [SXScrPageView direcWithtFrame:CGRectMake(0, 0, ScreenWidth, ScreenHeight) ImageArr:images AndImageClickBlock:^(NSInteger index) {
        
        NSLog(@"=== %ld ====",index);
        
    }];
    [self.view addSubview:sxView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
