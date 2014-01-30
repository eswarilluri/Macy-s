//
//  DetailViewController.h
//  macys
//
//  Created by Easwara Reddy Illuri on 1/30/14.
//  Copyright (c) 2014 Macy's. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *totalTapCountLbl;
@property (weak, nonatomic) NSString *totalTapCount;
@property (weak, nonatomic) IBOutlet UILabel *buttonTapCountLbl;
@property (strong, nonatomic) NSDictionary *buttonTapCount;
@end
