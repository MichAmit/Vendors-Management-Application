//
//  VendordesViewController.h
//  Vendors
//
//  Created by Amit Gawai on 10/06/18.
//  Copyright © 2018 Amit Gawai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VendordesViewController : UIViewController

@property (strong,nonatomic) NSArray *detailModel;
@property (weak, nonatomic) IBOutlet UIImageView *detview;
@property (weak, nonatomic) IBOutlet UILabel *detname;
@property (weak, nonatomic) IBOutlet UILabel *detstar;
@property (weak, nonatomic) IBOutlet UILabel *detrat;
@property (weak, nonatomic) IBOutlet UILabel *detadd;
@property (weak, nonatomic) IBOutlet UILabel *timing;
@property (weak, nonatomic) IBOutlet UIView *rate;
- (IBAction)show:(id)sender;
- (IBAction)hide:(id)sender;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *btn_outlet;
- (IBAction)btn_action:(UIButton *)sender;
- (IBAction)tick:(UIButton *)sender;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *tick_outlet;

@end
