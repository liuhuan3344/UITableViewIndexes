//
//  FriendListTVC.m
//  FrameWork
//
//  Created by Mac on 16/3/4.
//  Copyright © 2016年 yan.jm. All rights reserved.
//

#import "FriendListTVC.h"
// View 坐标(x,y)和宽高(width,height)
#define kScreenHeight [UIScreen mainScreen].bounds.size.height
#define kScreenWidth [UIScreen mainScreen].bounds.size.width
#define kWidth(R) (R)*(kScreenWidth)/320
#define kHeight(R) (iPhone4?((R)*(kScreenHeight)/480):((R)*(kScreenHeight)/568))

#define X(v)               (v).frame.origin.x
#define Y(v)               (v).frame.origin.y
#define WIDTH(v)           (v).frame.size.width
#define HEIGHT(v)          (v).frame.size.height

#define MinX(v)            CGRectGetMinX((v).frame) // 获得控件屏幕的x坐标
#define MinY(v)            CGRectGetMinY((v).frame) // 获得控件屏幕的Y坐标

#define MidX(v)            CGRectGetMidX((v).frame) //横坐标加上到控件中点坐标
#define MidY(v)            CGRectGetMidY((v).frame) //纵坐标加上到控件中点坐标

#define MaxX(v)            CGRectGetMaxX((v).frame) //横坐标加上控件的宽度
#define MaxY(v)            CGRectGetMaxY((v).frame) //纵坐标加上控件的高度
@implementation FriendListTVC

- (void)awakeFromNib {
    // Initialization code
}
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        //头像
        self.imgHead = [[UIImageView alloc]initWithFrame:CGRectMake(14, 6, 48, 48)];
        self.imgHead.layer.cornerRadius = 24;
        self.imgHead.layer.masksToBounds = YES;
        self.imgHead.image = [UIImage imageNamed:@"icon_header_default"];
        [self addSubview:self.imgHead];
        //列表中姓名
        self.labName = [[UILabel alloc]initWithFrame:CGRectMake(MaxX(self.imgHead) +5, Y(self.imgHead), 100, HEIGHT(self.imgHead))];
        self.labName.textColor = [UIColor blackColor];
        self.labName.font = [UIFont systemFontOfSize:15];
        self.labName.text = @"秦时明月";
        //[self.labName sizeToFit];
        [self addSubview:self.labName];
        
    }
    return self;
}





- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

@end
