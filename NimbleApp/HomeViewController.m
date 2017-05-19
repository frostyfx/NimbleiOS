//
//  HomeViewController.m
//  SkellyOC
//
//  Created by Andrew Greteman on 1/19/17.
//  Copyright © 2017 frostyFX. All rights reserved.
//

#import "HomeViewController.h"
#import "TableViewController.h"


@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item {
    if (item.tag == 0) {
        TableViewController *tableVC = [self.storyboard instantiateViewControllerWithIdentifier:@"TableViewController"];
        [tableVC setModalTransitionStyle:UIModalTransitionStyleCoverVertical];
        [self.navigationController pushViewController:tableVC animated:YES];

    }
//    if (item.tag == 1) {
//        FormViewController *formVC = [self.storyboard instantiateViewControllerWithIdentifier:@"FormViewController"];
//        [formVC setModalTransitionStyle:UIModalTransitionStyleCoverVertical];
//        [self.navigationController pushViewController:formVC animated:YES];
//    }
//    if (item.tag == 2){
//        ScrollViewController *scrollVC = [self.storyboard instantiateViewControllerWithIdentifier:@"ScrollViewController"];
//        [scrollVC setModalTransitionStyle:UIModalTransitionStyleCoverVertical];
//        [self.navigationController pushViewController:scrollVC animated:YES];
//    }
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.navigationController setNavigationBarHidden:YES];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
