//
//  TimeApplicationViewController.m
//  TimeMachine
//
//  Created by nachi on 11/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TimeApplicationViewController.h"
#import "TimeResultViewController.h"

@implementation TimeApplicationViewController

@synthesize txtUserName,btnSubmit,txtstart1,txtstart2,txtstart3,txtstart4,txtstart5,txtstart6,txtstart7,txtend1,txtend2,txtend3,txtend4,txtend5,txtend6,txtend7,txtstartAM1,txtstartAM2,txtstartAM3,txtstartAM4,txtstartAM5,txtstartAM6,txtstartAM7,txtendAM1,txtendAM2,txtendAM3,txtendAM4,txtendAM5,txtendAM6,txtendAM7,startEndTime,weekDays;

@synthesize lblDay1,lblDay2,lblDay3,lblDay4,lblDay5,lblDay6,lblDay7;


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
      
	// Do any additional setup after loading the view, typically from a nib.
    week1=[[classWeek alloc]init];   
    week2=[[classWeek alloc]init];
    week3=[[classWeek alloc]init];
    week4=[[classWeek alloc]init];
    week5=[[classWeek alloc]init];
    week6=[[classWeek alloc]init];
    week7=[[classWeek alloc]init];
  
    weekChart=[[NSMutableArray alloc]init];
      
    

    [weekChart addObject:week1];
    [weekChart addObject:week2];
    [weekChart addObject:week3];
    [weekChart addObject:week4];
    [weekChart addObject:week5];
    [weekChart addObject:week6];
    [weekChart addObject:week7];
    
   
     
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
    
    
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}


-(void)calculateDays
{
    int i,flag;
    flag=0;
    finalOutput=[[NSMutableArray alloc]init];
    
    int size=[weekChart count];
    
    NSLog(@"Size %d",size);
    
    week1.Day=lblDay1.text;
    week1.startTime=[txtstart1.text intValue];
    week1.startState=txtstartAM1.text;
    week1.endTime=[txtend1.text intValue];
    week1.endState=txtendAM1.text;  
    
    week2.Day=lblDay2.text;
    week2.startTime=[txtstart2.text intValue];
    week2.startState=txtstartAM2.text;
    week2.endTime=[txtend2.text intValue];
    week2.endState=txtendAM2.text;
    
    week3.Day=lblDay3.text;
    week3.startTime=[txtstart3.text intValue];
    week3.startState=txtstartAM3.text;
    week3.endTime=[txtend3.text intValue];
    week3.endState=txtendAM3.text;  
    
    week4.Day=lblDay4.text;
    week4.startTime=[txtstart4.text intValue];
    week4.startState=txtstartAM4.text;
    week4.endTime=[txtend4.text intValue];
    week4.endState=txtendAM4.text;
    
    week5.Day=lblDay5.text;
    week5.startTime=[txtstart5.text intValue];
    week5.startState=txtstartAM5.text;
    week5.endTime=[txtend5.text intValue];
    week5.endState=txtendAM5.text;  
    
    week6.Day=lblDay6.text;
    week6.startTime=[txtstart6.text intValue];
    week6.startState=txtstartAM6.text;
    week6.endTime=[txtend6.text intValue];
    week6.endState=txtendAM6.text;
    
    week7.Day=lblDay7.text;
    week7.startTime=[txtstart7.text intValue];
    week7.startState=txtstartAM7.text;
    week7.endTime=[txtend7.text intValue];
    week7.endState=txtendAM7.text;
    
    
    NSString *Day,*startDay;
    NSString *timeDetails;
    
    
    classWeek* wee,*wee1;
    startDay=@"Monday";
    
    for(i=0;i<=size-1;i++){
        wee = [weekChart objectAtIndex:i];
        
        if (i==6) {
            wee1 = [weekChart objectAtIndex:0];
        }
        else{
            wee1 = [weekChart objectAtIndex:i+1];
        }
        
        
        if((wee.startTime==wee1.startTime)&&
           ([wee.startState isEqualToString: wee1.startState]) &&
           (wee.endTime==wee1.endTime)&&
           ([wee.endState isEqualToString:wee1.endState])){
            
            flag=1;
            //    NSLog(@"Equal--");
            
            
            
        }
        else
        {
            if ([startDay isEqualToString:wee.Day]){
                
                Day=startDay;
            }
            else
            {
                Day=[(startDay)stringByAppendingString:(wee.Day)];
                
            }
            
            flag=0;
            
            timeDetails =[NSString stringWithFormat:@" %d %d",wee.startTime , wee.endTime];
            NSString *DisplayOutput=[(Day) stringByAppendingString:timeDetails];
            NSLog(@"display %@",DisplayOutput);
            startDay=wee1.Day;
            
            
            
            [finalOutput addObject:DisplayOutput];
            
            
            //NSLog(@"start day---%@",startDay);
            
        }
        
        // NSLog(@"start time---end time %i %d %d",i,wee.startTime,wee1.endTime);
        
    }
    if(flag==1)
    {
        //For all days same start and end time
        Day=[(startDay)stringByAppendingString:(wee.Day)];
        timeDetails =[NSString stringWithFormat:@" %d %d",wee.startTime , wee.endTime];
        NSString *DisplayOutput=[(Day) stringByAppendingString:timeDetails];
        NSLog(@"display %@",DisplayOutput);
        startDay=wee1.Day;
 
        [finalOutput addObject:DisplayOutput];
    
    }


}



-(IBAction)onClickSubmit:(id)sender {
    
   
      
    [self calculateDays];
    
    TimeResultViewController *timeResult=[[TimeResultViewController alloc]initWithNibName:@"TimeResultViewController" bundle:nil];
   
    [timeResult displayResult:finalOutput];
    
     [self.view addSubview:timeResult.view];
    
    
   }



-(void)dealloc
{
    [super dealloc];
    [txtUserName dealloc];
    [btnSubmit dealloc];
    [txtstart1 dealloc];
    [txtstart2 dealloc];
    [txtstart3 dealloc];
    [txtstart4 dealloc];
    [txtstart5 dealloc];
    [txtstart6 dealloc];
    [txtstart7 dealloc];
    [txtend1 dealloc];
    [txtend2 dealloc]; 
     [txtend3 dealloc];
     [txtend4 dealloc];
     [txtend5 dealloc];
     [txtend6 dealloc];
     [txtend7 dealloc];
     [txtstartAM1 dealloc];
     [txtstartAM2 dealloc];
     [txtstartAM3 dealloc];
     [txtstartAM4 dealloc];
     [txtstartAM5 dealloc];
     [txtstartAM6 dealloc];
     [txtstartAM7 dealloc];
     [txtendAM1 dealloc];
     [txtendAM2 dealloc];
     [txtendAM3 dealloc];
     [txtendAM4 dealloc];
     [txtendAM5 dealloc];
     [txtendAM7 dealloc];
     [startEndTime dealloc];
     [txtendAM6 dealloc];
     [weekDays dealloc];

}
@end
