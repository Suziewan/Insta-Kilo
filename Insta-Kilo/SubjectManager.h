 //
//  SubjectManager.h
//  Insta-Kilo
//
//  Created by Angie Linton on 2017-01-25.
//  Copyright © 2017 Angie Linton. All rights reserved.
//

#import <Foundation/Foundation.h>
@import UIKit;
@class Subjects;
@class PhotoObject;

@interface SubjectManager : NSObject

@property(nonatomic, readonly)NSArray<Subjects*>*subjectArray;
-(NSInteger)numberOfSections;
-(NSInteger)numberOfItemsInSection:(NSInteger)section;
-(PhotoObject*)photoObjectAtIndexPath:(NSIndexPath*)indexPath;
-(Subjects*)subjectAtIndexPath:(NSIndexPath*)indexPath;

@end
