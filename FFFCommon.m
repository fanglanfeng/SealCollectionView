//
//  FFFCommon.m
//  封装collection
//
//  Created by 房兰峰 on 16/1/1.
//  Copyright © 2016年 房兰峰. All rights reserved.
//

#import "FFFCommon.h"

@implementation FFFCommon

+(CGFloat)CollectionCellWidth:(CGFloat)width CountInOneScreenWidthNumber:(CGFloat)count margin:(CGFloat)margin{
    //每一个cell的宽度
    CGFloat cellWidth = (width - (count+1)*margin)/count;
    return cellWidth;
}

+(UICollectionViewFlowLayout *)flowLayoutCountInOneScreenWidthCount:(CGFloat)count HorizontalMargin:(CGFloat)margin ColltionFrame:(CGRect)frame{
    
    //每一个cell的宽度
    CGFloat cellWidth = [FFFCommon CollectionCellWidth:frame.size.width CountInOneScreenWidthNumber:count margin:margin];
    
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    
    layout.itemSize = CGSizeMake(cellWidth,cellWidth);
    layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    layout.minimumLineSpacing = margin;
    layout.minimumInteritemSpacing = margin;
    layout.sectionInset = UIEdgeInsetsMake(0, margin, 0, margin); //上 左 下 右
    return layout;
}
+(UICollectionViewFlowLayout *)flowLayoutCountInOneScreenWidthCount:(CGFloat)count VerticalMargin:(CGFloat)margin ColltionFrame:(CGRect)frame{
    
    //每一个cell的宽度
    CGFloat cellWidth = [FFFCommon CollectionCellWidth:frame.size.width CountInOneScreenWidthNumber:count margin:margin];
    
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    layout.itemSize = CGSizeMake(cellWidth,cellWidth);
    layout.scrollDirection = UICollectionViewScrollDirectionVertical;
    layout.minimumLineSpacing = margin;
    layout.minimumInteritemSpacing = margin;
    layout.sectionInset = UIEdgeInsetsMake(margin, margin, margin, margin); //上 左 下 右
    return layout;
}





@end
