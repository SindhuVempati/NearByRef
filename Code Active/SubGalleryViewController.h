//
//  SubGalleryViewController.h
//  NearBy
//
//  Created by sv1013 on 10/02/15.
//  Copyright (c) 2015 Commscope. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Place.h"
@class Place;

@interface SubGalleryViewController : UIViewController
{
    UIScrollView *horzScroll;
}
@property (strong, nonatomic) IBOutlet UIScrollView *horzScroll;
-(void)handleSingleTapGesture:(UITapGestureRecognizer *)tapGestureRecognizer;
@property (strong,nonatomic)Place *objPalce;
@end