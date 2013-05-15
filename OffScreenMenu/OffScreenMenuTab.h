//
//  OffScreenMenuTab.h
//  OffScreenMenu
//
//  Created by Thuy Copeland on 5/15/13.
//  Copyright (c) 2013 Thuy Copeland. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol OffScreenMenuTabDelegate <NSObject>
- (void)openCloseTriggered:(BOOL)openClosed;
@end

@interface OffScreenMenuTab : UIView{
    BOOL menuIsOpen;
}
@property (assign, nonatomic) id <OffScreenMenuTabDelegate> delegate;
@property (strong, nonatomic) IBOutlet UITapGestureRecognizer *tabTap;
@end
