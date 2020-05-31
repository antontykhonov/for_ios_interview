//
//  FirstViewController.m
//  RefactoringCandidate
//
//  Created by Anton Tykhonov on 05.05.2020.
//  Copyright © 2020 Anton Tykhonov. All rights reserved.
//

#import "FirstViewController.h"
#import "RefactoringCandidate-Swift.h"
#import "DataManager.h"

@interface FirstViewController () <CityCellProtocol>
@property (nonatomic, strong) NSArray <CityModel *>* cities;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.cities = [[DataManager shared] cities];
    [self.tableview reloadData];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return  1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _cities.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    CityCell *cell = (CityCell *)[tableView dequeueReusableCellWithIdentifier:@"CityCell" forIndexPath:indexPath];
    [cell setupWith:self.cities[indexPath.row]];
    cell.delegate = self;

    return cell;
}

- (void)buttonClicked {
 
}

@end
