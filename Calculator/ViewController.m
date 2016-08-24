//
//  ViewController.m
//  Calculator
//
//  Created by user on 2016. 8. 24..
//  Copyright © 2016년 LDCC. All rights reserved.
//

#import "ViewController.h"
#import "Calculator.h"

enum opr{none, plus, minus, divide, multiply};
typedef enum opr Operator;

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *myLabel;

@end

@implementation ViewController
{
    int currentValue;
    Operator currentQpr;
    Calculator *calc;
}
// 숫자 버튼이 눌렸을 경우
- (IBAction)buttonClicked:(id)sender {
    
    UIButton *btn = (UIButton *)sender;
    int val = (int)btn.tag;
    
    if(currentQpr == none) {
        currentValue = currentValue * 10 + val;
    }
    else{
        currentValue = val;
    }
    
    self.myLabel.text = [NSString stringWithFormat:@"%d", currentValue];
    //NSLog(@"button Clicked");
}

// clear 버튼이 눌렸을 경우
- (IBAction)clear:(id)sender {
    self.myLabel.text = @"0";
    currentValue = 0;
    currentQpr = none;
}

// 사칙연산 버튼이 눌렀을 경우
- (IBAction)clickOpr:(id)sender {
    
    UIButton *btn = (UIButton *)sender;
    int val = (int)btn.tag;
    
    switch (val) {
        case 1:
            currentQpr = plus;
            break;
        case 2:
            currentQpr = minus;
            break;
        case 3:
            currentQpr = multiply;
            break;
        case 4:
            currentQpr = divide;
            break;
        default:
            break;
    }
    
    [calc setAccumlator: currentValue];
    
}

// 결과 버튼을 눌렀을 경우
- (IBAction)clickEqual:(id)sender {
    
    switch (currentQpr) {
        case plus:
            [calc add: currentValue];
            currentValue = [calc accumlator];
            break;
        case minus:
            [calc subtract: currentValue];
            currentValue = [calc accumlator];
            break;
        case multiply:
            [calc multiply: currentValue];
            currentValue = [calc accumlator];
            break;
        case divide:
            [calc divide : currentValue];
            currentValue = [calc accumlator];
            break;
        default:
            break;
    }
    self.myLabel.text = [NSString stringWithFormat:@"%d", currentValue];
    
}

- (IBAction)unwind:(UIStoryboardSegue *)sender {
    
    
}


// 여기에서 생성자와 같은 역할을 한다고 가정하고 코드를 작성한다.
- (void)viewDidLoad {
    [super viewDidLoad];
    calc = [[Calculator alloc] init];
    currentQpr = none;
    currentValue = 0;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
