//
//  PhotoObject.h
//  Insta-Kilo
//
//  Created by Angie Linton on 2017-01-25.
//  Copyright © 2017 Angie Linton. All rights reserved.
//


@import UIKit;

@interface PhotoObject : NSObject
-(instancetype)initWithName:(NSString *)name;
@property (nonatomic, readonly)UIImage *image;
@end
