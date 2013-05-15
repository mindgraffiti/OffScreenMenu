//
//  ViewController.h
//  OffScreenMenu
//
//  Created by Thuy Copeland on 5/14/13.
//  Copyright (c) 2013 Thuy Copeland. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "OffScreenMenu.h"
@interface ViewController : UIViewController <OffScreenMenuDelegate>
@property (strong, nonatomic) IBOutlet OffScreenMenu *osMenu;
@end
