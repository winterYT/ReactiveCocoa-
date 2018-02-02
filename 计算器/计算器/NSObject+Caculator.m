//
//  NSObject+Caculator.m
//  计算器
//
//  Created by chenjiao on 2018/2/2.
//  Copyright © 2018年 yaoyao. All rights reserved.
//

#import "NSObject+Caculator.h"
#import "CaculatorMaker.h"

@implementation NSObject (Caculator)

+(int)makeCaculators:(void(^)(CaculatorMaker*))block{
    CaculatorMaker *mgr = [[CaculatorMaker alloc] init];
//    mgr.result = 0;
    block(mgr);
    return mgr.result;
}
 

@end
