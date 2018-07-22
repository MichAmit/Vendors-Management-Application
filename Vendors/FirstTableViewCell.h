//
//  FirstTableViewCell.h
//  Vendors
//
//  Created by Amit Gawai on 02/06/18.
//  Copyright © 2018 Amit Gawai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *img;
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UILabel *decimalrat;
@property (weak, nonatomic) IBOutlet UILabel *stars;
@property (weak, nonatomic) IBOutlet UILabel *addr;
@property (weak, nonatomic) IBOutlet UILabel *rati;

@end
