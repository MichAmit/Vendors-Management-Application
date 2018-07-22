//
//  Table1ViewController.h
//  Vendors
//
//  Created by Amit Gawai on 02/06/18.
//  Copyright © 2018 Amit Gawai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Table1ViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableview;

@end
