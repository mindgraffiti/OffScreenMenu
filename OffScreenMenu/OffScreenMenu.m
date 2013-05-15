//
//  OffScreenMenu.m
//  OffScreenMenu
//
//  Created by Thuy Copeland on 5/14/13.
//  Copyright (c) 2013 Thuy Copeland. All rights reserved.
//

#import "OffScreenMenu.h"

@implementation OffScreenMenu

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Getting an array of views.
        NSArray *screens = [[NSBundle mainBundle] loadNibNamed:@"OffScreenMenu" owner:self options:nil];
        // Take the first view and add it as a subView of this view.
        [self addSubview:(OffScreenMenu *)[screens objectAtIndex:0]];
    }
    return self;
}

// using the nib and initWithCoder gives you the flexibility
// of using the nib or adding things programmatically.
- (id)initWithCoder:(NSCoder *)aDecoder{
    self = [super initWithCoder:aDecoder];
    if (self) {
        NSArray *screens = [[NSBundle mainBundle] loadNibNamed:@"OffScreenMenu" owner:self options:nil];
        [self addSubview:(OffScreenMenu *)[screens objectAtIndex:0]];
    }
    return self;
}



/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
