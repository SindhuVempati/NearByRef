//
//  Place.h
//  NearBy
//
//  Created by sv1013 on 29/01/15.
//  Copyright (c) 2015 Commscope. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Place : NSObject
@property(nonatomic,strong) NSString *Name;
@property (nonatomic, strong) NSString *PlaceImage;
@property (nonatomic,strong)NSString *placeLat;
@property (nonatomic, strong)NSString *placeLong;
@property (nonatomic, strong) NSArray *arrImages;
@property (nonatomic, strong)NSString *detail;
@end
