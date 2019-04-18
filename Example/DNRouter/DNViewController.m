//
//  DNViewController.m
//  DNRouter
//
//  Created by 418589912@qq.com on 03/11/2019.
//  Copyright (c) 2019 418589912@qq.com. All rights reserved.
//

#import "DNViewController.h"

#import "DNRouter.h"

#import "DNTestVViewController.h"
@interface DNViewController ()

@end

@implementation DNViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor orangeColor];
    NSLog(@"DRTMainListViewController==viewDidLoad");
    UIButton *button = [UIButton buttonWithType:UIButtonTypeContactAdd];
    button.frame = (CGRect){100,100,100,100};
    [self.view addSubview:button];
    [button addTarget:self action:@selector(eventButtonClick:) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeContactAdd];
    button2.frame = (CGRect){250,100,100,100};
    [self.view addSubview:button2];
    [button2 addTarget:self action:@selector(eventButton2Click:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)eventButton2Click:(UIButton *)button {
    UINavigationController *navigationController = [UINavigationController new];
    DNTestVViewController *testViewController = [DNTestVViewController new];
    [navigationController addChildViewController:testViewController];
    [self presentViewController:navigationController animated:YES completion:nil];
    
}

- (void)eventButtonClick:(UIButton *)button {
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
