//
//  ViewController.m
//  Vendors
//
//  Created by Amit Gawai on 13/03/18.
//  Copyright © 2018 Amit Gawai. All rights reserved.
//

#import "ViewController.h"
#import "DashCollectionViewCell.h"
#import "ServicesViewController.h"
@interface ViewController ()
{
    NSArray *listings;
    NSArray *images;
    
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[self collectionView]setDelegate:self];
    [[self collectionView]setDataSource:self];
    // Do any additional setup after loading the view, typically from a nib.
    [[self navigationItem]setBackBarButtonItem:[[UIBarButtonItem alloc]initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil]];
    listings=@[
    @"iSOCIETY WALL",
    @"MEMBERS",
    @"HELP DESK",
    @"CALENDER",
    @"NEAR BY ME",
    @"EMERGENCY",
    @"EVENT NOTIFICATION",
    @"SERVICES"
    ];
   
   
    images=@[
    @"iSociety Wall",
    @"members",
    @"help desk",
    @"calendar",
    @"near by me",
    @"emergency",
    @"notifications",
    @"services"
    ];
}
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
    
    
}
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return [images count];
    
    
}
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{

    static NSString *cellid=@"cell";
    DashCollectionViewCell *cell=[collectionView dequeueReusableCellWithReuseIdentifier:cellid forIndexPath:indexPath];
    cell.label.text=[listings objectAtIndex:indexPath.item];
    cell.imageView.image=[UIImage imageNamed:[images objectAtIndex:indexPath.item]];
    return cell;
    
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.item==7) {
        UIStoryboard *story1;
        story1=[UIStoryboard storyboardWithName:@"Main" bundle:nil];
        ServicesViewController *service1 = [story1 instantiateViewControllerWithIdentifier:@"local"];
        [self.navigationController pushViewController:service1 animated:YES];
    }
}



- (CGSize)collectionView:(UICollectionView *)collectionView
                  layout:(UICollectionViewLayout *)collectionViewLayout
  sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    CGFloat height = self.view.frame.size.height;
    CGFloat width  = self.view.frame.size.width;
    //NSLog(@"%2f",height);
    CGFloat x;
    if (height == 812) {
        x= height *0.23;
    }
    else{
        x=height*0.28;
    }
    // in case you you want the cell to be 40% of your controllers view
    return CGSizeMake(width * 0.45, x);
}
-(UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section{
    return UIEdgeInsetsMake(5, 5, 5, 5);
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
