//
//  TimeApplicationViewController.h
//  TimeMachine
//
//  Created by nachi on 11/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "classWeek.h"
@interface TimeApplicationViewController : UIViewController{
    
    IBOutlet UIButton *btnSubmit;
    IBOutlet UITextField *txtUserName;
    
    IBOutlet UITextField *txtstart1;
    IBOutlet UITextField *txtstart2;
    IBOutlet UITextField *txtstart3;
    IBOutlet UITextField *txtstart4;
    IBOutlet UITextField *txtstart5;
    IBOutlet UITextField *txtstart6;
    IBOutlet UITextField *txtstart7;
    
    IBOutlet UITextField *txtstartAM1;
    IBOutlet UITextField *txtstartAM2;
    IBOutlet UITextField *txtstartAM3;
    IBOutlet UITextField *txtstartAM4;
    IBOutlet UITextField *txtstartAM5;
    IBOutlet UITextField *txtstartAM6;
    IBOutlet UITextField *txtstartAM7;
    
    IBOutlet UITextField *txtend1;
    IBOutlet UITextField *txtend2;
    IBOutlet UITextField *txtend3;
    IBOutlet UITextField *txtend4;
    IBOutlet UITextField *txtend5;
    IBOutlet UITextField *txtend6;
    IBOutlet UITextField *txtend7;    
    
    IBOutlet UITextField *txtendAM1;
    IBOutlet UITextField *txtendAM2;
    IBOutlet UITextField *txtendAM3;
    IBOutlet UITextField *txtendAM4;
    IBOutlet UITextField *txtendAM5;
    IBOutlet UITextField *txtendAM6;
    IBOutlet UITextField *txtendAM7;   
    
    
    IBOutlet UILabel *lblDay1;
    IBOutlet UILabel *lblDay2;
    IBOutlet UILabel *lblDay3;
    IBOutlet UILabel *lblDay4;
    IBOutlet UILabel *lblDay5;
    IBOutlet UILabel *lblDay6;
    IBOutlet UILabel *lblDay7;
    

    NSMutableArray *weekChart;
    NSMutableArray *finalOutput;
    
    classWeek *week,*week1,*week2,*week3,*week4,*week5,*week6,*week7;
    
    
}

@property(nonatomic,retain) IBOutlet UIButton *btnSubmit;
@property(nonatomic,retain) IBOutlet UITextField *txtUserName;


@property(nonatomic,retain) IBOutlet UILabel *lblDay1;
@property(nonatomic,retain) IBOutlet UILabel *lblDay2;
@property(nonatomic,retain) IBOutlet UILabel *lblDay3;
@property(nonatomic,retain) IBOutlet UILabel *lblDay4;
@property(nonatomic,retain) IBOutlet UILabel *lblDay5;
@property(nonatomic,retain) IBOutlet UILabel *lblDay6;
@property(nonatomic,retain) IBOutlet UILabel *lblDay7;

@property(nonatomic,retain) UITextField *txtstart1;
@property(nonatomic,retain) UITextField *txtstart2;
@property(nonatomic,retain) UITextField *txtstart3;
@property(nonatomic,retain) UITextField *txtstart4;
@property(nonatomic,retain) UITextField *txtstart5;
@property(nonatomic,retain) UITextField *txtstart6;
@property(nonatomic,retain) UITextField *txtstart7;

@property(nonatomic,retain) UITextField *txtstartAM1;
@property(nonatomic,retain) UITextField *txtstartAM2;
@property(nonatomic,retain) UITextField *txtstartAM3;
@property(nonatomic,retain) UITextField *txtstartAM4;
@property(nonatomic,retain) UITextField *txtstartAM5;
@property(nonatomic,retain) UITextField *txtstartAM6;
@property(nonatomic,retain) UITextField *txtstartAM7;

@property(nonatomic,retain) UITextField *txtend1;
@property(nonatomic,retain) UITextField *txtend2;
@property(nonatomic,retain) UITextField *txtend3;
@property(nonatomic,retain) UITextField *txtend4;
@property(nonatomic,retain) UITextField *txtend5;
@property(nonatomic,retain) UITextField *txtend6;
@property(nonatomic,retain) UITextField *txtend7; 

@property(nonatomic,retain) UITextField *txtendAM1;
@property(nonatomic,retain) UITextField *txtendAM2;
@property(nonatomic,retain) UITextField *txtendAM3;
@property(nonatomic,retain) UITextField *txtendAM4;
@property(nonatomic,retain) UITextField *txtendAM5;
@property(nonatomic,retain) UITextField *txtendAM6;
@property(nonatomic,retain) UITextField *txtendAM7; 

@property(nonatomic,retain) NSMutableArray *weekDays;
@property(nonatomic,retain) NSMutableArray *startEndTime;


@end
