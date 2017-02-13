//
//  ViewController.m
//  枚举中的位运算Demo
//
//  Created by 抬头看见柠檬树 on 2017/2/13.
//  Copyright © 2017年 csip. All rights reserved.
//

#import "ViewController.h"

typedef enum : NSUInteger{
    /*
     first : 0 0 0 0 0 0 0 1 : 1 * 2^0 = 1
     second : 0 0 0 0 0 0 1 0 : 1 * 2^1 = 2
     third : 0 0 0 0 0 1 0 0 : 1 * 2^2 = 4
     */
    
    first  = 1 << 0, // 1 * 2^0 = 1
    second = 1 << 1, // 1 * 2^1 = 2
    third  = 1 << 2  // 1 * 2^2 = 4
    
} myEnum;


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 1,2,4
    NSLog(@"%d,%d,%d",first,second,third);
    
    [self test: first | second];
}

- (void)test:(NSInteger)count
{
    // 1 2 0
    NSLog(@"%d,%d,%d",count & first,count & second,count & third);
    
    if (count & first) {
        NSLog(@"first");
    }
    
    if (count & second) {
        NSLog(@"second");
    }
    
    if (count & third) {
        NSLog(@"third");
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
