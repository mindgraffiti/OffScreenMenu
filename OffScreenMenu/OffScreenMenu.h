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
@end

@interface OffScreenMenu : UIView
@property (assign, nonatomic) id <OffScreenMenuDelegate> delegate;
@end

