//
//  ViewController.h
//  Vendors
//
//  Created by Amit Gawai on 13/03/18.
//  Copyright © 2018 Amit Gawai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout>
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;


@end

