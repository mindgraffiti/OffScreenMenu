//
//  ViewController.h
//  OffScreenMenu
//
//  Created by Thuy Copeland on 5/14/13.
//  Copyright (c) 2013 Thuy Copeland. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "OffScreenMenu.h"
#import "OffScreenMenuTab.h"
@interface ViewController : UIViewController <OffScreenMenuDelegate, OffScreenMenuTabDelegate>
@property (strong, nonatomic) IBOutlet OffScreenMenu *osMenu;
@property (strong, nonatomic) IBOutlet OffScreenMenuTab *osTab;
@end
