//
//  ViewController.m
//  计算器
//
//  Created by chenjiao on 2018/2/2.
//  Copyright © 2018年 yaoyao. All rights reserved.
//

#import "ViewController.h"
#import "NSObject+Caculator.h"
#import "CaculatorMaker.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    int addResult = [NSObject makeCaculators:^(CaculatorMaker *make) {
//        make.add(1).add(2).add(3).add(4);
//    }];
//    float subResult = [NSObject makeCaculators:^(CaculatorMaker *make) {
//        make.sub(100).sub(8).sub(6).sub(4);
//    }];
//    NSLog(@"%f",subResult);
//    int mulResult = [NSObject makeCaculators:^(CaculatorMaker *make) {
//        make.mul(1).mul(2).mul(3).mul(4);
//    }];
//    int divResult = [NSObject makeCaculators:^(CaculatorMaker *make) {
//        make.div(10000).div(2).div(2).div(5);
//    }];
//    NSLog(@"%zd---%zd---%zd--%zd",addResult,subResult,mulResult,divResult);
    CaculatorMaker *make = [[CaculatorMaker alloc] init];
   BOOL isqueal = [[[make caculator:^int (int result) {
        result += 2;
        result *= 5;
        return result;
    }]equal:^BOOL(int result) {
        return result == 10;
    }]isEqual];
    NSLog(@"%d",isqueal);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
