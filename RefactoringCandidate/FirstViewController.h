//
//  FirstViewController.h
//  RefactoringCandidate
//
//  Created by Anton Tykhonov on 05.05.2020.
//  Copyright © 2020 Anton Tykhonov. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CityModel.h"

@interface FirstViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property(nonatomic, strong) IBOutlet UITableView *tableview;

@end

