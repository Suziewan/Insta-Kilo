//
//  PhotoObject.m
//  Insta-Kilo
//
//  Created by Angie Linton on 2017-01-25.
//  Copyright © 2017 Angie Linton. All rights reserved.
//

#import "PhotoObject.h"

@implementation PhotoObject

//create an instance of the photoobject

-(instancetype)initWithName:(NSString *)name{
    self = [super init];
    if (self) {
        _image = [UIImage imageNamed:name];
    }
    return self;
}
@end
