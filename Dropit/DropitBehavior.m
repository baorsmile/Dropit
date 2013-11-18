//
//  DropitBehavior.m
//  Dropit
//
//  Created by Dabao on 13-11-15.
//  Copyright (c) 2013年 Dabao. All rights reserved.
//

#import "DropitBehavior.h"

@interface DropitBehavior ()

@property (strong, nonatomic) UIGravityBehavior *garvity;
@property (strong, nonatomic) UICollisionBehavior *collider;

@end

@implementation DropitBehavior

- (UIGravityBehavior *)garvity
{
    if (!_garvity) {
        _garvity = [[UIGravityBehavior alloc] init];
        _garvity.magnitude = 0.9;
    }
    return _garvity;
}

- (UICollisionBehavior *)collider
{
    if (!_collider) {
        _collider = [[UICollisionBehavior alloc] init];
        _collider.translatesReferenceBoundsIntoBoundary = YES;
    }
    return _collider;
}

- (void)addItem:(id<UIDynamicItem>)item
{
    [self.garvity addItem:item];
    [self.collider addItem:item];
}

- (void)removeItem:(id<UIDynamicItem>)item
{
    [self.garvity removeItem:item];
    [self.collider removeItem:item];
}

- (instancetype)init
{
    self = [super init];
    [self addChildBehavior:self.garvity];
    [self addChildBehavior:self.collider];
    return self;
}
@end
