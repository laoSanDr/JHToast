//
//  ViewController.m
//  JHToast-Demo
//
//  Created by jalaSmart on 16/9/1.
//  Copyright © 2016年 MrChen. All rights reserved.
//
#define VIEW_WIDTH self.view.frame.size.width
#define VIEW_HEIGHT self.view.frame.size.height


#import "ViewController.h"
#import "JHToast.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSArray *arr;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _arr = @[@"中间显示", @"中间显示+自定义停留时间", @"上方显示", @"上方显示+自定义停留时间", @"上方显示+自定义距顶端距离+自定义停留时间", @"下方显示", @"下方显示+自定义停留时间", @"下方显示+自定义距底端距离", @"下方显示+自定义距底端距离+自定义停留时间"];
    [self.view addSubview:self.tableView];
}

- (UITableView *)tableView
{
    if (!_tableView) {
        
        self.automaticallyAdjustsScrollViewInsets = NO;
        _tableView = [[UITableView alloc] init];
        _tableView.frame = CGRectMake(0, 64, VIEW_WIDTH, VIEW_HEIGHT - 64);
        
        _tableView.delegate = self;
        _tableView.dataSource = self;
        
        _tableView.rowHeight = 50;
        //注册复用标识
        [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cellId"];
    }
    return _tableView;
}


#pragma mark - 代理方法
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _arr.count;
}

//出列cell
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellId" forIndexPath:indexPath];
    cell.textLabel.text = _arr[indexPath.row];
    cell.textLabel.font = [UIFont systemFontOfSize:14];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    switch (indexPath.row) {
        case 0: [JHToast showCenterWithText:@"中间显示"]; break;
        case 1: [JHToast showCenterWithText:@"中间显示2秒" duration:2.0]; break;
        case 2: [JHToast showTopWithText:@"上方显示"]; break;
        case 3: [JHToast showTopWithText:@"上方显示2秒" duration:2.0]; break;
        case 4: [JHToast showTopWithText:@"距离顶部200" topOffset:200 duration:2.0]; break;
        case 5: [JHToast showBottomWithText:@"下方显示"]; break;
        case 6: [JHToast showBottomWithText:@"下方显示2秒" duration:2.0]; break;
        case 7: [JHToast showBottomWithText:@"距离底部200" bottomOffset:200]; break;
        case 8: [JHToast showBottomWithText:@"距离底部300" bottomOffset:300 duration:3.0]; break;
            
        default:
            break;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
