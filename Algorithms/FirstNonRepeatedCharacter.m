//
//  FirstNonRepeatedCharacter.m
//  Algorithms
//
//  Created by Marianne Glad on 7/30/17.
//  Copyright © 2017 slingthor. All rights reserved.
//

#import "FirstNonRepeatedCharacter.h"

@implementation FirstNonRepeatedCharacter



- (BoxedUniChar*) findFirstNonRepeatedCharacter : (NSString*) string
{
    NSMutableDictionary *charCounter = [NSMutableDictionary dictionary];
    
    NSUInteger len = string.length;
    
    unichar buffer[len+1];
    
    
    [string getCharacters:buffer range:NSMakeRange(0, len)];
    
    for(int i = 0; i < len; i++)
    {
        BoxedUniChar* currChar = [BoxedUniChar withUniChar:buffer[i]];
        if(![charCounter objectForKey:currChar])
        {
            charCounter[currChar] = @1;
        }
        else
        {
            charCounter[currChar] = @2;
        }
    }
    
    BoxedUniChar *lowestChar;
    
    for(int i = 0; i < len; i++)
    {
        BoxedUniChar* currChar = [BoxedUniChar withUniChar:buffer[i]];
        if([charCounter[currChar] intValue] < 2)
        {
            lowestChar = currChar;
        }
    }
    
    return lowestChar;
}

@end
