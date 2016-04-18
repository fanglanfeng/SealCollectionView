//
//  SealCollectionView.m
//  封装collection
//
//  Created by 房兰峰 on 16/1/1.
//  Copyright © 2016年 房兰峰. All rights reserved.
//

#import "SealCollectionView.h"

@interface SealCollectionView ()<UICollectionViewDataSource,UICollectionViewDelegate>

@end

@implementation SealCollectionView

-(void)setCellCount:(int)cellCount{
    _cellCount = cellCount;
}

static NSString *SealCollectionViewCellID = @"SealCollectionViewCellID";

-(instancetype)initWithFrame:(CGRect)frame collectionViewLayout:(UICollectionViewLayout *)layout{
    
    self = [super initWithFrame: frame collectionViewLayout:layout];
    
    [self registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:SealCollectionViewCellID];
    
    self.dataSource = self;
    self.delegate = self;
    self.showsHorizontalScrollIndicator = NO;
    self.showsVerticalScrollIndicator = NO;
    self.scrollEnabled = YES;
    
    //设置collectionView的背景颜色
    self.backgroundColor = [UIColor lightGrayColor];
    
    return self;
}

#pragma mark - UICollectionViewDataSource

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return _cellCount;
}


-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:SealCollectionViewCellID forIndexPath:indexPath];
    
    if (cell == nil) {
        cell = [[UICollectionViewCell alloc] init];
    }    
    //Cell的背景颜色
    cell.backgroundColor = [UIColor blueColor];
    return cell;
    
}

#pragma mark - UICollectionViewDelegate

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    
    NSLog(@"%s,你点击了第 %ld 个Cell __ ",__func__,indexPath.row);
}



@end
