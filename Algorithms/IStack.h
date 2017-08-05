//
//  IStack.h
//  Algorithms
//
//  Created by Marianne Glad on 7/29/17.
//  Copyright © 2017 slingthor. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol IStack <NSObject>

- (void) push:(int) value;
- (int) pop;
- (int) peek;
@property (nonatomic) int count;
@property (nonatomic, readonly) BOOL isEmpty;
@end
