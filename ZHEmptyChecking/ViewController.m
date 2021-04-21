//
//  ViewController.m
//  ZHEmptyChecking
//
//  Created by gallon on 2019/9/3.
//  Copyright © 2019年 gallon. All rights reserved.
//

#import "ViewController.h"
#import "NSString+ZHEmptyChecking.h"

@interface ViewController ()<UITextFieldDelegate>
@property (strong,nonatomic) UITextField*titleTF;
@property (strong,nonatomic) UIButton*doneBtn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
     [self.view addSubview:self.titleTF];
    [self.view addSubview:self.doneBtn];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)textFieldDidEndEditing:(UITextField *)textField{
    //标题
    
    
}
-(void)touchDoneBtn{
    
    [self.titleTF resignFirstResponder];
    if ([self.titleTF.text js_isEmptyString]) {
        UIAlertController*alertController=[UIAlertController alertControllerWithTitle:@"输入为空值！" message:nil preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction*okAction=[UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction*action){
           
        }];
        [alertController addAction:okAction];
        [self presentViewController:alertController animated:YES completion:nil];
    }
}
-(void)touchesEnded:(NSSet*)touches withEvent:(UIEvent*)event{
    [self.titleTF resignFirstResponder];
}
-(UITextField*)titleTF{
    if (!_titleTF) {
        _titleTF=[[UITextField alloc]initWithFrame:CGRectMake(30, 123, 250, 40)];
        _titleTF.clearButtonMode=UITextFieldViewModeWhileEditing;
        _titleTF.placeholder=@"请在此输入";
        _titleTF.delegate=self;
        _titleTF.borderStyle=UITextBorderStyleRoundedRect;
        _titleTF.layer.cornerRadius=5.0f;
        _titleTF.backgroundColor=[UIColor whiteColor];
        _titleTF.font=[UIFont systemFontOfSize:15];
        _titleTF.textColor=[UIColor blackColor];
    }return _titleTF;
}
-(UIButton*)doneBtn{
    
    if (!_doneBtn) {
        _doneBtn=[[UIButton alloc]initWithFrame:CGRectMake(30, 200, self.view.bounds.size.width-60, 50)];
        [_doneBtn addTarget:self action:@selector(touchDoneBtn) forControlEvents:UIControlEventTouchUpInside];
        _doneBtn.backgroundColor=[UIColor redColor];
        [_doneBtn setTitle:@"完成" forState:UIControlStateNormal];
    }
    return _doneBtn;
}
@end
