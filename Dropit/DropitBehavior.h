//
//  DropitBehavior.h
//  Dropit
//
//  Created by Dabao on 13-11-15.
//  Copyright (c) 2013年 Dabao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DropitBehavior : UIDynamicBehavior

- (void)addItem:(id <UIDynamicItem>)item;
- (void)removeItem:(id <UIDynamicItem>)item;

@end
