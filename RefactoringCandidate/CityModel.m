//
//  CityModel.m
//  RefactoringCandidate
//
//  Created by Olga Lutsyk on 31.05.2020.
//  Copyright © 2020 Anton Tykhonov. All rights reserved.
//

#import "CityModel.h"
#import "RefactoringCandidate-Swift.h"

@implementation CityModel

-(NSString *)getCityDescription {
    if (self.mainStreet != nil) {
        return [NSString stringWithFormat:@"This is %@ and it's main street is %@", self.name, self.mainStreet.name];
    }
    return nil;
}

@end
