//
//  SubjectManager.m
//  Insta-Kilo
//
//  Created by Angie Linton on 2017-01-25.
//  Copyright © 2017 Angie Linton. All rights reserved.
//

#import "SubjectManager.h"
#import "Subjects.h"
#import "PhotoObject.h"


@implementation SubjectManager

-(instancetype)init{
    self = [super init];
    if (self) {
        NSMutableArray *temp = [NSMutableArray new];
        [temp addObject:[[Subjects alloc]initWithName:@"london"]];
        [temp addObject:[[Subjects alloc]initWithName:@"dogs"]];
        [temp addObject:[[Subjects alloc]initWithName:@"birthday"]];
        _subjectArray = [temp copy];
    }
    return self;
    
}
- (NSInteger)numberOfSections {
    return self.subjectArray.count;
}

- (NSInteger)numberOfItemsInSection:(NSInteger)section {
    Subjects *subjects = self.subjectArray[section];
    return subjects.photoObjectArray.count;
}

-(PhotoObject*)photoObjectAtIndexPath:(NSIndexPath*)indexPath{
    
    NSInteger section = indexPath.section;
    NSInteger item = indexPath.item;
     Subjects *subjects = self.subjectArray[section];
    PhotoObject *photoObject = subjects.photoObjectArray[item];
    return photoObject;
}

- (Subjects *)subjectAtIndexPath:(NSIndexPath *)indexPath {
    return self.subjectArray[indexPath.section];
}




@end
