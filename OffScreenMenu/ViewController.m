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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)openCloseTriggered:(BOOL)openClosed{
    NSLog(@"Tap received? %@",(openClosed) ? @"YES" : @"NO");
}
@end
