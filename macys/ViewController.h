//
//  ViewController.h
//  macys
//
//  Created by Easwara Reddy Illuri on 1/29/14.
//  Copyright (c) 2014 Macy's. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UISearchBarDelegate>

@property (strong, nonatomic) IBOutlet UIScrollView *mainScroll;
@property (nonatomic) NSInteger totalTapCount;
@property (strong, nonatomic) NSMutableDictionary *dictForEachButtonCount;
- (IBAction)buttonTapped:(id)sender;

@end
