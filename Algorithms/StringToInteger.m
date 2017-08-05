//
//  StringToInteger.m
//  Algorithms
//
//  Created by Marianne Glad on 7/30/17.
//  Copyright © 2017 slingthor. All rights reserved.
//

#import "StringToInteger.h"

@implementation StringToInteger

- (int) strToInt : (NSString*) string
{
    NSUInteger length = [string length];
    unichar buffer[length+1];
    [string getCharacters:buffer range:NSMakeRange(0, length)];
    int returnInt = 0;
    int count = 1;
    for(int i = length-1; i > -1; i--)
    {
        int currNum = buffer[i]-48;
        returnInt += currNum*count;
        count*=10;
    }
    return returnInt;
}

- (NSString*) intToStr:(int)num
{
    NSMutableString *returnString = [[NSMutableString alloc]init];
    NSMutableArray *buffer = [[NSMutableArray alloc]init];
    
    while(num != 0)
    {
        NSNumber* currNum = [NSNumber numberWithInt:num%10];
        [buffer addObject:currNum];
        num = num/10;
    }
    
    NSUInteger length = [buffer count];
    
    for(int i = length-1; i > -1;i--)
    {
        [returnString appendString:[NSString stringWithFormat:@"%@", buffer[i]]];
    }
    
    return returnString;
}

@end
