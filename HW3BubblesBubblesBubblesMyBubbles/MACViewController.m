//
//  MACViewController.m
//  HW3BubblesBubblesBubblesMyBubbles
//
//  Created by Macy Aviles on 11/1/13.
//  Copyright (c) 2013 Macy Aviles. All rights reserved.
//

#import "MACViewController.h"

@interface MACViewController ()

@property (nonatomic, strong) UIDynamicAnimator *animator;

@end

@implementation MACViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    UITapGestureRecognizer *tapRecognizer1 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTap1:)];
    tapRecognizer1.numberOfTapsRequired = 1;
    UITapGestureRecognizer *tapRecognizer2 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTap2:)];
    tapRecognizer2.numberOfTapsRequired = 1;
    UITapGestureRecognizer *tapRecognizer3 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTap3:)];
    tapRecognizer3.numberOfTapsRequired = 1;
    UITapGestureRecognizer *tapRecognizer4 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTap4:)];
    tapRecognizer4.numberOfTapsRequired = 1;
    UITapGestureRecognizer *tapRecognizer5 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTap5:)];
    tapRecognizer5.numberOfTapsRequired = 1;
    
    
    _animator = [[UIDynamicAnimator alloc] initWithReferenceView:self.view];
    
    //start gravity
    UIGravityBehavior *gravityBehavior = [[UIGravityBehavior alloc] initWithItems:self.bubbleViews];
    UIGravityBehavior *gravityChildBehavior = [[UIGravityBehavior alloc]
                                               initWithItems:self.childBubbleViews];
    [_animator addBehavior: gravityBehavior];
    [_animator addBehavior: gravityChildBehavior];
    
    //start collision
    UICollisionBehavior *collisionBehavior = [[UICollisionBehavior alloc] init];
    collisionBehavior.translatesReferenceBoundsIntoBoundary = YES;
    [_animator addBehavior: collisionBehavior];

    
    for (UIView *childBubbleView in _childBubbleViews)
    {
        {
            UIView *view = [[UIView alloc] initWithFrame:CGRectMake(10, 10, 10, 10)];
            [childBubbleView addSubview: view];
            
            childBubbleView.layer.cornerRadius = 25.f;
            childBubbleView.clipsToBounds = YES;
            
            [gravityBehavior addItem: view];
            [collisionBehavior addItem: view];

        }
        
    }
 
    for (UIView *bubbleView in self.bubbleViews)
    {
        {
            
            CABasicAnimation* boundsAnim = [CABasicAnimation animationWithKeyPath:@"bounds"];
            boundsAnim.fromValue = [NSValue valueWithCGRect:bubbleView.layer.bounds];
            boundsAnim.toValue = [NSValue valueWithCGRect:CGRectMake(10, 10, 50, 50)];
            boundsAnim.duration = 3.0;
            
            [bubbleView.layer addAnimation:boundsAnim forKey:@"bounds"];
            bubbleView.layer.bounds = CGRectMake(10, 10, 50, 50);
            bubbleView.layer.cornerRadius = 25.f;
            bubbleView.clipsToBounds = YES;
            
            [gravityBehavior addItem: bubbleView];
            [collisionBehavior addItem: bubbleView];
            
            [_bubble1 addGestureRecognizer:tapRecognizer1];
            [_bubble2 addGestureRecognizer:tapRecognizer2];
            [_bubble3 addGestureRecognizer:tapRecognizer3];
            [_bubble4 addGestureRecognizer:tapRecognizer4];
            [_bubble5 addGestureRecognizer:tapRecognizer5];
            
        }
        
    }
    
}

- (void)handleTap1:(UITapGestureRecognizer *)sender
{
    if (sender.state == UIGestureRecognizerStateEnded)
    {
        CABasicAnimation* boundsAnim = [CABasicAnimation animationWithKeyPath:@"bounds"];
        boundsAnim.fromValue = [NSValue valueWithCGRect:_bubble1.layer.bounds];
        boundsAnim.toValue = [NSValue valueWithCGRect:CGRectMake(10, 10, 30, 30)];
        boundsAnim.duration = 0.2;
        [_bubble1.layer addAnimation:boundsAnim forKey:@"bounds"];
        
        _bubble1.layer.bounds = CGRectMake(10, 10, 0, 0);
    }
}

- (void)handleTap2:(UITapGestureRecognizer *)sender
{
    if (sender.state == UIGestureRecognizerStateEnded)
    {
        CABasicAnimation* boundsAnim = [CABasicAnimation animationWithKeyPath:@"bounds"];
        boundsAnim.fromValue = [NSValue valueWithCGRect:_bubble2.layer.bounds];
        boundsAnim.toValue = [NSValue valueWithCGRect:CGRectMake(10, 10, 30, 30)];
        boundsAnim.duration = 0.2;
        [_bubble2.layer addAnimation:boundsAnim forKey:@"bounds"];
        
        _bubble2.layer.bounds = CGRectMake(10, 10, 0, 0);
    }
}

- (void)handleTap3:(UITapGestureRecognizer *)sender
{
    if (sender.state == UIGestureRecognizerStateEnded)
    {
        CABasicAnimation* boundsAnim = [CABasicAnimation animationWithKeyPath:@"bounds"];
        boundsAnim.fromValue = [NSValue valueWithCGRect:_bubble3.layer.bounds];
        boundsAnim.toValue = [NSValue valueWithCGRect:CGRectMake(10, 10, 30, 30)];
        boundsAnim.duration = 0.2;
        [_bubble3.layer addAnimation:boundsAnim forKey:@"bounds"];
        
        _bubble3.layer.bounds = CGRectMake(10, 10, 0, 0);
    }
}

- (void)handleTap4:(UITapGestureRecognizer *)sender
{
    if (sender.state == UIGestureRecognizerStateEnded)
    {
        CABasicAnimation* boundsAnim = [CABasicAnimation animationWithKeyPath:@"bounds"];
        boundsAnim.fromValue = [NSValue valueWithCGRect:_bubble4.layer.bounds];
        boundsAnim.toValue = [NSValue valueWithCGRect:CGRectMake(10, 10, 30, 30)];
        boundsAnim.duration = 0.2;
        [_bubble4.layer addAnimation:boundsAnim forKey:@"bounds"];
        
        _bubble4.layer.bounds = CGRectMake(10, 10, 0, 0);
    }
}

- (void)handleTap5:(UITapGestureRecognizer *)sender
{
    if (sender.state == UIGestureRecognizerStateEnded)
    {
        CABasicAnimation* boundsAnim = [CABasicAnimation animationWithKeyPath:@"bounds"];
        boundsAnim.fromValue = [NSValue valueWithCGRect:_bubble5.layer.bounds];
        boundsAnim.toValue = [NSValue valueWithCGRect:CGRectMake(10, 10, 30, 30)];
        boundsAnim.duration = 0.2;
        [_bubble5.layer addAnimation:boundsAnim forKey:@"bounds"];
        
        _bubble5.layer.bounds = CGRectMake(10, 10, 0, 0);
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
}

@end
