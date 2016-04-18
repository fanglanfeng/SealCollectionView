# SealCollectionView

使用说明


/**
 *  实现CollectionView的布局和初始化
 */
-(void)initLayoutWithCollection{
    //collection的宽度
    CGSize screenSize = [UIScreen mainScreen].bounds.size;
    
#warning cell的总数量  ->和可视区里上水平方向上cell的数量区别开
    CGFloat countSum = 8;
    
#warning 在可视区里上水平方向上cell的数量 ->和cell的总数量区别开
    CGFloat countOne = 4;
    
    //每个cell之间的水平距离，
    CGFloat HonMargin = 10;
    
    //得到collection的宽度计算
    CGFloat cellWidth = [FFFCommon CollectionCellWidth:screenSize.width CountInOneScreenWidthNumber:countOne margin:HonMargin];
    
    //计算collection的frame
    CGRect HorFrame = CGRectMake(0, 50, screenSize.width, cellWidth + 2*HonMargin);
    
    //得到水平方向上  layout  的布局样式
    UICollectionViewFlowLayout *HoLayout = [FFFCommon flowLayoutCountInOneScreenWidthCount:countOne HorizontalMargin:HonMargin ColltionFrame:HorFrame];
    
    //初始化collection ->水平方向
    SealCollectionView *Honseal = [[SealCollectionView alloc] initWithFrame:HorFrame collectionViewLayout:HoLayout];
    Honseal.cellCount = countSum;
    [self.view addSubview:Honseal];
    
#pragma mark - 下面的是做垂直方向上的布局
//   =====================
    //每个cell之间的垂直距离 默认和水平的距离一样的
    CGFloat VerMargin = HonMargin;
    
    //每个cell的高度 默认宽度和高度是相等的
    CGFloat cellHeight = cellWidth;
    
    //计算垂直方向上总共几行
    CGFloat number = ceilf(countSum/countOne);
    
    //总共collectionView的高度 -
    CGFloat marginHeight = number * cellHeight + (number+1)*VerMargin;
    
    //计算collection的frame
    CGRect VerFrame = CGRectMake(0, 200, screenSize.width, cellHeight + 2 * VerMargin); //marginHeight
    
     //得到垂直方向上  layout  的布局样式
    UICollectionViewFlowLayout *VerLayout = [FFFCommon flowLayoutCountInOneScreenWidthCount:countOne VerticalMargin:VerMargin ColltionFrame:VerFrame];
//   =====================
    
    //初始化collection ->垂直水平方向
    SealCollectionView *Verseal = [[SealCollectionView alloc] initWithFrame:VerFrame collectionViewLayout:VerLayout];
    Verseal.cellCount = countSum;
    
    [self.view addSubview:Verseal];
}
