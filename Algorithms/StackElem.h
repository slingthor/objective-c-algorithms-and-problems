//
//  StackElem.h
//  Algorithms
//
//  Created by Marianne Glad on 7/29/17.
//  Copyright © 2017 slingthor. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StackElem : NSObject
@property(nonatomic) StackElem *next;
@property(nonatomic) int value;

+(instancetype) withNext : (StackElem*) aNext value : (int) aValue;
-(instancetype) initWithNext : (StackElem*) aNext value : (int) aValue;

@end
