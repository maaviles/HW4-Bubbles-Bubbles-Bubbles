//
//  MACViewController.h
//  HW3BubblesBubblesBubblesMyBubbles
//
//  Created by Macy Aviles on 11/1/13.
//  Copyright (c) 2013 Macy Aviles. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MACViewController : UIViewController

@property (nonatomic, strong) IBOutletCollection(UIView) NSArray *bubbleViews;
@property (nonatomic, strong) IBOutletCollection(UIView) NSArray *childBubbleViews;

@property (strong, nonatomic) IBOutlet UIView *bubble1;
@property (strong, nonatomic) IBOutlet UIView *bubble2;
@property (strong, nonatomic) IBOutlet UIView *bubble3;
@property (strong, nonatomic) IBOutlet UIView *bubble4;
@property (strong, nonatomic) IBOutlet UIView *bubble5;

@end
