//
//  ViewController.m
//  Control Fun
//
//  Created by ListenS on 17/9/25.
//  Copyright © 2017年 ListenS. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UITextField *nameField;
@property (strong, nonatomic) IBOutlet UITextField *numberField;
@property (strong, nonatomic) IBOutlet UILabel *sliderLabel;
@property (strong, nonatomic) IBOutlet UISwitch *leftSwitch;
@property (strong, nonatomic) IBOutlet UISwitch *rightSwitch;
@property (strong, nonatomic) IBOutlet UIButton *doSomethingButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.sliderLabel.text = @"50";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)textFieldDoneEditin:(id)sender{
    [sender resignFirstResponder];
}

-(IBAction)backgroundTap:(id)sender{
    [self.nameField resignFirstResponder];
    [self.numberField resignFirstResponder];
}

- (IBAction)sliderChanged:(UISlider *)sender {
    int progress = lroundf(sender.value);
    self.sliderLabel.text = [NSString stringWithFormat:@"%d",progress];
}

- (IBAction)switchChange:(UISwitch *)sender {
    BOOL setting = sender.isOn;
    [self.leftSwitch setOn:setting animated:YES];
    [self.rightSwitch setOn:setting animated:YES];
}

- (IBAction)toggleContraols:(UISegmentedControl *)sender {
    //0 == switches idnex
    if (sender.selectedSegmentIndex == 0){
        self.leftSwitch.hidden = NO;
        self.rightSwitch.hidden = NO;
        self.doSomethingButton.hidden = YES;
    }
    else{
        self.leftSwitch.hidden = YES;
        self.rightSwitch.hidden = YES;
        self.doSomethingButton.hidden = NO;
    }
}

- (IBAction)buttonPressed:(id)sender {
//    UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:@"Are you sure?" delegate:self cancelButtonTitle:@"No Way!" destructiveButtonTitle:@"Yes,i'm sure." otherButtonTitles:nil];
//    [actionSheet showInView:self.view];
    
    //初始化警告，设置警告的题目和内容
    UIAlertController *alertMain = [UIAlertController alertControllerWithTitle:nil message:@"Are you sure?" preferredStyle:UIAlertControllerStyleActionSheet];
    
    //创建“一般”按钮，设置其内容，一般“一般”按钮是“确认”
    UIAlertAction *sureButton = [UIAlertAction actionWithTitle:@"Yes,i'm ok." style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){
        UIAlertController *alertBysure = [UIAlertController alertControllerWithTitle:nil message:@"Take a breathe easy,you are ok now." preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction *fineButton = [UIAlertAction actionWithTitle:@"Phew" style:UIAlertActionStyleDefault handler:nil];
        UIAlertAction *defultButton = [UIAlertAction actionWithTitle:@"cancel" style:UIAlertActionStyleCancel handler:nil];
        
        //这里的顺序上到下对应右到左
        [alertBysure addAction:fineButton];
        [alertBysure addAction:defultButton];
        
        [self presentViewController:alertBysure animated:YES completion:nil];
    }];
    
    //创建“取消”按钮，设置其内容。还有一个“红色”按钮，style是UIAlertActionStyleDestructive，一般是提示此选项有比较严重的后果，删除或更改数据之类
    UIAlertAction *cancelButton = [UIAlertAction actionWithTitle:@"No way!" style:UIAlertActionStyleCancel handler:^(UIAlertAction *action){}];
    
    //激活按钮，此顺序就是显示顺序
    [alertMain addAction:sureButton];
    [alertMain addAction:cancelButton];
    
    //激活警告
    [self presentViewController:alertMain animated:YES completion:nil];
}


//- (void)actionSheet:(UIActionSheet *)actionSheet didDismissWithButtonIndex:(NSInteger)buttonIndex{
//    if(buttonIndex != [actionSheet cancelButtonIndex]){
//        NSString *msg = nil;
//        
//        if([self.nameField.text length] > 0){
//            msg = [NSString stringWithFormat:@"You can breathe easy,%@,everything went OK.",self.nameField.text];
//        }else{
//            msg = @"You can breathe easy,everything went OK.";
//        }
//        
//        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Something was done." message:msg delegate:self cancelButtonTitle:@"Phew!" otherButtonTitles:nil];
//        [alert show];
//    }
//}

@end
