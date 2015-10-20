//
//  ViewController.m
//  ScrollViewDemo
//
//  Created by Cerko on 15/10/20.
//  Copyright © 2015年 Cerko. All rights reserved.
//

#import "JCViewController.h"
#import "UIScrollView+JCBoundaryInspector.h"

@interface JCViewController ()

@end

@implementation JCViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.tableView.contentInset = UIEdgeInsetsMake(100, 0, 200, 0);
    
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    //    NSLog(@"view Frame:%@\n", NSStringFromCGRect(self.view.frame));
    //    NSLog(@"tableView Frame:%@", NSStringFromCGRect(self.tableView.frame));
    
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    cell.textLabel.text = [NSString stringWithFormat:@"%ld", indexPath.row];
    return cell;
}


- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    
    
    NSLog(@"isAtTop :%d, offset:%d, isAtBottom:%d, offset:%d", [scrollView isAtTop],[scrollView isAtTopWithOffset:44], [scrollView isAtBottom], [scrollView isAtBottomWithOffset:44]);
}

@end
