//
//  DetailViewController.m
//  macys
//
//  Created by Easwara Reddy Illuri on 1/30/14.
//  Copyright (c) 2014 Macy's. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    [_totalTapCountLbl setText:[NSString stringWithFormat:@"Total Tap # %@",_totalTapCount]];
    [_buttonTapCountLbl setText:[NSString stringWithFormat:@"Button%@ # %@",[_buttonTapCount objectForKey:@"btnId"],[_buttonTapCount objectForKey:@"btnCnt"]]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
