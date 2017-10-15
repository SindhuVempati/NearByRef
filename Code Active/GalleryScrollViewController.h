//
//  GalleryScrollViewController.h
//  NearBy
//
//  Created by sv1013 on 02/02/15.
//  Copyright (c) 2015 Commscope. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GalleryScrollViewController : UIViewController
{
    UIScrollView *horzScroll;
}
@property (strong, nonatomic) IBOutlet UIScrollView *horzScroll;
-(void)handleSingleTapGesture:(UITapGestureRecognizer *)tapGestureRecognizer;
@end