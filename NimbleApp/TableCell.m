//
//  TableCell.m
//  SkellyOC
//
//  Created by Andrew Greteman on 4/21/17.
//  Copyright © 2017 frostyFX. All rights reserved.
//

#import "TableCell.h"

@interface TableCell ()
@end

@implementation TableCell

@synthesize nameButton = _nameButton;
@synthesize applicationImageView = _applicationImageView;
@synthesize currentSizeLabel = _currentSizeLabel;
@synthesize totalSizeLabel = _totalSizeLabel;
@synthesize dataCapacityBar = _dataCapacityBar;

-(id)initWithDelegate:(id)parent reuseIdentifier:(NSString *)reuseIdentifier
{
    
    if (self = [self initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reuseIdentifier])
    {
        self=(TableCell*)[[[NSBundle mainBundle] loadNibNamed:@"TableCell" owner:nil options:nil] lastObject];
    }
    
    self.backgroundColor = [UIColor clearColor];
    self.backgroundView = NULL;
    self.selectedBackgroundView =NULL;
    

    //return cell
    return self;
}

-(IBAction)cellButtonPressed:(id)sender
{
    [self.delegate cellButtonPressed:self];
}
@end


