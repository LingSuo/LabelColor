//
//  mainTabViewController.m
//  LabelColor
//
//  Created by Arno on 2019/3/21.
//  Copyright © 2019 Arno. All rights reserved.
//

#import "mainTabViewController.h"
#import "CustomTab.h"

@interface mainTabViewController ()

@end

@implementation mainTabViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    CustomTab *myTabBar = [[CustomTab alloc] init];
    [self setValue:myTabBar forKey:@"tabBar"];
    UIViewController *v = self.viewControllers[1];
    v.tabBarItem.image = [[UIImage imageNamed:@"post_normal"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    v.tabBarItem.selectedImage = [[UIImage imageNamed:@"post_normal"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
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
