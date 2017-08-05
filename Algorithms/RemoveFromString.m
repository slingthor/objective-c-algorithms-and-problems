//
//  RemoveFromString.m
//  Algorithms
//
//  Created by Marianne Glad on 7/30/17.
//  Copyright © 2017 slingthor. All rights reserved.
//

#import "RemoveFromString.h"
#import "BoxedUniChar.h"

@implementation RemoveFromString

- (NSString*) removeFromString : (NSString*) string withToRemove : (NSString*) stringToRemove
{
    NSUInteger length = [string length];
    unichar buffer[length+1];
    [string getCharacters:buffer range:NSMakeRange(0, length)];
    NSUInteger removeLength = [stringToRemove length];
    unichar removeBuffer[removeLength+1];
    [stringToRemove getCharacters:removeBuffer range:NSMakeRange(0, removeLength)];
    NSMutableSet* setToRemove = [[NSMutableSet alloc] init];
    
    for(int i = 0; i < removeLength;i++)
    {
        BoxedUniChar* boxedChar = [BoxedUniChar withUniChar:removeBuffer[i]];
        [setToRemove addObject:boxedChar];
    }
    
    NSMutableString* returnString = [[NSMutableString alloc] init];
    
    for(int i = 0; i < length; i++)
    {
        BoxedUniChar* currChar = [BoxedUniChar withUniChar:buffer[i]];
        if(![setToRemove containsObject:currChar])
        {
            [returnString appendString:[NSString stringWithFormat:@"%C", currChar.value]];
        }
    }
    
    return returnString;
}
@end
