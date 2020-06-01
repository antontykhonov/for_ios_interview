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

+(DataManager *)shared;
-(NSArray<CityModel*>*)cities;

@end
