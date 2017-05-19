//
//  TableViewController.m
//  SkellyOC//
//  Created by Andrew Greteman on 4/20/17.
//  Copyright © 2017 frostyFX. All rights reserved.
//

#import "TableViewController.h"
#import "TableCell.h"
#import "TopCell.h"
#import "HomeViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController
{
    NSArray *names;
    NSArray *applicationImages;
    NSArray *currentCapacities;
    NSArray *totalCapacities;
    NSArray *percentUsed;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [names count]+1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row > 0) {
        return 64;
    } else {
        return 45;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row > 0) {
    
        static NSString *cellIdentefier = @"tableCell";
        
        TableCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentefier];
        
        if (cell == nil) {
            cell = [[TableCell alloc] initWithDelegate:(id)self reuseIdentifier:(NSString *)cellIdentefier];
        }
        
        [cell.nameButton setTitle:[names objectAtIndex:indexPath.row-1] forState:UIControlStateNormal];
        cell.applicationImageView.image = [UIImage imageNamed:[applicationImages objectAtIndex:indexPath.row-1]];
        cell.currentSizeLabel.text = [currentCapacities objectAtIndex:indexPath.row-1];
        cell.totalSizeLabel.text = [totalCapacities objectAtIndex:indexPath.row-1];
        cell.dataCapacityBar.progress = [[percentUsed objectAtIndex:indexPath.row-1] floatValue];
        
        
        return cell;
    } else {
        static NSString *cellIdentefier = @"topCell";
        
        TopCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentefier];
        
        if (cell == nil) {
            cell = [[TopCell alloc] initWithDelegate:(id)self reuseIdentifier:(NSString *)cellIdentefier];
        }
        
        return cell;
    }
}

- (void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item {
    if (item.tag == 0) {
        HomeViewController *homeVC = [self.storyboard instantiateViewControllerWithIdentifier:@"HomeViewController"];
        [homeVC setModalTransitionStyle:UIModalTransitionStyleCoverVertical];
        [self.navigationController popToRootViewControllerAnimated:YES];
    }
    if (item.tag == 1) {
        [self.navigationController popViewControllerAnimated:YES];
    }
//    if (item.tag == 2){
//        FormViewController *formVC = [self.storyboard instantiateViewControllerWithIdentifier:@"FormViewController"];
//        [formVC setModalTransitionStyle:UIModalTransitionStyleCoverVertical];
//        [self.navigationController pushViewController:formVC animated:YES];
//    }
//    if (item.tag == 3){
//        ScrollViewController *scrollVC = [self.storyboard instantiateViewControllerWithIdentifier:@"ScrollViewController"];
//        [scrollVC setModalTransitionStyle:UIModalTransitionStyleCoverVertical];
//        [self.navigationController pushViewController:scrollVC animated:YES];
//    }
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    names = [NSArray arrayWithObjects:@"volume1", @"volume2", @"volume3", @"volume4", @"volume5", nil];
    applicationImages = [NSArray arrayWithObjects:@"greenCircle.png", @"greenCircle.png", @"grayCircle.png", @"grayCircle.png", @"greenCircle.png", nil];
    currentCapacities = [NSArray arrayWithObjects:[NSByteCountFormatter stringFromByteCount:50000000000 countStyle:NSByteCountFormatterCountStyleFile], [NSByteCountFormatter stringFromByteCount:523000000000 countStyle:NSByteCountFormatterCountStyleFile], [NSByteCountFormatter stringFromByteCount:400000000000 countStyle:NSByteCountFormatterCountStyleFile], [NSByteCountFormatter stringFromByteCount:200000000000 countStyle:NSByteCountFormatterCountStyleFile], [NSByteCountFormatter stringFromByteCount:150000000000 countStyle:NSByteCountFormatterCountStyleFile] ,nil];
    totalCapacities = [NSArray arrayWithObjects: [NSByteCountFormatter stringFromByteCount:1000000000000 countStyle:NSByteCountFormatterCountStyleFile], [NSByteCountFormatter stringFromByteCount:1000000000000 countStyle:NSByteCountFormatterCountStyleFile], [NSByteCountFormatter stringFromByteCount:1000000000000 countStyle:NSByteCountFormatterCountStyleFile], [NSByteCountFormatter stringFromByteCount:1000000000000 countStyle:NSByteCountFormatterCountStyleFile], [NSByteCountFormatter stringFromByteCount:1000000000000 countStyle:NSByteCountFormatterCountStyleFile],nil];
    percentUsed = [NSMutableArray arrayWithObjects: [NSNumber numberWithFloat:0.05],  [NSNumber numberWithFloat:0.523], [NSNumber numberWithFloat:0.4], [NSNumber numberWithFloat:0.20], [NSNumber numberWithFloat:0.15],nil];
    
    NSLog(@"%f", [[NSNumber numberWithFloat:50000000000/1000000000000] floatValue]);
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
