//
//  FriendListTVC.h
//  FrameWork
//
//  Created by Mac on 16/3/4.
//  Copyright © 2016年 yan.jm. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FriendListTVC : UITableViewCell
@property (strong, nonatomic) UILabel *labName;          //标题
@property (strong, nonatomic) UIImageView *imgHead;      //头像
@property (strong, nonatomic) UILabel *labText;          //地址
@property (strong, nonatomic) UIImageView *imgAdd;       //地址icon
@property (strong, nonatomic) UIImageView *imgWeather;   //日期图标
@property (strong, nonatomic) UILabel *labTemperature;   //温度
@property (strong, nonatomic) UILabel *labAQI;           //AQI
@property (strong, nonatomic) UIImageView *imgAQI;   //AQI图标
@property (strong, nonatomic) UIView *iconView;   //

@property (strong, nonatomic) UIButton *btnDelete;   //滑动删除按钮
@end
