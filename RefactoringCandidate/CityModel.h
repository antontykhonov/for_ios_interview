//
//  CityModel.h
//  RefactoringCandidate
//
//  Created by Olga Lutsyk on 31.05.2020.
//  Copyright © 2020 Anton Tykhonov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CityModel : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *cityDescription;
@property (nonatomic, strong) NSString *urlString;

@end
