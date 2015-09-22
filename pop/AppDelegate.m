//
//  AppDelegate.m
//  pop
//
//  Created by Armin on 6/5/15.
//  Copyright (c) 2015 Armin. All rights reserved.
//

#import "AppDelegate.h"
#import "Date.h"
#import "OptionPopover.h"

@interface AppDelegate ()

//@property (weak) IBOutlet NSWindow *window;
@property (strong, nonatomic) NSEvent *popoverTransiencyMonitor;
@property NSDictionary *imageSets;

@property NSImage *statusIcon;
@property NSString *iconString;
@property Date *start;
@property (weak) IBOutlet NSTextField *dayLabel;
@end

@implementation AppDelegate


-(void)awakeFromNib {
    
    _start = [[Date alloc] init];
    _status = [[NSStatusBar systemStatusBar] statusItemWithLength:NSVariableStatusItemLength];
    NSStatusBarButton *button = _status.button;
    button.target = self;
    button.action = @selector(click:);
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(handleSysTimeChanged:)
                                                 name:NSSystemClockDidChangeNotification
                                               object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(handleSysTimeChanged:)
                                                 name:NSCalendarDayChangedNotification
                                               object:nil];
    
//    _status.length = 85;
//    _status.title = _start.nameOfMonth;
    int today = [_start getToday];
    _iconString = [NSString stringWithFormat:@"%i",today];
    _statusIcon = [self getImageFromNumber:today];
    [_statusIcon setTemplate:YES];
    [_status setImage:_statusIcon];
    
}



- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    _start = [[Date alloc] init];
    [_dayInMonth setFont:[NSFont fontWithName:@"BSinaBold" size:80.0f]];
    [_todayName setFont:[NSFont fontWithName:@"BSinaBold" size:30.0f]];
    [_monthName setFont:[NSFont fontWithName:@"BSinaBold" size:28.0f]];
    [_yearNumber setFont:[NSFont fontWithName:@"BSinaBold" size:21.0f]];
    
    [_yearNumber setStringValue:_start.yearDate];
    [_monthName setStringValue:_start.nameOfMonth];
    [_dayInMonth setIntValue:_start.getToday];
    [_todayName setStringValue:_start.nameOfDay];
    NSLog(@"hour is %i and %i minute", _start.getHour, _start.getMinute);
    
    
    NSLog(@"app runs OK %i", [_start getToday]);
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

-(void)click:(id)sender {
    
    [_popOver showRelativeToRect:[_status.button bounds] ofView:[_status button] preferredEdge:NSMinYEdge];
    

    
    //This method dismiss the popover window when clicked anywhere using NSEvent
    if (!self.popoverTransiencyMonitor) {
        self.popoverTransiencyMonitor = [NSEvent addGlobalMonitorForEventsMatchingMask:(NSLeftMouseDownMask | NSRightMouseDownMask | NSKeyUpMask | NSKeyDownMask) handler:^(NSEvent* event) {
            [NSEvent removeMonitor:self.popoverTransiencyMonitor];
            self.popoverTransiencyMonitor = nil;
            [self.popOver close];
        }];
    }
    
    
}

- (NSImage *)getImageFromNumber:(int)date{
    NSString *string = [NSString stringWithFormat:@"statusbar-icon%d",date];
    NSImage *image = [NSImage imageNamed:string];
    return image;
}

-(void) handleSysTimeChanged: (NSNotification*) notification
{
   
    if (NSSystemClockDidChangeNotification) {
        NSLog(@"date changes by user %i", [_start getToday]);
        [_dayInMonth setIntValue:_start.getToday];
        [_todayName setStringValue:_start.nameOfDay];
        [_monthName setStringValue:_start.nameOfMonth];
        [_yearNumber setStringValue:_start.yearDate];
        _iconString = [NSString stringWithFormat:@"%i", [_start getToday]];
        NSLog(@"string value for dictionary %@", _iconString);
        int today = [_start getToday];
        _iconString = [NSString stringWithFormat:@"%i",today];
        _statusIcon = [self getImageFromNumber:today];
        [_statusIcon setTemplate:YES];
        [_status setImage:_statusIcon];
    }
    

}

- (IBAction)exitButton:(NSButton *)sender {
    
    [[NSApplication sharedApplication] terminate:self];
}

//- (IBAction)changeView:(NSButton *)sender {
//    NSLog (@"Custom button pressed.");
//    NSButton *button = (NSButton *) sender;
//    
//    optionPopover = [[OptionPopover alloc] initWithNibName:@"OptionPopover" bundle:Nil];
//    //NSView *buttonView = [optionsButton view];
//    //NSRect buttonFrame = [optionsButton view]->_frame;
//    [optionPopover showPopup:button];
//    
//    
//
//}




@end
