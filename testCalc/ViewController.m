//
//  ViewController.m
//  testCalc
//
//  Created by Yuan-Pu Hsu on 12/27/15.
//  Copyright © 2015 Yuan-Pu Hsu. All rights reserved.
//

#import "ViewController.h"
NSString *operand1 = @"0";
NSString *operand2 = @"";
NSInteger currentOperator;
bool phase = YES;
bool equalPressed = YES;


@interface ViewController (){
    Core *coreOp;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)awakeFromNib {
    coreOp = [[Core alloc] init];
}

- (IBAction)numberButton:(id)sender{
    UIButton *button = (UIButton *) sender;
    NSLog(@"%@", button.currentTitle);
    if (phase) {
        operand1 = [coreOp addNumber:operand1 andString:button.currentTitle];
        self.mainDisplay.text = operand1;
    }
    else {
        operand2 = [coreOp addNumber:operand2 andString:button.currentTitle];
        self.mainDisplay.text = operand2;
    }
    
    
    
    
}

- (IBAction)operatorButton:(id)sender{
    UIButton *button = (UIButton *) sender;
    self.opDispaly.text = button.currentTitle;
    if (phase) {
        phase = NO;
        equalPressed = NO;
    }
    else {
        operand1 = [coreOp calculate:operand1 andString:operand2 andInt:currentOperator];
        operand2 = @"";
        self.mainDisplay.text = operand1;
    }
    currentOperator = button.tag;
}

- (IBAction) equalTo:(id)sender{
//    UIButton *button = (UIButton *) sender;
    operand1 = [coreOp calculate:operand1 andString:operand2 andInt:currentOperator];
    operand2 = @"";
    self.mainDisplay.text = operand1;
    self.opDispaly.text = @"";
    equalPressed = YES;
}
@end
