//
//  CaculatorMaker.m
//  计算器
//
//  Created by chenjiao on 2018/2/2.
//  Copyright © 2018年 yaoyao. All rights reserved.
//

#import "CaculatorMaker.h"

@implementation CaculatorMaker

- (CaculatorMaker*(^)(int))add{
 
    return ^CaculatorMaker*(int value){
        _result += value;
        return self;
    };
    
}
- (CaculatorMaker*(^)(float))sub{
 
    return ^CaculatorMaker*(float value){
        _result -= value;
        return self;
    };
    
}
- (CaculatorMaker*(^)(int))mul{
 
    return ^CaculatorMaker*(int value){
        _result *= value;
        return self;
    };
    
}
- (CaculatorMaker*(^)(int))div{
 
    return ^CaculatorMaker*(int value){
        _result /= value;
        return self;
    }; 
    
}
- (CaculatorMaker*)caculator:(int(^)(int result))caculator{
    _result = caculator(_result);
    return self;
}
- (CaculatorMaker*)equal:(BOOL(^)(int result))operation{
    _isEqual = operation(_result);
    return self;
}

@end
