//
//  FFFCommon.h
//  封装collection
//
//  Created by 房兰峰 on 16/1/1.
//  Copyright © 2016年 房兰峰. All rights reserved.
//

#import <UIKit/UIKit.h>
@interface FFFCommon : NSObject

/**
 *  实现CollectionView的布局和初始化
 *  paramar width : 返回每个cell的宽度
 *
 *
 *
 */
+(CGFloat)CollectionCellWidth:(CGFloat)width CountInOneScreenWidthNumber:(CGFloat)count margin:(CGFloat)margin;

/**
 *  水平布局
 *
 *  @param count  在屏幕视区内的cell数量
 *  @param margin 每一个cell之间的距离
 *  @param frame  collectionView的frame
 *
 *  @return 设置好的layout(布局)
 */
+(UICollectionViewFlowLayout *)flowLayoutCountInOneScreenWidthCount:(CGFloat)count HorizontalMargin:(CGFloat)margin ColltionFrame:(CGRect)frame;

/**
 *  垂直布局
 *
 *  @param count  在屏幕视区内的cell数量
 *  @param margin 每一个cell之间的距离
 *  @param frame  collectionView的frame
 *
 *  @return 设置好的layout(布局)
 */
+(UICollectionViewFlowLayout *)flowLayoutCountInOneScreenWidthCount:(CGFloat)count VerticalMargin:(CGFloat)margin ColltionFrame:(CGRect)frame;

@end
