//
//  OffScreenMenuTab.m
//  OffScreenMenu
//
//  Created by Thuy Copeland on 5/15/13.
//  Copyright (c) 2013 Thuy Copeland. All rights reserved.
//

#import "OffScreenMenuTab.h"

@implementation OffScreenMenuTab

// this is used by interface builder to create the subclass you put in another nib file.
- (id)initWithCoder:(NSCoder *)aDecoder{
    self = [super initWithCoder:aDecoder];
    if (self) {
        NSArray *screens = [[NSBundle mainBundle] loadNibNamed:@"OffScreenMenuTab" owner:self options:nil];
        [self addSubview:(OffScreenMenuTab *)[screens objectAtIndex:0]];
         menuIsOpen = NO;
    }
    return self;
}

- (IBAction)openCloseMenu:(id)sender{
    // do I  have a delegate?
    if (self.delegate) {
        // does it respond when triggered?
        if ([self.delegate respondsToSelector:@selector(openCloseTriggered:)]) {
            // ok then, do something.
            if (menuIsOpen == YES) {
                menuIsOpen = NO;
            } else {
                menuIsOpen = YES;
            }
            // The main view, ViewController.nib, is receiving this.
            [self.delegate openCloseTriggered:menuIsOpen];
        }
    }
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
