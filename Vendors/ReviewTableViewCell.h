//
//  ReviewTableViewCell.h
//  Vendors
//
//  Created by Amit Gawai on 19/06/18.
//  Copyright © 2018 Amit Gawai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ReviewTableViewCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UIImageView *img;
@property (strong, nonatomic) IBOutlet UILabel *name;
@property (strong, nonatomic) IBOutlet UILabel *rat;
@property (weak, nonatomic) IBOutlet UILabel *star;
@property (weak, nonatomic) IBOutlet UILabel *date;

@end
