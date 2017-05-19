//
//  TableCell.h
//  SkellyOC
//
//  Created by Andrew Greteman on 4/21/17.
//  Copyright © 2017 frostyFX. All rights reserved.
//

@class TableCell;

#import <UIKit/UIKit.h>


@protocol TableCellDelegate <NSObject>
-(void) cellButtonPressed: (TableCell*)cell;
-(id)initWithDelegate:(id)parent reuseIdentifier:(NSString *)reuseIdentifier;
@optional

@end

@interface TableCell : UITableViewCell <TableCellDelegate>


@property (nonatomic, weak) IBOutlet UIButton *nameButton;
@property (nonatomic, weak) IBOutlet UIImageView *applicationImageView;
@property (nonatomic, weak) IBOutlet UILabel *currentSizeLabel;
@property (nonatomic, weak) IBOutlet UILabel *totalSizeLabel;
@property (nonatomic, weak) IBOutlet UIProgressView *dataCapacityBar;


@property (nonatomic, assign) id <TableCellDelegate> delegate;

@end
