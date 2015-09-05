//
//  Date.h
//  pop
//
//  Created by Armin on 6/5/15.
//  Copyright (c) 2015 Armin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Date : NSObject

-(NSString *)yearDate;
-(NSString *)nameOfMonth;
-(int)getToday;
-(NSString *)nameOfDay;
- (int)getHour;
- (int)getMinute;

@end
