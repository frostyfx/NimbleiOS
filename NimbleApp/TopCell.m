//
//  TableCell.m
//  SkellyOC
//
//  Created by Andrew Greteman on 4/21/17.
//  Copyright © 2017 frostyFX. All rights reserved.
//

#import "TopCell.h"

@interface TopCell ()
@end

@implementation TopCell

@synthesize nameLabel = _nameLabel;
@synthesize descriptionLabel = _descriptionLabel;
@synthesize ballImageView = _ballImageView;

-(id)initWithDelegate:(id)parent reuseIdentifier:(NSString *)reuseIdentifier
{
    
    if (self = [self initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reuseIdentifier])
    {
        self=(TopCell*)[[[NSBundle mainBundle] loadNibNamed:@"TopCell" owner:nil options:nil] lastObject];
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


