//
//  SKCropNodeUnderTest.m
//  SKCropNodeBug
//
//  Created by Jennifer Dobson on 11/13/14.
//  Copyright (c) 2014 Jennifer Dobson. All rights reserved.
//

#import "SKCropNodeUnderTest.h"

@implementation SKCropNodeUnderTest


-(id)init{
    
    self = [super init];
    
    if (self)
    {
        self.maskNode = [[SKSpriteNode alloc] initWithColor:[SKColor blackColor] size:(CGSize){256,256}];
        SKSpriteNode *contentNode = [[SKSpriteNode alloc] initWithColor:[SKColor blueColor] size:(CGSize){512,512}];
        [self addChild: contentNode];
        
        self.userInteractionEnabled = YES;
    }
    
    return self;
}


-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    
    UITouch *touch = [touches anyObject];
    CGPoint position = [touch locationInNode:self.scene];
    NSLog(@"touch at scene position: %f,%f",position.x,position.y);
    
    [self.scene performSelector:@selector(flashCropNodeTouched) withObject:nil];
    
}
@end
