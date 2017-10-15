//
//  TableViewController.h
//  NearBy
//
//  Created by sv1013 on 27/01/15.
//  Copyright (c) 2015 Commscope. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewController : UIViewController<UITableViewDataSource,UITableViewDelegate,UISearchDisplayDelegate>

@property (weak, nonatomic) IBOutlet UITableView *dataTableView;

@property (weak, nonatomic) IBOutlet UINavigationBar *navgTitle;

@end
