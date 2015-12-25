//
//  FirstViewController.m
//  LearnASDNode
//
//  Created by tony on 15/12/25.
//  Copyright © 2015年 xdf. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    ASNetworkImageNode *imageNode = [[ASNetworkImageNode alloc] init];
    imageNode.backgroundColor = [UIColor grayColor];
    imageNode.URL = [NSURL URLWithString:@"https://www.baidu.com/img/new270_b73d6c185c79510f76f7122fb472b97d.png"];
    [imageNode setFrame:CGRectMake(0, 0, 200, 200)];
    [self.view addSubnode:imageNode];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)pushToController:(id)sender {
    SecondViewController *controller = [[SecondViewController alloc] init];
    [self.navigationController pushViewController:controller animated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
