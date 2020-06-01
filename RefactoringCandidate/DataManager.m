//
//  DataManager.m
//  RefactoringCandidate
//
//  Created by Olga Lutsyk on 31.05.2020.
//  Copyright © 2020 Anton Tykhonov. All rights reserved.
//

#import "DataManager.h"
#import "RefactoringCandidate-Swift.h"


@implementation DataManager

-(instancetype)init{
    if(self = [super init]){
        
    }
    return self;
}

+ (DataManager*)shared {
    static DataManager *sharedManager = nil;
    static dispatch_once_t oncePredicate;
    dispatch_once(&oncePredicate, ^{
        sharedManager = [[DataManager alloc]init];
    });
    
    return sharedManager;
}

-(void)fetchCities:(void(^)(NSArray<CityModel*>*))fetchHandler {
    self.refreshesCount++;
    
    const dispatch_queue_t q = dispatch_queue_create("serialQueue", DISPATCH_QUEUE_SERIAL);
    dispatch_async(q, ^{
        NSMutableArray *cities = [NSMutableArray new];
        for (int i = 0; i <= 10; i++) {
            CityModel *city = [[CityModel alloc]init];
            city.name = [NSString stringWithFormat:@"City №%d", i];
            Street *mainStreet = [[Street alloc] initWithName:[NSString stringWithFormat:@"Main Street №%d", i]];
            city.mainStreet = mainStreet;
            [cities addObject:city];
        }
        dispatch_async(dispatch_get_main_queue(), ^{
            fetchHandler(cities);
        });
    });
    
}

@end
