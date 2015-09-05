//
//  AppDelegate.m
//  pop
//
//  Created by Armin on 6/5/15.
//  Copyright (c) 2015 Armin. All rights reserved.
//

#import "AppDelegate.h"
#import "Date.h"
@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@property (strong, nonatomic) NSEvent *popoverTransiencyMonitor;
@property NSDictionary *imageSets;
//@property NSMutableArray *imageArray;
//@property NSMutableArray *imageFromDic;
@property NSImage *statusIcon;
@property NSString *iconString;
@property Date *start;
@property (weak) IBOutlet NSTextField *dayLabel;
@end

@implementation AppDelegate

-(void)awakeFromNib {
    
    _start = [[Date alloc] init];
    _status = [[NSStatusBar systemStatusBar] statusItemWithLength:NSVariableStatusItemLength];
//    NSImage *images = [NSImage imageNamed:@"statusbar-icon1"];
//    [_status setHighlightMode:YES];
//    [images setTemplate:YES];
//    [_status setImage:images];
    
   

    
    
    
    NSStatusBarButton *button = _status.button;
    button.target = self;
    button.action = @selector(click:);
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(handleSysTimeChanged:)
                                                 name:NSSystemClockDidChangeNotification
                                               object:nil];
    
    switch ([_start getToday]) {
        case 1:
            _iconString = [NSString stringWithFormat:@"%i", [_start getToday]];
            [_imageSets objectForKey:_iconString];
            _statusIcon = [NSImage imageNamed:[_imageSets objectForKey:_iconString]];
            [_statusIcon setTemplate:YES];
            [_status setImage:_statusIcon];
            break;
        case 2:
            _iconString = [NSString stringWithFormat:@"%i", [_start getToday]];
            [_imageSets objectForKey:_iconString];
            _statusIcon = [NSImage imageNamed:[_imageSets objectForKey:_iconString]];
            [_statusIcon setTemplate:YES];
            [_status setImage:_statusIcon];
            break;
        case 3:
            _iconString = [NSString stringWithFormat:@"%i", [_start getToday]];
            [_imageSets objectForKey:_iconString];
            _statusIcon = [NSImage imageNamed:[_imageSets objectForKey:_iconString]];
            [_statusIcon setTemplate:YES];
            [_status setImage:_statusIcon];
            break;
        case 4:
            _iconString = [NSString stringWithFormat:@"%i", [_start getToday]];
            [_imageSets objectForKey:_iconString];
            _statusIcon = [NSImage imageNamed:[_imageSets objectForKey:_iconString]];
            [_statusIcon setTemplate:YES];
            [_status setImage:_statusIcon];
            break;
            
        case 5:
            _iconString = [NSString stringWithFormat:@"%i", [_start getToday]];
            [_imageSets objectForKey:_iconString];
            _statusIcon = [NSImage imageNamed:[_imageSets objectForKey:_iconString]];
            [_statusIcon setTemplate:YES];
            [_status setImage:_statusIcon];
            break;
            
        case 6:
            _iconString = [NSString stringWithFormat:@"%i", [_start getToday]];
            [_imageSets objectForKey:_iconString];
            _statusIcon = [NSImage imageNamed:[_imageSets objectForKey:_iconString]];
            [_statusIcon setTemplate:YES];
            [_status setImage:_statusIcon];
            break;
            
        case 7:
            _iconString = [NSString stringWithFormat:@"%i", [_start getToday]];
            [_imageSets objectForKey:_iconString];
            _statusIcon = [NSImage imageNamed:[_imageSets objectForKey:_iconString]];
            [_statusIcon setTemplate:YES];
            [_status setImage:_statusIcon];
            break;
            
        case 8:
            _iconString = [NSString stringWithFormat:@"%i", [_start getToday]];
            [_imageSets objectForKey:_iconString];
            _statusIcon = [NSImage imageNamed:[_imageSets objectForKey:_iconString]];
            [_statusIcon setTemplate:YES];
            [_status setImage:_statusIcon];
            break;
            
        case 9:
            _iconString = [NSString stringWithFormat:@"%i", [_start getToday]];
            [_imageSets objectForKey:_iconString];
            _statusIcon = [NSImage imageNamed:[_imageSets objectForKey:_iconString]];
            [_statusIcon setTemplate:YES];
            [_status setImage:_statusIcon];
            break;
            
        case 10:
            _iconString = [NSString stringWithFormat:@"%i", [_start getToday]];
            [_imageSets objectForKey:_iconString];
            _statusIcon = [NSImage imageNamed:[_imageSets objectForKey:_iconString]];
            [_statusIcon setTemplate:YES];
            [_status setImage:_statusIcon];
            break;
            
        case 11:
            _iconString = [NSString stringWithFormat:@"%i", [_start getToday]];
            [_imageSets objectForKey:_iconString];
            _statusIcon = [NSImage imageNamed:[_imageSets objectForKey:_iconString]];
            [_statusIcon setTemplate:YES];
            [_status setImage:_statusIcon];
            break;
            
        case 12:
            _iconString = [NSString stringWithFormat:@"%i", [_start getToday]];
            [_imageSets objectForKey:_iconString];
            _statusIcon = [NSImage imageNamed:[_imageSets objectForKey:_iconString]];
            [_statusIcon setTemplate:YES];
            [_status setImage:_statusIcon];
            break;
            
        case 13:
            _iconString = [NSString stringWithFormat:@"%i", [_start getToday]];
            [_imageSets objectForKey:_iconString];
            _statusIcon = [NSImage imageNamed:[_imageSets objectForKey:_iconString]];
            [_statusIcon setTemplate:YES];
            [_status setImage:_statusIcon];
            break;
            
        case 14:
            _iconString = [NSString stringWithFormat:@"%i", [_start getToday]];
            [_imageSets objectForKey:_iconString];
            _statusIcon = [NSImage imageNamed:[_imageSets objectForKey:_iconString]];
            [_statusIcon setTemplate:YES];
            [_status setImage:_statusIcon];
            break;
            
        case 15:
            _iconString = [NSString stringWithFormat:@"%i", [_start getToday]];
            [_imageSets objectForKey:_iconString];
            _statusIcon = [NSImage imageNamed:[_imageSets objectForKey:_iconString]];
            [_statusIcon setTemplate:YES];
            [_status setImage:_statusIcon];
            break;
            
        case 16:
            _iconString = [NSString stringWithFormat:@"%i", [_start getToday]];
            [_imageSets objectForKey:_iconString];
            _statusIcon = [NSImage imageNamed:[_imageSets objectForKey:_iconString]];
            [_statusIcon setTemplate:YES];
            [_status setImage:_statusIcon];
            break;
            
        case 17:
            _iconString = [NSString stringWithFormat:@"%i", [_start getToday]];
            [_imageSets objectForKey:_iconString];
            _statusIcon = [NSImage imageNamed:[_imageSets objectForKey:_iconString]];
            [_statusIcon setTemplate:YES];
            [_status setImage:_statusIcon];
            break;
            
        case 18:
            _iconString = [NSString stringWithFormat:@"%i", [_start getToday]];
            [_imageSets objectForKey:_iconString];
            _statusIcon = [NSImage imageNamed:[_imageSets objectForKey:_iconString]];
            [_statusIcon setTemplate:YES];
            [_status setImage:_statusIcon];
            break;
            
        case 19:
            _iconString = [NSString stringWithFormat:@"%i", [_start getToday]];
            [_imageSets objectForKey:_iconString];
            _statusIcon = [NSImage imageNamed:[_imageSets objectForKey:_iconString]];
            [_statusIcon setTemplate:YES];
            [_status setImage:_statusIcon];
            
            break;
            
        case 20:
            _iconString = [NSString stringWithFormat:@"%i", [_start getToday]];
            [_imageSets objectForKey:_iconString];
            _statusIcon = [NSImage imageNamed:[_imageSets objectForKey:_iconString]];
            [_statusIcon setTemplate:YES];
            [_status setImage:_statusIcon];
            break;
            
        case 21:
            _iconString = [NSString stringWithFormat:@"%i", [_start getToday]];
            [_imageSets objectForKey:_iconString];
            _statusIcon = [NSImage imageNamed:[_imageSets objectForKey:_iconString]];
            [_statusIcon setTemplate:YES];
            [_status setImage:_statusIcon];
            break;
            
        case 22:
            _iconString = [NSString stringWithFormat:@"%i", [_start getToday]];
            [_imageSets objectForKey:_iconString];
            _statusIcon = [NSImage imageNamed:[_imageSets objectForKey:_iconString]];
            [_statusIcon setTemplate:YES];
            [_status setImage:_statusIcon];
            break;
            
        case 23:
            _iconString = [NSString stringWithFormat:@"%i", [_start getToday]];
            [_imageSets objectForKey:_iconString];
            _statusIcon = [NSImage imageNamed:[_imageSets objectForKey:_iconString]];
            [_statusIcon setTemplate:YES];
            [_status setImage:_statusIcon];
            break;
            
        case 24:
            _iconString = [NSString stringWithFormat:@"%i", [_start getToday]];
            [_imageSets objectForKey:_iconString];
            _statusIcon = [NSImage imageNamed:[_imageSets objectForKey:_iconString]];
            [_statusIcon setTemplate:YES];
            [_status setImage:_statusIcon];
            break;
            
        case 25:
            _iconString = [NSString stringWithFormat:@"%i", [_start getToday]];
            [_imageSets objectForKey:_iconString];
            _statusIcon = [NSImage imageNamed:[_imageSets objectForKey:_iconString]];
            [_statusIcon setTemplate:YES];
            [_status setImage:_statusIcon];
            break;
            
        case 26:
            _iconString = [NSString stringWithFormat:@"%i", [_start getToday]];
            [_imageSets objectForKey:_iconString];
            _statusIcon = [NSImage imageNamed:[_imageSets objectForKey:_iconString]];
            [_statusIcon setTemplate:YES];
            [_status setImage:_statusIcon];
            break;
            
        case 27:
            _iconString = [NSString stringWithFormat:@"%i", [_start getToday]];
            [_imageSets objectForKey:_iconString];
            _statusIcon = [NSImage imageNamed:[_imageSets objectForKey:_iconString]];
            [_statusIcon setTemplate:YES];
            [_status setImage:_statusIcon];
            break;
            
        case 28:
            _iconString = [NSString stringWithFormat:@"%i", [_start getToday]];
            [_imageSets objectForKey:_iconString];
            _statusIcon = [NSImage imageNamed:[_imageSets objectForKey:_iconString]];
            [_statusIcon setTemplate:YES];
            [_status setImage:_statusIcon];
            break;
            
        case 29:
            _iconString = [NSString stringWithFormat:@"%i", [_start getToday]];
            [_imageSets objectForKey:_iconString];
            _statusIcon = [NSImage imageNamed:[_imageSets objectForKey:_iconString]];
            [_statusIcon setTemplate:YES];
            [_status setImage:_statusIcon];
            break;
            
        case 30:
            _iconString = [NSString stringWithFormat:@"%i", [_start getToday]];
            [_imageSets objectForKey:_iconString];
            _statusIcon = [NSImage imageNamed:[_imageSets objectForKey:_iconString]];
            [_statusIcon setTemplate:YES];
            [_status setImage:_statusIcon];
            break;
            
        case 31:
            _iconString = [NSString stringWithFormat:@"%i", [_start getToday]];
            [_imageSets objectForKey:_iconString];
            _statusIcon = [NSImage imageNamed:[_imageSets objectForKey:_iconString]];
            [_statusIcon setTemplate:YES];
            [_status setImage:_statusIcon];
            break;
        default:
            break;
    }

    
    
    
}



- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {

//    Date *new = [[Date alloc] init];
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
//        int dayValue = [_start getToday];
    
    
    
    
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


-(void) handleSysTimeChanged: (NSNotification*) notification
{
    
    
    _imageSets = [[NSDictionary alloc] initWithObjects:@[@"statusbar-icon1", @"statusbar-icon2", @"statusbar-icon3", @"statusbar-icon4", @"statusbar-icon5",
                                                      @"statusbar-icon6", @"statusbar-icon7", @"statusbar-icon8", @"statusbar-icon9", @"statusbar-icon10", @"statusbar-icon11",
                                                      @"statusbar-icon12", @"statusbar-icon13", @"statusbar-icon14", @"statusbar-icon15", @"statusbar-icon16", @"statusbar-icon17",
                                                      @"statusbar-icon18", @"statusbar-icon19", @"statusbar-icon20", @"statusbar-icon21", @"statusbar-icon22", @"statusbar-icon23",
                                                      @"statusbar-icon24", @"statusbar-icon25", @"statusbar-icon26", @"statusbar-icon27", @"statusbar-icon28", @"statusbar-icon29",
                                                      @"statusbar-icon30", @"statusbar-icon31"] forKeys:@[@"1", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"11", @"12", @"13", @"14", @"15", @"16", @"17",
                                                                                                         @"18", @"19", @"20", @"21", @"22", @"23",
                                                                                                         @"24", @"25", @"26", @"27", @"28", @"29",
                                                                                                         @"30", @"31"]];
   
    if (NSSystemClockDidChangeNotification) {
        NSLog(@"date changes by user %i", [_start getToday]);
        [_dayInMonth setIntValue:_start.getToday];
        [_todayName setStringValue:_start.nameOfDay];
        [_monthName setStringValue:_start.nameOfMonth];
        [_yearNumber setStringValue:_start.yearDate];
        _iconString = [NSString stringWithFormat:@"%i", [_start getToday]];
        NSLog(@"string value for dictionary %@", _iconString);
        [_imageSets objectForKey:_iconString];
        NSLog(@"icon %@", [_imageSets objectForKey:_iconString]);
        _statusIcon = [NSImage imageNamed:[_imageSets objectForKey:_iconString]];
        [_statusIcon setTemplate:YES];
        [_status setImage:_statusIcon];
        
    }
    
    
}


@end
