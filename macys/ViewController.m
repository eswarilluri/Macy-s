//
//  ViewController.m
//  macys
//
//  Created by Easwara Reddy Illuri on 1/29/14.
//  Copyright (c) 2014 Macy's. All rights reserved.
//

#import "ViewController.h"
#import "DetailViewController.h"
#import "AppDelegate.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    if (IS_IOS7_AND_UP)
        self.edgesForExtendedLayout = UIRectEdgeNone;
    
    _dictForEachButtonCount = [[NSMutableDictionary alloc] init];
    
    [_mainScroll setContentSize:CGSizeMake(320, 550)];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - action methods for button.
- (void)buttonTapped:(id)sender{
    
    _totalTapCount++;
    
    NSString *tagString =[NSString stringWithFormat:@"%d",[sender tag]];
    NSString *currentTapCnt = [_dictForEachButtonCount objectForKey:tagString];
    
    if (currentTapCnt){
        [_dictForEachButtonCount setObject:[NSString stringWithFormat:@"%d",[currentTapCnt integerValue] + 1] forKey:tagString];
    }
    else
        [_dictForEachButtonCount setObject:@"1" forKey:tagString];
    
    DetailViewController *detailController = [AppDelegate viewControllerFromStoryboard:@"DETAILCNTRLR"];
    
    [detailController setTotalTapCount:[NSString stringWithFormat:@"%d",_totalTapCount]];
    NSDictionary *buttonTapDict = @{@"btnId":[NSString stringWithFormat:@"%d",[sender tag]], @"btnCnt":[_dictForEachButtonCount objectForKey:tagString]};
    [detailController setButtonTapCount:buttonTapDict];
    [self.navigationController pushViewController:detailController animated:YES];
}

- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar{
    [searchBar resignFirstResponder];
}
@end
