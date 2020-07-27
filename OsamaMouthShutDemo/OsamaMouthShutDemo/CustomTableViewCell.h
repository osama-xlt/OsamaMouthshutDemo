//
//  CustomTableViewCell.h
//  OsamaMouthShutDemo
//
//  Created by Osama Mohammed Shaikh on 27/07/20.
//  Copyright © 2020 Osama Mohammed Shaikh. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CustomTableViewCell : UITableViewCell<UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout>
@property (weak, nonatomic) IBOutlet UICollectionView *CustomCollectionView;
@property NSInteger tableIndex;

@end

NS_ASSUME_NONNULL_END
