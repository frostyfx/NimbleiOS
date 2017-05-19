//
//  TableCell.h
//  SkellyOC
//
//  Created by Andrew Greteman on 4/21/17.
//  Copyright © 2017 frostyFX. All rights reserved.
//

@class TopCell;

#import <UIKit/UIKit.h>


@protocol TableCellDelegate <NSObject>
-(void) cellButtonPressed: (TopCell*)cell;
-(id)initWithDelegate:(id)parent reuseIdentifier:(NSString *)reuseIdentifier;
@optional

@end

@interface TopCell : UITableViewCell <TableCellDelegate>


@property (nonatomic, weak) IBOutlet UILabel *nameLabel;
@property (nonatomic, weak) IBOutlet UILabel *descriptionLabel;
@property (nonatomic, weak) IBOutlet UIImageView *ballImageView;




@property (nonatomic, assign) id <TableCellDelegate> delegate;

@end
