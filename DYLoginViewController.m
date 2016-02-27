//
//  DYLoginViewController.m
//  0227_SeriousIM
//
//  Created by dingyuezhang on 2/27/16.
//  Copyright © 2016 dingyuezhang. All rights reserved.
//

#import "DYLoginViewController.h"
#import "DYLoginMgr.h"

@interface DYLoginViewController ()

@end

@implementation DYLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    DYLoginData *loginData = [[DYLoginData alloc] init];
    loginData.account = @"first";
    loginData.token = @"appKey";
    
    [[DYLoginMgr sharedManager] setCurrentLoginData:loginData];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
