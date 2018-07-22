//
//  ServicesViewController.m
//  Vendors
//
//  Created by Amit Gawai on 13/03/18.
//  Copyright © 2018 Amit Gawai. All rights reserved.
//

#import "ServicesViewController.h"
#import "ServicesCollectionViewCell.h"
@interface ServicesViewController ()
{
    NSArray *services;
    NSArray *images;
}
@end

@implementation ServicesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [[self servcollection]setDelegate:self];
    [[self servcollection]setDataSource:self];
    services=@[@"Carpenters",
               @"Duplicate Key Makers",
               @"Electricians",
               @"Painters",
               @"Pest Control",
               @"Plumbers",
               @"Ac Repair & Services",
               @"Computer Repair & Services",
               @"Laundry Services",
               @"Home Appliance Repair & Services"];
    images=@[
    @"1_serivces_carpenter_512",
    @"2_serivces_key maker_512",
    @"3_serivces_electricians_512",
    @"4_serivces_painter_512",
    @"5_serivces_pest control_512",
    @"6_serivces_plumber_400",
    @"7_serivces_ac repair_512",
    @"8_serivces_computer repair_512",
    @"9_serivces_laundry_512",
    @"10_serivces_home-appliance_600x564"
    ];
}
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return [images count];
}
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellid=@"servcell";
    ServicesCollectionViewCell *cell=[collectionView dequeueReusableCellWithReuseIdentifier:cellid forIndexPath:indexPath];
    cell.mylabel.text=[services objectAtIndex:indexPath.item];
    cell.myimage.image=[UIImage imageNamed:[images objectAtIndex:indexPath.item]];
    return cell;
}



//-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
//    return CGSizeMake(120.0, 200.0);
//}
//
//-(UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section{
//    return UIEdgeInsetsMake(1, 1, 1, 1);
//}

- (CGSize)collectionView:(UICollectionView *)collectionView
                  layout:(UICollectionViewLayout *)collectionViewLayout
  sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    CGFloat x;
    CGFloat height = self.view.frame.size.height;
    CGFloat width  = self.view.frame.size.width;
    if (height == 812) {
        x=height*0.27;
    }
    else{
        x=height*0.3;
    }
    return CGSizeMake(width * 0.32, x);
    
}

//- (CGSize)collectionView:(UICollectionView *)collectionView
//                  layout:(UICollectionViewLayout *)collectionViewLayout
//  sizeForItemAtIndexPath:(NSIndexPath *)indexPath
//{
//    CGRect screenRect = [[UIScreen mainScreen] bounds];
//    CGFloat screenWidth = screenRect.size.width;
//    float cellWidth = screenWidth / 3.0; //Replace the divisor with the column count requirement. Make sure to have it in float.
//    CGSize size = CGSizeMake(cellWidth, cellWidth);
//
//    return size;
//}


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

@end
