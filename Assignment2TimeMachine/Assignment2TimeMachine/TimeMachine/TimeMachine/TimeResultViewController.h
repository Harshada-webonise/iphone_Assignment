//
//  TimeResultViewController.h
//  TimeMachine
//
//  Created by nachi on 11/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TimeResultViewController : UIViewController{
    
    IBOutlet UILabel *lblDisplay;
    IBOutlet UILabel *lblOutput;
    IBOutlet UIButton *btnBack;
    NSString *strName;
    NSString *strOutput;
     
   
}

-(void)displayResult:(NSMutableArray *)finalResult;
    
@property(nonatomic,retain) IBOutlet UILabel *lblDisplay;
@property(nonatomic,retain) IBOutlet UILabel *lblOutput;
@property(nonatomic,retain) IBOutlet UIButton *btnBack;
@property(nonatomic,retain) NSString *strName;
@property(nonatomic,retain) NSString *strOutput;


@end
