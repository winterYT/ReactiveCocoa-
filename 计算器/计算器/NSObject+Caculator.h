//
//  NSObject+Caculator.h
//  计算器
//
//  Created by chenjiao on 2018/2/2.
//  Copyright © 2018年 yaoyao. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CaculatorMaker;

@interface NSObject (Caculator)

//计算
+(int)makeCaculators:(void(^)(CaculatorMaker*))block;



@end
