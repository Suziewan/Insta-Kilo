//
//  Subjects.m
//  Insta-Kilo
//
//  Created by Angie Linton on 2017-01-25.
//  Copyright © 2017 Angie Linton. All rights reserved.
//

#import "Subjects.h"
#import "PhotoObject.h"

@implementation Subjects

-(instancetype)initWithName:(NSString *)name{
    self = [super init];
    if (self) {
        _name = name;
        [self createPhotos];
    }
    return self;
}
-(void)createPhotos{
    if ([_name isEqualToString:@"london"]) {
        [self createPhotosWithName:@"london"];
    }
    if ([_name isEqualToString:@"dogs"]) {
        [self createPhotosWithName:@"dogs"];
    }
    if ([_name isEqualToString:@"birthday"]) {
        [self createPhotosWithName:@"birthday"];
    }
}
-(void)createPhotosWithName:(NSString*)name{
    NSMutableArray <PhotoObject*> *temp = [NSMutableArray array];
    for (NSInteger i = 1; i<7; ++i) {
        NSString *imgName = [NSString stringWithFormat:@"%@%ld%ld.JPG", name, (long)0, (long)i];
        [temp addObject:[[PhotoObject alloc]initWithName:imgName]];
    }
    _photoObjectArray = [temp copy];
}

@end
