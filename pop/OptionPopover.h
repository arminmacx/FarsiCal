//
//  OptionPopover.h
//  pop
//
//  Created by Armin Lavaee on 9/16/15.
//  Copyright © 2015 Armin. All rights reserved.
//

#import <Cocoa/Cocoa.h>
@class AppDelegate;

@interface OptionPopover : NSViewController <NSPopoverDelegate> {
    NSPopover *popover;
    AppDelegate *app;
    
}





//- (void)showPopup:(NSView *)positioningView;

@end
