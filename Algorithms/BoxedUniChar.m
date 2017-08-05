//
//  UniChar.m
//  Algorithms
//
//  Created by Marianne Glad on 7/30/17.
//  Copyright © 2017 slingthor. All rights reserved.
//

#import "BoxedUniChar.h"

@implementation BoxedUniChar

- (id)copyWithZone:(NSZone *)zone
{
    id copy = [BoxedUniChar withUniChar:self.value];
    return copy;
}

+ (BoxedUniChar*) withUniChar : (unichar) aChar
{
    return [[BoxedUniChar alloc] initWithUniChar : aChar];
}

- (instancetype) initWithUniChar : (unichar) aChar
{
    if(self = [super init])
    {
        self.value = aChar;
    }
    return self;
}

- (BOOL)isEqual:(id)object
{
    if ([object isKindOfClass:[BoxedUniChar class]]) {
        BoxedUniChar * other = object;
        return self.value == other.value;
    }
    else if (![object isKindOfClass:self.class]) {
        return NO;
    }
    return NO;
}

- (NSUInteger) hash
{
    return self.value;
}

@end
