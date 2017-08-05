//
//  BinaryTree.m
//  Algorithms
//
//  Created by Marianne Glad on 7/29/17.
//  Copyright © 2017 slingthor. All rights reserved.
//

#import "BinaryTree.h"
#import "BinaryTreeNode.h"

@implementation BinaryTree

BinaryTreeNode *root;

- (void) add : (int) value
{
    if(root == nil)
    {
        root = [BinaryTreeNode withValue:value];
    }
    else
    {
        [self addRecursive : root value : value];
    }
}

- (void) addRecursive : (BinaryTreeNode*) iterator value : (int) value
{
    if(value < iterator.value)
    {
        if(iterator.left == nil)
        {
            iterator.left = [BinaryTreeNode withValue:value];
        }
        else
        {
            [self addRecursive:iterator.left value:value];
        }
    }
    else if(value > iterator.value)
    {
        if(iterator.right == nil)
        {
            iterator.right = [BinaryTreeNode withValue:value];
        }
        else
        {
            [self addRecursive:iterator.right value:value];
        }
    }
}



//:

//===========================================================
// - (BOOL) contains : (int) value
//
//===========================================================
- (BOOL) contains : (int) value
{
    
    return false;
} //:

//===========================================================
// - (NSArray*) getSorted
//
//===========================================================
- (NSArray*) getSorted
{
    
    return nil;
} //getSorted

//===========================================================
// - (NSString*) description
//
//===========================================================
- (NSString*) description
{
    if(root == nil)
    {
        return @"";
    }
    NSMutableString *stringBuilder = [[NSMutableString alloc]init];
    return [self descriptionRecWithIterator:root withStringBuilder:stringBuilder];
} //description

- (NSString*) descriptionRecWithIterator : (BinaryTreeNode*) iterator withStringBuilder : (NSMutableString*) stringBuilder
{
    
    if(iterator.left != nil)
    {
        [self descriptionRecWithIterator:iterator.left withStringBuilder:stringBuilder];
    }
    [stringBuilder appendString:[NSString stringWithFormat:@"%i,",iterator.value]];
    if(iterator.right != nil)
    {
        [self descriptionRecWithIterator:iterator.right withStringBuilder:stringBuilder];
    }
    return stringBuilder;
}

@end
