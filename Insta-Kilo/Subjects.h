//
//  Subjects.h
//  Insta-Kilo
//
//  Created by Angie Linton on 2017-01-25.
//  Copyright © 2017 Angie Linton. All rights reserved.
//

#import <Foundation/Foundation.h>
@import UIKit;
@class PhotoObject;


@interface Subjects : NSObject
@property(nonatomic) NSArray<PhotoObject*>*photoObjectArray;
@property (nonatomic, readonly) NSString*name;
-(instancetype)initWithName:(NSString*)name;

@end
