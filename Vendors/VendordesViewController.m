//
//  VendordesViewController.m
//  Vendors
//
//  Created by Amit Gawai on 10/06/18.
//  Copyright © 2018 Amit Gawai. All rights reserved.
//

#import "VendordesViewController.h"

@interface VendordesViewController ()

@end

@implementation VendordesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.rate.hidden=YES;
    self.navigationItem.title=self.detailModel[0];
    self.detview.layer.cornerRadius=7;
    self.detname.text= self.detailModel[0];
    /*        detailView.detailModel=@[names[row],img[row],dec[row],star[row],addr[row],rat[row]];
*/
    self.detadd.text=self.detailModel[4];
    self.detstar.text=self.detailModel[3];
    self.detrat.text=self.detailModel[2];
    self.detview.image=[UIImage imageNamed:self.detailModel[1]];
    // Do any additional setup after loading the view.
    
    if ([self.detname.text isEqualToString:@"Mehul"]) {
        self.timing.text=@"Timings:8:00 AM to 6:00PM";
        }
    if ([self.detname.text isEqualToString:@"Dhawal"]) {
        self.timing.text=@"Timings:8:00 AM to 6:00PM";
    }
    if ([self.detname.text isEqualToString:@"Gaurav"]) {
        self.timing.text=@"Timings:8:00 AM to 6:00PM";
    }
    if ([self.detname.text isEqualToString:@"Amit"]) {
        self.timing.text=@"Timings:8:00 AM to 6:00PM";
    }
    if ([self.detname.text isEqualToString:@"Rakesh"]) {
        self.timing.text=@"Timings:8:00 AM to 6:00PM";
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)show:(id)sender {
    self.rate.hidden=NO;
}

- (IBAction)hide:(id)sender {
    self.rate.hidden=YES;
}
- (IBAction)btn_action:(UIButton *)sender {
    NSInteger store = sender.tag;
    
    for (UIButton *btn in _btn_outlet) {
        if (btn.tag <= store) {
            [btn setTitle:@"★" forState:UIControlStateNormal];
        }
        else{
            [btn setTitle:@"☆" forState:UIControlStateNormal];
        }
    }
}

- (IBAction)tick:(UIButton *)sender {
    NSInteger store = sender.tag;
    
    for (UIButton *btn in _tick_outlet) {
        if (btn.tag == store) {
            [btn setBackgroundImage:[UIImage imageNamed:@"tick"] forState:UIControlStateNormal];
        }
        else{
            [btn setBackgroundImage:[UIImage imageNamed:@"untick"] forState:UIControlStateNormal];
        }
    }
   
}
@end
