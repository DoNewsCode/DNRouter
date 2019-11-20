//
//  DNTestVViewController.m
//  DNRouter_Example
//
//  Created by Ming on 2019/4/18.
//  Copyright © 2019 418589912@qq.com. All rights reserved.
//

#import "DNTestVViewController.h"

#import "DNRouter.h"

@interface DNTestVViewController ()

@end

@implementation DNTestVViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
    //    [self.navigationController pushViewController:[DRTTimeLineDetailViewController new] animated:YES];
//    [DNRouter openURL:@"LWT://Test1/PushMainVCOne"
//         withUserInfo:@{@"navigationVC" : self.navigationController,
//                        }
//           completion:nil];
    
    [DNRouter openURL:@"" withUserInfo:@{@"navigationVC" : self.navigationController} completion:^(id  _Nullable result) {
        
    }];
}

- (void)eventButtonClick:(UIButton *)button {
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
