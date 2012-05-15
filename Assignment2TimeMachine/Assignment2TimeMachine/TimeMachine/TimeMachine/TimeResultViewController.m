//
//  TimeResultViewController.m
//  TimeMachine
//
//  Created by nachi on 11/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TimeResultViewController.h"
#import "TimeApplicationViewController.h"

@implementation TimeResultViewController

@synthesize lblDisplay,strName,lblOutput,strOutput;
 


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
                                                  }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
   
   
    
    }


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

-(void)displayResult:(NSMutableArray *)finalResult{
    
    for(int i=0;i<[finalResult count];i++)
    {
        int j=j+30;
        
        UITextField *txtfield=[[UITextField alloc]initWithFrame:CGRectMake(50,j+50,200,200) ];
        
        txtfield.tag=i;
        [txtfield setEnabled:false];
        
        txtfield.text=[finalResult objectAtIndex:i];
        NSLog(@"text---- %@",txtfield.text);
        [self.view addSubview:txtfield];
 
    }
}


-(IBAction)onClickBack:(id)sender{
    
    TimeApplicationViewController *timeApp=[[TimeApplicationViewController alloc]initWithNibName:@"TimeApplicationViewController" bundle:nil];
    
    
    [self.view addSubview:timeApp.view];
    
}

@end
