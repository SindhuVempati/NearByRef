//
//  LargeImageViewController.m
//  NearBy
//
//  Created by sv1013 on 27/01/15.
//  Copyright (c) 2015 Commscope. All rights reserved.
//

#import "LargeImageViewController.h"
#import "Place.h"
#import "SubGalleryViewController.h"
#import "LocationViewController.h"

@interface LargeImageViewController ()


@end

@implementation LargeImageViewController
{
   
    NSArray *placesArray;
}
@synthesize nameTxt,placeObject;


- (void)viewDidLoad
{
   
    [self initializations];

    [super viewDidLoad];
}


- (IBAction)toMap:(UIButton *)sender
{
    LocationViewController *toMapView = [[LocationViewController alloc]init];
    toMapView.locationPlace = placeObject;
    [self.navigationController pushViewController:toMapView animated:YES];
}

-(void)initializations
{
    nameTxt = placeObject.Name;
    self.locImageView.image = [UIImage imageNamed:placeObject.PlaceImage];
    self.navigationItem.title =placeObject.Name;
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:placeObject.Name style:UIBarButtonItemStylePlain target:nil action:nil];
   
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}


- (IBAction)actnImageSet:(UIButton *)sender
{

    SubGalleryViewController  *toImagGallery = [[SubGalleryViewController alloc]init];
    toImagGallery.objPalce = placeObject;
    [self.navigationController pushViewController:toImagGallery animated:YES];

}

@end
