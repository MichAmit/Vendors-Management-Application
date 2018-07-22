//
//  ReviewViewController.m
//  Vendors
//
//  Created by Amit Gawai on 19/06/18.
//  Copyright © 2018 Amit Gawai. All rights reserved.
//

#import "ReviewViewController.h"
#import "ReviewTableViewCell.h"
@interface ReviewViewController ()
{
    NSArray *name;
    NSArray *name1;
    NSArray *rat;
    NSArray *rat1;
    NSArray *img;
    NSArray *img1;
    NSArray *star;
    NSArray *star1;
}
@end

@implementation ReviewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    name=@[@"Amit",@"Gaurav"];
    img=@[@"iSociety Wall",
          @"members"];
    img1=@[@"help desk",
           @"calendar",
           @"near by me"];
    name1=@[@"Mehul",@"Dhawal",@"Sachin"];
    rat=@[@"3.4",@"4.1"];
    rat1=@[@"2.1",@"4.5",@"3.2"];
star=@[@"★★★☆☆",@"★★★☆☆"];
    star1=@[@"★★★☆☆",@"★★★☆☆",@"★★★☆☆"];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    switch (_sgmntout.selectedSegmentIndex) {
        case 0:
            return [name count];
            break;
        case 1:
            return [name1 count];
            
        default:
            break;
    }
    return 0;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *myIdentifier = @"MyIdentifier";
    
    ReviewTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:myIdentifier];
    if (cell == nil)
    {
        cell = [[ReviewTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:myIdentifier];
    }
    
    switch (_sgmntout.selectedSegmentIndex)
    {
        case 0:
            cell.name.text =[name objectAtIndex:indexPath.row];
            cell.img.image=[UIImage imageNamed:[img objectAtIndex:indexPath.row]];
            cell.rat.text=[rat objectAtIndex:indexPath.row];
            cell.star.text=[star objectAtIndex:indexPath.row];
            break;
        case 1:
            cell.name.text = [name1 objectAtIndex:indexPath.row];
            cell.img.image=[UIImage imageNamed:[img1 objectAtIndex:indexPath.row]];
            cell.rat.text=[rat1 objectAtIndex:indexPath.row];
            cell.star.text=[star1 objectAtIndex:indexPath.row];
            break;
        
    }
    return cell;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)sgmnt:(UISegmentedControl *)sender {
    if(_sgmntout.selectedSegmentIndex == 0)
    {
        _tableview.hidden = NO;
    }
    else if (_sgmntout.selectedSegmentIndex == 1)
    {
        _tableview.hidden = NO;
    }
    [_tableview reloadData];
}
@end
