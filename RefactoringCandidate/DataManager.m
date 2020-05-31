//
//  DataManager.m
//  RefactoringCandidate
//
//  Created by Olga Lutsyk on 31.05.2020.
//  Copyright © 2020 Anton Tykhonov. All rights reserved.
//

#import "DataManager.h"

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

- (NSArray<CityModel *> *)cities {
    return @[];
}

@end
