//
//  Calculator.h
//  sample
//
//  Created by user on 2016. 8. 23..
//  Copyright © 2016년 LDCC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject

@property (nonatomic, assign) double accumlator;  // 게터와 세터를 대체한다.

-(void) clear;
-(void) add: (double) value;
-(void) subtract: (double) value;
-(void) multiply: (double) value;
-(void) divide: (double) value;

@end
