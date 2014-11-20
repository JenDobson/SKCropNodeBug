//
//  GameViewController.m
//  SKCropNodeBug
//
//  Created by Jennifer Dobson on 11/13/14.
//  Copyright (c) 2014 Jennifer Dobson. All rights reserved.
//

#import "GameViewController.h"
#import "MainScene.h"
#import <SpriteKit/SpriteKit.h>

@implementation GameViewController

-(void)loadView
{
    CGRect viewFrame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height);
    SKView* view = [[SKView alloc] initWithFrame:viewFrame];
    self.view = view;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    SKView* skView = (SKView*)self.view;
    skView.showsFPS = YES;
    skView.showsNodeCount = YES;
    
    CGSize contentSize = skView.bounds.size;
    
    NSLog(@"skView is a %@",[skView class]);
    NSLog(@"skView is a skview?%i",[skView isKindOfClass:[SKView class]]);
    
    MainScene* scene = [[MainScene alloc] initWithSize:contentSize];
    
    NSLog(@"scene is a %@",[scene class]);
    [(SKView*)self.view presentScene:scene];
    
}


- (BOOL)shouldAutorotate
{
    return YES;
}

- (NSUInteger)supportedInterfaceOrientations
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return UIInterfaceOrientationMaskAllButUpsideDown;
    } else {
        return UIInterfaceOrientationMaskAll;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

@end
