//
//  CaculatorMaker.h
//  计算器
//
//  Created by chenjiao on 2018/2/2.
//  Copyright © 2018年 yaoyao. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CaculatorMaker : NSObject

@property (nonatomic,assign) float result;

@property (nonatomic,assign) BOOL isEqual;

//加法
- (CaculatorMaker*(^)(int))add;
//减法
- (CaculatorMaker*(^)(float))sub;
//乘法
- (CaculatorMaker*(^)(int))mul;
//除法
- (CaculatorMaker*(^)(int))div;

- (CaculatorMaker*)caculator:(int(^)(int result))caculator;
- (CaculatorMaker*)equal:(BOOL(^)(int result))operation;

@end
