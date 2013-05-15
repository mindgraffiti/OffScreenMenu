//
//  OffScreenMenu.h
//  OffScreenMenu
//
//  Created by Thuy Copeland on 5/14/13.
//  Copyright (c) 2013 Thuy Copeland. All rights reserved.
//

#import <UIKit/UIKit.h>
// custom protocol
// if an object inherits from this protocol, it's expected to have this method.
@protocol OffScreenMenuDelegate <NSObject>
- (void)openCloseTriggered:(BOOL)openClosed;
@end

@interface OffScreenMenu : UIView {
    BOOL menuIsOpen;
}
@property (assign, nonatomic) id <OffScreenMenuDelegate> delegate;
@property (strong, nonatomic) IBOutlet UITapGestureRecognizer *tabTap;

@end

