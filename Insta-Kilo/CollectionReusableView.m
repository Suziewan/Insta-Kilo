//
//  CollectionReusableView.m
//  Insta-Kilo
//
//  Created by Angie Linton on 2017-01-25.
//  Copyright © 2017 Angie Linton. All rights reserved.
//

#import "CollectionReusableView.h"
#import "Subjects.h"

@interface CollectionReusableView()
@property(weak,nonatomic)IBOutlet UILabel *label;
@end

@implementation CollectionReusableView

-(void)setSubjects:(Subjects *)subjects{
    self.label.text = subjects.name;
    _subjects = subjects;
}
@end
