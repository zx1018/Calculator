//
//  Calculator.m
//  sample
//
//  Created by user on 2016. 8. 23..
//  Copyright © 2016년 LDCC. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator : NSObject
-(void) clear
{
    self.accumlator = 0;    // property에서 선언한 변수의 값을 지칭할 때 java의 this 와 같다.
}
-(void) add: (double) value
{
    self.accumlator+= value;
}
-(void) subtract: (double) value
{
    self.accumlator-=value;
}
-(void) multiply: (double) value
{
    self.accumlator*=value;
}
-(void) divide: (double) value
{
    self.accumlator /= value;
}

@end
