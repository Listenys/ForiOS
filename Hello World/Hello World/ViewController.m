//
//  ViewController.m
//  Hello World
//
//  Created by ListenS on 17/9/21.
//  Copyright © 2017年 ListenS. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic) int currentQuestionIndex;

@property (nonatomic,copy) NSArray *questions;
@property (nonatomic,copy) NSArray *answers;

@property (strong, nonatomic) IBOutlet UILabel *questionLabel;

@property (strong, nonatomic) IBOutlet UILabel *answerLabel;

@end

@implementation ViewController

- (instancetype)initWithCoder:(NSCoder *)aDecoder{
    //调用父类实现的初始方法
    self = [super initWithCoder:aDecoder];
    
    if(self){
        //创建两个数组对象，存储所需的问题和答案
        //同时，将questions和answers分别指向问题数组和答案数组
        
        self.questions = @[@"From what is cognac made?",
                           @"What is 7+7?",
                           @"What is the capital of Vermont?"];
        
        self.answers = @[@"Grapes",
                         @"14",
                         @"Montpelier"];
    }
    
    //返回新对象的地址
    return self;
}

- (IBAction)showQuestion:(id)sender {
    //进入下一个问题
    self.currentQuestionIndex++;
    
    //是否已经答完所有问题
    if(self.currentQuestionIndex == [self.questions count]){
        //回到第一个问题
        self.currentQuestionIndex = 0;
    }
    
    //根据正在回答的问题从数组中取出问题字符串
    NSString *question = self.questions[self.currentQuestionIndex];
    
    //将问题字符串显示在标签上
    self.questionLabel.text = question;
    
    //重置答案字符串
    self.answerLabel.text = @"???";
    
}

- (IBAction)showAnswer:(id)sender {
    //当前问题的答案是什么
    NSString *answer = self.answers[self.currentQuestionIndex];
    
    //在答案标签上显示相应的答案
    self.answerLabel.text = answer;
    
}

@end
