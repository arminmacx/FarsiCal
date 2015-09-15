//
//  PrefView.m
//  pop
//
//  Created by Armin Lavaee on 9/15/15.
//  Copyright © 2015 Armin. All rights reserved.
//

#import "PrefView.h"


@interface PrefView ()

@end

@implementation PrefView

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
}

- (IBAction)backView:(NSButton *)sender {
    [self.view removeFromSuperview];
    NSViewController *controller = [[NSViewController alloc] initWithNibName:@"MainView" bundle:nil];
    NSView *nview = [controller view];
   
    

}


@end
