//
//  ServicesViewController.h
//  Vendors
//
//  Created by Amit Gawai on 13/03/18.
//  Copyright © 2018 Amit Gawai. All rights reserved.
//

#import "ViewController.h"

@interface ServicesViewController : ViewController <UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout>

@property (weak, nonatomic) IBOutlet UICollectionView *servcollection;

@end
