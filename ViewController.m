//
//  ViewController.m
//  delegate-storyboard
//
//  Created by 周亚-Sun on 2017/2/26.
//  Copyright © 2017年 zhouya. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *showLabel;
- (IBAction)clickTap:(UIButton *)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)clickTap:(UIButton *)sender {
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    ZYViewController *zy=segue.destinationViewController;
    zy.delegate=self;
}
-(void)passValue:(NSString *)passString{
    self.showLabel.text=passString;
}
@end
