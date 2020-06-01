//
//  DataManager.h
//  RefactoringCandidate
//
//  Created by Olga Lutsyk on 31.05.2020.
//  Copyright © 2020 Anton Tykhonov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CityModel.h"

@interface DataManager : NSObject

@property(nonatomic, assign)UInt32 refreshesCount;

+(DataManager *)shared;
-(void)fetchCities:(void(^)(NSArray<CityModel*>*))fetchHandler;

@end
