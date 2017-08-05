//
//  BinaryTreeNode.h
//  Algorithms
//
//  Created by Marianne Glad on 7/29/17.
//  Copyright © 2017 slingthor. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BinaryTreeNode : NSObject

@property(nonatomic) int value;
@property(nonatomic, strong) BinaryTreeNode *left;
@property(nonatomic, strong) BinaryTreeNode *right;

+(instancetype) withValue : (int) value;

@end
