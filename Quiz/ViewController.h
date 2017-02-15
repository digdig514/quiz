//
//  ViewController.h
//  Quiz
//
//  Created by Diego Souza Sampaio on 17-02-13.
//  Copyright © 2017 Diego Souza Sampaio. All rights reserved.
// all the variable will be here

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController  {

NSArray *questionsArray;
    //array declaration
NSArray *answersArray;
    int curQuestion;
    int totalQuestion;
   NSString *currentAnswer;
}
@property (weak, nonatomic) IBOutlet UILabel *LabelQuestion;
@property (weak, nonatomic) IBOutlet UILabel *LabelAnswer;

@end

