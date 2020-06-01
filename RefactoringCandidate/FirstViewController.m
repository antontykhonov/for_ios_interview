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

static void const *refreshesCountContext;

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[DataManager shared]addObserver:self
                          forKeyPath:@"refreshesCount" options:NSKeyValueObservingOptionInitial|NSKeyValueObservingOptionNew context:&refreshesCountContext];
}

- (void)viewWillAppear:(BOOL)animated {
    [[DataManager shared] fetchCities:^(NSArray<CityModel *> * cities) {
        // Just want to be sure that UI is updating in Main queue.
        dispatch_sync(dispatch_get_main_queue(), ^{
            self.cities = cities;
            [self.tableview reloadData];
        });
    }];
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

#pragma mark - KVO

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change context:(void *)context {
    self.title = [NSString stringWithFormat:@"%u refresh attempts", (unsigned int)[DataManager shared].refreshesCount];
}

@end
