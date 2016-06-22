//
//  ViewController.m
//  UitableViewIndexes
//
//  Created by LH on 16/6/22.
//  Copyright © 2016年 Mac. All rights reserved.
//

#import "ViewController.h"
#import "FriendListTVC.h"
//十六进制颜色
#define UIColorFromRGB(rgbValue) [UIColor \
colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
green:((float)((rgbValue & 0xFF00) >> 8))/255.0 \
blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]
@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>{
    UITableView *_tableView;
    NSMutableArray *toBeReturned;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIView *View = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 64)];
    View.backgroundColor = [UIColor blackColor];
    [self.view addSubview:View];
    
    self.view.backgroundColor =UIColorFromRGB(0xf2f4f4);
    
    toBeReturned = [[NSMutableArray alloc]init];
    [toBeReturned addObject:[NSString stringWithFormat:@"♡"]];
    for(char c = 'A';c<='Z';c++)
        [toBeReturned addObject:[NSString stringWithFormat:@"%c",c]];
    
    
    _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 64,[UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height-64)];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.showsHorizontalScrollIndicator = NO;
        _tableView.showsVerticalScrollIndicator = NO;
        _tableView.separatorColor = UIColorFromRGB(0xe6e6e6);
        [_tableView setSectionIndexBackgroundColor:[UIColor clearColor]];
        [_tableView setSectionIndexColor:[UIColor grayColor]];
        _tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];//去除多余空白行
        [self.view addSubview:_tableView];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 1;
    
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return toBeReturned.count;
}

//行高
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 60;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *string = @"Cell";
    FriendListTVC *cell = [tableView dequeueReusableCellWithIdentifier:string];
    if (cell == nil) {
        cell = [[FriendListTVC alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:string];
        
    }
    
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    return cell;
    
}
//右侧索引
- (NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView
{
    
    return toBeReturned;
    
}
- (NSInteger)tableView:(UITableView *)tableView sectionForSectionIndexTitle:(NSString *)title atIndex:(NSInteger)index
{
    NSInteger count = 0;
    for(NSString *character in toBeReturned)
    {
        if([character isEqualToString:title])
        {
            return count;
        }
        count ++;
    }
    return 0;
    
}

- (CGFloat) tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 20;
}
//设置_tableView的章、节
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    
    return toBeReturned[section];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
