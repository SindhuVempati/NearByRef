//
//  SubGalleryViewController.m
//  NearBy
//
//  Created by sv1013 on 10/02/15.
//  Copyright (c) 2015 Commscope. All rights reserved.
//

#import "SubGalleryViewController.h"

@interface SubGalleryViewController ()<UIScrollViewDelegate>
{
    UITapGestureRecognizer *singleTap;
  

}

@end

@implementation SubGalleryViewController
@synthesize horzScroll,objPalce;

- (void)viewDidLoad {
    singleTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleSingleTapGesture:)];
    [self.view addGestureRecognizer:singleTap];
    for (int i=0; i<[objPalce.arrImages  count]; i++)
    {
        CGRect frame;
        frame.origin.x = self.horzScroll.frame.size.width*i;
        frame.origin.y=0;
        frame.size =self.horzScroll.frame.size;
        UIImageView *subview = [[UIImageView alloc]initWithFrame:CGRectMake(320*i+10, 91, 300, 300)];
        subview.image =[UIImage imageNamed:[objPalce.arrImages  objectAtIndex:i]];
        [self.horzScroll addSubview:subview];
        
    }
    
    self.horzScroll.contentSize = CGSizeMake(self.horzScroll.frame.size.width * objPalce.arrImages.count, self.horzScroll.frame.size.height);
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

-(void)scrollViewDidScroll:(UIScrollView *)scrollView           //for disabling vertical scroll
{
    if (scrollView.contentOffset.y > 0  ||  scrollView.contentOffset.y < 0 )
        scrollView.contentOffset = CGPointMake(scrollView.contentOffset.x, 0);
}

-(void)handleSingleTapGesture:(UITapGestureRecognizer *)tapGestureRecognizer
{
    BOOL barsHidden = self.navigationController.navigationBar.hidden;
    if (barsHidden==YES)
    {
        self.view.backgroundColor =[UIColor whiteColor];
        
    }else
    {
        self.view.backgroundColor =[UIColor blackColor];
    }
    [self.navigationController setNavigationBarHidden:!barsHidden animated:YES];
}

@end
