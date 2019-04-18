//
//  ViewController.m
//  LabelColor
//
//  Created by Arno on 2018/7/3.
//  Copyright © 2018年 Arno. All rights reserved.
//

#import "ViewController.h"
#import "ColorLabel.h"


@interface ViewController () {
    float a;
    BOOL isOk;
}
@property (weak, nonatomic) IBOutlet ColorLabel *label;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    NSArray *arr = @[@11,@33,@44,@42,@22,@11,@44,@11];
//    NSSet *set = [NSSet setWithArray:arr];
//    //集合判断一个数组里面是否包含一个对象，速度最快，若重复很多次，应该考虑用集合
//    //NSOrderedSet
//    [set anyObject];
//    [set containsObject:@11];
//    arr = [set allObjects];
//    NSLog(@"%@  %@  %@  %@",set,arr,[set anyObject],[set anyObject]);
    __weak ViewController *v = self;
    a = 0;
    [NSTimer scheduledTimerWithTimeInterval:0.01 repeats:YES block:^(NSTimer * _Nonnull timer) {
        if (self->isOk) {
            self->a -= 0.001;
            [v.label setPro:self->a];
            if (self->a <= 0)
                self->isOk = NO;
        } else {
            self->a += 0.001;
            [v.label setPro:self->a];
            if (self->a >= 1)
                self->isOk = YES;
        }
        
        
    }];
}

- (IBAction)segClick:(UISegmentedControl *)sender {
    self.label.type = sender.selectedSegmentIndex;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
