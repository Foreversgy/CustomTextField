//
//  ViewController.m
//  TextFieldDemo
//
//  Created by ShiMac on 15/10/11.
//  Copyright (c) 2015年 guoyan. All rights reserved.
//

#import "ViewController.h"
#import "CustomTextField.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    CustomTextField *textfield=[[CustomTextField alloc] initWithFrame:CGRectMake(100, 100, 150, 40)];
    textfield.placeholder=@"邮箱或手机号";
    [self.view addSubview:textfield];
    
    UIView *lineview1=[[UIView alloc] initWithFrame:CGRectMake(textfield.frame.origin.x, CGRectGetMaxY(textfield.frame)+5, textfield.frame.size.width, 1)];
    lineview1.backgroundColor=[[UIColor grayColor] colorWithAlphaComponent:0.5];
    [self.view addSubview:lineview1];
    
    CustomTextField *textfield1=[[CustomTextField alloc] initWithFrame:CGRectMake(textfield.frame.origin.x, CGRectGetMaxY(lineview1.frame)+3, textfield.frame.size.width, textfield.frame.size.height)];
    textfield1.placeholder=@"登录密码";
    textfield1.secureTextEntry=YES;
    [self.view addSubview:textfield1];
    
    UIView *lineview2=[[UIView alloc] initWithFrame:CGRectMake(textfield1.frame.origin.x, CGRectGetMaxY(textfield1.frame)+5, textfield.frame.size.width, 1)];
    lineview2.backgroundColor=[[UIColor grayColor] colorWithAlphaComponent:0.5];
    [self.view addSubview:lineview2];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
