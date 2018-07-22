//
//  Table1ViewController.m
//  Vendors
//
//  Created by Amit Gawai on 02/06/18.
//  Copyright © 2018 Amit Gawai. All rights reserved.
//

#import "Table1ViewController.h"
#import "FirstTableViewCell.h"
#import "VendordesViewController.h"
@interface Table1ViewController ()
{
    NSArray *img;
    NSArray *names;
    NSArray *dec;
    NSArray *star;
    NSArray *addr;
    NSArray *rat;
}
@end

@implementation Table1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    addr=@[@"Behind Central Jail, Rabodi - 1, Thane, Maharashtra 400601",@"Behind Central Jail, Rabodi - 1, Thane, Maharashtra 400601",@"Behind Central Jail, Rabodi - 1, Thane, Maharashtra 400601",@"Behind Central Jail, Rabodi - 1, Thane, Maharashtra 400601",@"Behind Central Jail, Rabodi - 1, Thane, Maharashtra 400601",@"Behind Central Jail, Rabodi - 1, Thane, Maharashtra 400601",@"Behind Central Jail, Rabodi - 1, Thane, Maharashtra 400601",@"Behind Central Jail, Rabodi - 1, Thane, Maharashtra 400601",@"Behind Central Jail, Rabodi - 1, Thane, Maharashtra 400601",@"Behind Central Jail, Rabodi - 1, Thane, Maharashtra 400601",@"Behind Central Jail, Rabodi - 1, Thane, Maharashtra 400601",@"Behind Central Jail, Rabodi - 1, Thane, Maharashtra 400601",@"Behind Central Jail, Rabodi - 1, Thane, Maharashtra 400601",@"Behind Central Jail, Rabodi - 1, Thane, Maharashtra 400601",@"Behind Central Jail, Rabodi - 1, Thane, Maharashtra 400601",@"Behind Central Jail, Rabodi - 1, Thane, Maharashtra 400601",];
    rat=@[@"81 ratings",@"34 ratings",@"81 ratings",@"34 ratings",@"81 ratings",@"34 ratings",@"81 ratings",@"34 ratings",@"81 ratings",@"34 ratings",@"81 ratings",@"34 ratings",@"81 ratings",@"34 ratings",@"81 ratings",@"34 ratings"]; star=@[@"★★★☆☆",@"★★★☆☆",@"★★★☆☆",@"★★★☆☆",@"★★★☆☆",@"★★★☆☆",@"★★★☆☆",@"★★★☆☆",@"★★★☆☆",@"★★★☆☆",@"★★★☆☆",@"★★★☆☆",@"★★★☆☆",@"★★★☆☆",@"★★★☆☆",@"★★★☆☆"]; dec=@[@"3.4",@"3.4",@"3.4",@"3.4",@"3.4",@"3.4",@"3.4",@"3.4",@"3.4",@"3.4",@"3.4",@"3.4",@"3.4",@"3.4",@"3.4",@"3.4"]; names=@[@"Mehul",@"Dhawal",@"Gaurav",@"Amit",@"Rakesh",@"Mehul",@"Dhawal",@"Gaurav",@"Amit",@"Rakesh",@"Mehul",@"Dhawal",@"Gaurav",@"Amit",@"Rakesh",@"Amit"];
    img=@[@"iSociety Wall",
          @"members",
          @"help desk",
          @"calendar",
          @"near by me",
          @"emergency",
          @"notifications",
          @"services",
          @"iSociety Wall",
          @"members",
          @"help desk",
          @"calendar",
          @"near by me",
          @"emergency",
          @"notifications",
          @"services"];
   
    // Do any additional setup after loading the view.
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [img count];
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 100;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *MyIdentifier = @"cell1";

    FirstTableViewCell *cell1=[tableView dequeueReusableCellWithIdentifier:MyIdentifier];
    if (cell1==nil){
        cell1=[[FirstTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:MyIdentifier];
    }
    cell1.label.text = [names objectAtIndex:indexPath.row];
    cell1.img.image=[UIImage imageNamed:[img objectAtIndex:indexPath.row]];
    cell1.decimalrat.text = [dec objectAtIndex:indexPath.row];
    cell1.stars.text = [star objectAtIndex:indexPath.row];
    cell1.addr.text = [addr objectAtIndex:indexPath.row];
    cell1.rati.text = [rat objectAtIndex:indexPath.row];
    return cell1;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation*/
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if([[segue identifier] isEqualToString:@"showdetail"]){
        VendordesViewController *detailView = [segue destinationViewController];
        NSIndexPath *myIndexPath = [self.tableview indexPathForSelectedRow];
        int row = (int)[myIndexPath row];
        detailView.detailModel=@[names[row],img[row],dec[row],star[row],addr[row],rat[row]];
                                
    }
}


@end
