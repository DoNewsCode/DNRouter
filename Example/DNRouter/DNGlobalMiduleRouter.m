//
//  DNGlobalMiduleRouter.m
//  DNRouter_Example
//
//  Created by Ming on 2019/4/18.
//  Copyright © 2019 418589912@qq.com. All rights reserved.
//

#import "DNGlobalMiduleRouter.h"

#import "DNViewControllerOne.h"
#import "DNViewControllerTwo.h"
#import "DNViewControllerThree.h"

#import "DNRouter.h"

@implementation DNGlobalMiduleRouter

+ (void)load {
    [DNRouter registerURLPattern:@"LWT://Test1/PushMainVCOne" toHandler:^(NSDictionary *routerParameters) {
        UINavigationController *navigationVC = routerParameters[DNRouterParameterUserInfo][@"navigationVC"];
        DNViewControllerOne *vc = [[DNViewControllerOne alloc] init];
        [navigationVC pushViewController:vc animated:YES];
    }];
    
    [DNRouter registerURLPattern:@"LWT://Test1/PushMainVCTwo" toHandler:^(NSDictionary *routerParameters) {
        UINavigationController *navigationVC = routerParameters[DNRouterParameterUserInfo][@"navigationVC"];
        DNViewControllerTwo *vc = [[DNViewControllerTwo alloc] init];
        [navigationVC pushViewController:vc animated:YES];
    }];
    
    [DNRouter registerURLPattern:@"LWT://Test1/PushMainVCThree" toHandler:^(NSDictionary *routerParameters) {
        UINavigationController *navigationVC = routerParameters[DNRouterParameterUserInfo][@"navigationVC"];
        DNViewControllerThree *vc = [[DNViewControllerThree alloc] init];
        [navigationVC pushViewController:vc animated:YES];
    }];
    
}
@end
