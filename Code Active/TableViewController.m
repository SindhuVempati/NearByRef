//
//  TableViewController.m
//  NearBy
//
//  Created by sv1013 on 27/01/15.
//  Copyright (c) 2015 Commscope. All rights reserved.
//

#import "TableViewController.h"
#import "ArrayClass.h"
#import "LargeImageViewController.h"
#import "Place.h"
#import "GalleryScrollViewController.h"

@interface TableViewController ()<UISearchBarDelegate>

{
    NSArray *locArray;
    NSArray *imgArray;
    ArrayClass *objData;
    LargeImageViewController *objLarge;
    NSMutableArray *bufferArray;
    
}

@property(strong,nonatomic) NSMutableArray *AllPlaces;
@end

@implementation TableViewController
@synthesize navgTitle;
@synthesize AllPlaces;
- (void)viewDidLoad
{
    
    [self initializations];
    self.view.backgroundColor = [[UIColor alloc]initWithPatternImage:[UIImage imageNamed:@"hyd.jpg"]];
    self.navigationItem.title = @"List of Places";
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil];
    
    UIImage* image3 = [UIImage imageNamed:@"pink.PNG"];
    CGRect frameimg = CGRectMake(0, 0, image3.size.width, image3.size.height);
    UIButton *galleryButton = [[UIButton alloc] initWithFrame:frameimg];
    [galleryButton setBackgroundImage:image3 forState:UIControlStateNormal];
    [galleryButton addTarget:self action:@selector(GalleryView)
         forControlEvents:UIControlEventTouchUpInside];
    [galleryButton setShowsTouchWhenHighlighted:YES];
    
    UIBarButtonItem *toGallery =[[UIBarButtonItem alloc] initWithCustomView:galleryButton];
    self.navigationItem.rightBarButtonItem=toGallery;
    [super viewDidLoad];
    
}


-(void)initializations
{
    objData = [[ArrayClass alloc]init];
    locArray = [objData locationNames];
    imgArray = [objData mainListImages];
   
    NSArray *arrAllImages = [objData Imageset];
    NSArray *loclat = [objData locLatitudes];
    NSArray *loclong = [objData locLongitudes];
    
    AllPlaces = [[NSMutableArray alloc]init];
    for(int i = 0;i<locArray.count;i++)
    {
        Place *place = [[Place alloc]init];
        place.Name =locArray[i];
        place.PlaceImage =imgArray[i];
        place.arrImages = arrAllImages[i];
        place.placeLat = loclat[i];
        place.placeLong = loclong[i];
        [AllPlaces addObject:place];
        place = nil;
    }
    
    bufferArray=  [AllPlaces mutableCopy];
    
    UISearchBar *temp = [[UISearchBar alloc]initWithFrame:CGRectMake(0, 0, 320, 45)];
    temp.barStyle=UIBarStyleDefault;
    temp.showsCancelButton=NO;
    temp.autocorrectionType=UITextAutocorrectionTypeNo;
    temp.autocapitalizationType=UITextAutocapitalizationTypeNone;
    temp.delegate=self;
    self.dataTableView.tableHeaderView=temp;
    [temp resignFirstResponder];
   
}

-(IBAction)GalleryView
{
    
    GalleryScrollViewController *objGallery = [[GalleryScrollViewController alloc]init];
    [self.navigationController pushViewController:objGallery animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
        return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
        return [AllPlaces count];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *reusable = @"reusable";
    
    Place *place = AllPlaces[indexPath.row];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reusable ];
    
    if(cell == nil)
    {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reusable];
    }
        UIImageView *img = [[UIImageView alloc]initWithFrame:CGRectMake(5, 5, 70, 75-5)];
        [img setImage:[UIImage imageNamed:place.PlaceImage]];
        [cell.contentView addSubview:img];
        cell.textLabel.text =  place.Name;
        cell.textLabel.textAlignment = NSTextAlignmentCenter;
        cell.backgroundColor = [UIColor clearColor];
        cell.textLabel.textColor = [UIColor whiteColor];
        return cell;
}



- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    Place *place = AllPlaces[indexPath.row];
    LargeImageViewController *vc = [[LargeImageViewController alloc]init];
    vc.placeObject = place;
    [self.navigationController pushViewController:vc animated:YES];
    objLarge = nil;
}


- (void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText

{
    NSMutableArray *locationArray = [[NSMutableArray alloc]init];

    for(Place *objPLace in AllPlaces)
        {
        
        NSRange rang = [objPLace.Name rangeOfString:searchText options:NSCaseInsensitiveSearch];
        if(rang.length)
        {
            [locationArray addObject:objPLace];
            
        }
    }
    if(locationArray.count>0){
        AllPlaces =  locationArray;
        [self.dataTableView reloadData];
    }
    else{
        AllPlaces = bufferArray;
        [self.dataTableView reloadData];
    }
}


@end
