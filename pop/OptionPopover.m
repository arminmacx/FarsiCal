//
//  OptionPopover.m
//  pop
//
//  Created by Armin Lavaee on 9/16/15.
//  Copyright © 2015 Armin. All rights reserved.
//

#import "OptionPopover.h"
#import "AppDelegate.h"
#import "Date.h"
@interface OptionPopover ()
@property Date *start;
@end

@implementation OptionPopover

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

- (void)_makePopoverIfNeeded {
    if (popover == nil) {
        // Create and setup our window
        popover = [[NSPopover alloc] init];
        // The popover retains us and we retain the popover. We drop the popover whenever it is closed to avoid a cycle.
        popover.contentViewController = self;
        popover.behavior = NSPopoverBehaviorTransient;
        popover.delegate = self;
    }
}



- (void)showPopup:(NSView *)positioningView {
    [self _makePopoverIfNeeded];
    //[self _selectColor:color];
    [popover showRelativeToRect:[positioningView bounds] ofView:positioningView preferredEdge:NSMinYEdge];
    /*if (selectedSession != nil) {
     [sessionDate setStringValue:[NSString stringWithFormat:@"%@", selectedSession.sessionDate]];
     [distance setStringValue:[NSString stringWithFormat:@"%0.2f", [selectedSession.distance doubleValue]]];
     [duration setStringValue:[NSString stringWithFormat:@"%@", selectedSession.duration]];
     }*/
}

- (IBAction)action:(NSButton *)sender {
    
    if ([sender state] == NSOnState) {
        app.status.title = _start.nameOfMonth;
        app.status.length = 80;
    } else {
        app.status.title = nil;
        
    }
}



@end
