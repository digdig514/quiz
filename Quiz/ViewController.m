//
//  ViewController.m
//  Quiz
//
//  Created by Diego Souza Sampaio on 17-02-13.
//  Copyright © 2017 Diego Souza Sampaio. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(void)HideLabel{
  _LabelQuestion.text = @"";
  _LabelAnswer.text = @"???";
  currentAnswer= @"";
}

- (void)viewDidLoad {
    [super viewDidLoad];
    //questionsArray = [[NSArray alloc]init];
    [self HideLabel];
    curQuestion =0;
    questionsArray = @[@"My name ?", @"My age?"];
    answersArray = @[@"Diego", @"28"];
    totalQuestion = sizeof(questionsArray)/sizeof(int);
    
    
    

    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)QuestionOnclick:(id)sender {

_LabelQuestion.text = questionsArray[curQuestion];
    [self setAnswer];
    curQuestion ++;
    if (curQuestion==totalQuestion)
    {
        curQuestion=0;
    }
    
}

-(void)setAnswer {
   currentAnswer = answersArray[curQuestion];
    
}

- (IBAction)ResponseOnclick:(id)sender {
    _LabelAnswer.text = currentAnswer;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
