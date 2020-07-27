//
//  CustomTableViewCell.m
//  OsamaMouthShutDemo
//
//  Created by Osama Mohammed Shaikh on 27/07/20.
//  Copyright © 2020 Osama Mohammed Shaikh. All rights reserved.
//

#import "CustomTableViewCell.h"
#import "CustomCollectionViewCell.h"

@implementation CustomTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code

    [self registerCustomCollectionViewCell];
    [self setDelegateAndDatasource];
}

-(void) setDelegateAndDatasource {
    self.CustomCollectionView.delegate = self;
    self.CustomCollectionView.dataSource = self;
}

-(void) registerCustomCollectionViewCell {
    [self.CustomCollectionView registerNib:[UINib nibWithNibName:@"CustomCollectionViewCell" bundle:nil] forCellWithReuseIdentifier:@"CustomCollectionViewCell"];
}

- (nonnull __kindof UICollectionViewCell *)collectionView:(nonnull UICollectionView *)collectionView cellForItemAtIndexPath:(nonnull NSIndexPath *)indexPath {
    
    CustomCollectionViewCell *cell = [self.CustomCollectionView dequeueReusableCellWithReuseIdentifier:@"CustomCollectionViewCell" forIndexPath:indexPath];
    cell.CounterLabel.text = [NSString stringWithFormat:@"%ld", ((long)indexPath.item) * (self.tableIndex + 1)];
    return cell;
}

- (NSInteger)collectionView:(nonnull UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 10;
}

-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    return CGSizeMake(75, 75);
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
