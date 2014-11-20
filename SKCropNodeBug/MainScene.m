//
//  MainScene.m
//  SKCropNodeBug
//
//  Created by Jennifer Dobson on 11/13/14.
//  Copyright (c) 2014 Jennifer Dobson. All rights reserved.
//

#import "MainScene.h"
#import "SKCropNodeUnderTest.h"

@interface MainScene()

@property (nonatomic, strong) SKLabelNode* labelNode;

@end
@implementation MainScene


-(void)didMoveToView:(SKView*)view
{
    [super didMoveToView:view];
    
    SKCropNodeUnderTest* cropNode = [[SKCropNodeUnderTest alloc] init];
    cropNode.position = (CGPoint){view.frame.size.width/2,view.frame.size.height/2};
    
    [self addChild:cropNode];
    
    
    _labelNode = [[SKLabelNode alloc] initWithFontNamed:@"Helvetica"];
    _labelNode.text = @"Blue Square Was Touched";
    _labelNode.position = (CGPoint){view.frame.size.width/2,20};
    _labelNode.fontColor = [UIColor whiteColor];
    _labelNode.hidden = YES;
    
    [self addChild:_labelNode];
}

-(void)flashCropNodeTouched
{
    SKAction *actionSequence = [SKAction sequence:@[[SKAction unhide],[SKAction waitForDuration:.1],[SKAction hide]]];
    
    [_labelNode runAction:actionSequence];
}
@end
