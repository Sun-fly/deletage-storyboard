//
//  ZYViewController.m
//  delegate-storyboard
//
//  Created by 周亚-Sun on 2017/2/26.
//  Copyright © 2017年 zhouya. All rights reserved.
//

#import "ZYViewController.h"


@interface ZYViewController ()
@property(strong,nonatomic)NSMutableArray *itemArray;

@end

@implementation ZYViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.itemArray=[[NSMutableArray alloc]initWithCapacity:20];
    for (int i=0; i<6; i++) {
        NSString *string=[NSString stringWithFormat:@"这是数字%d",i];
        [self.itemArray addObject:string];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark -tableViewDelegate and Datasource
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.itemArray.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellID=@"myCell";
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:cellID];
    if (cell==nil) {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }
    cell.textLabel.text=self.itemArray[indexPath.row];
    cell.textLabel.textColor=[UIColor redColor];
    
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString *string=self.itemArray[indexPath.row];
    [self.delegate passValue:string];
}
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}


@end
