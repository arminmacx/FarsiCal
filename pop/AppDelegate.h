//
//  AppDelegate.h
//  pop
//
//  Created by Armin on 6/5/15.
//  Copyright (c) 2015 Armin. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Date.h"
@interface AppDelegate : NSObject <NSApplicationDelegate>

@property NSStatusItem *status;
@property (weak) IBOutlet NSPopover *popOver;
@property (strong) IBOutlet NSTextField *todayName;
@property (strong) IBOutlet NSTextField *dayInMonth;
@property (strong) IBOutlet NSTextField *monthName;
@property (strong) IBOutlet NSTextField *yearNumber;



@end

