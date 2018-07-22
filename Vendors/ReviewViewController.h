//
//  ReviewViewController.h
//  Vendors
//
//  Created by Amit Gawai on 19/06/18.
//  Copyright © 2018 Amit Gawai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ReviewViewController : UIViewController<UITabBarDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UISegmentedControl *sgmntout;
- (IBAction)sgmnt:(id)sender;
@property (weak, nonatomic) IBOutlet UITableView *tableview;

@end
