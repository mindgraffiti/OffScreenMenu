//
//  ViewController.m
//  OffScreenMenu
//
//  Created by Thuy Copeland on 5/14/13.
//  Copyright (c) 2013 Thuy Copeland. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // assign the osMenu.delegate to this view
    self.osMenu.delegate = self;
    self.osTab.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)openCloseTriggered:(BOOL)openClosed{
    NSLog(@"Tap received? %@",(openClosed) ? @"YES" : @"NO");
    if (openClosed == YES) {
        // Animate open
        [UIView animateWithDuration:0.5 delay:0.0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
            // do something
            self.osMenu.frame = CGRectMake(0, self.osMenu.frame.origin.y + 250, self.osMenu.frame.size.width, self.osMenu.frame.size.height);
            self.osTab.frame = CGRectMake(self.osTab.frame.origin.x, self.osTab.frame.origin.y + 250, self.osTab.frame.size.width, self.osTab.frame.size.height);
        } completion:^(BOOL finished) {
            // do something
            
        }];
    } else {
        // Animate close
        [UIView animateWithDuration:0.5 delay:0.0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
            // do something
            self.osMenu.frame = CGRectMake(0, self.osMenu.frame.origin.y - 250, self.osMenu.frame.size.width, self.osMenu.frame.size.height);
            self.osTab.frame = CGRectMake(self.osTab.frame.origin.x, self.osTab.frame.origin.y - 250, self.osTab.frame.size.width, self.osTab.frame.size.height);
        } completion:^(BOOL finished) {
            // do something
        }];
    }
}
@end
