//
//  ViewController.m
//  Insta-Kilo
//
//  Created by Angie Linton on 2017-01-25.
//  Copyright © 2017 Angie Linton. All rights reserved.
//

#import "ViewController.h"
#import "SubjectManager.h" //which holds the subjects model
#import "CollectionViewCell.h" //which holds the photoObject
#import "PhotoObject.h" //holds the images
#import "CollectionReusableView.h"//holds subjects

@interface ViewController ()<UICollectionViewDelegate, UICollectionViewDataSource>

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property(nonatomic)SubjectManager *manager;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.manager = [SubjectManager new];
    UICollectionViewFlowLayout *layout = (UICollectionViewFlowLayout*)self.collectionView.collectionViewLayout;
   
    CGFloat width = self.view.frame.size.width/2;
    CGSize size = CGSizeMake(width, width);
    layout.itemSize = size;
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return [self.manager numberOfSections];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [self.manager numberOfItemsInSection:section];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    CollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    
    PhotoObject *photoObject = [self.manager photoObjectAtIndexPath:indexPath];
    
    cell.photoObject = photoObject;
    return cell;
}

- (UICollectionReusableView*)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath {
    
    CollectionReusableView *view = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"Cell" forIndexPath:indexPath];
    Subjects *subjects = [self.manager subjectAtIndexPath:indexPath];
    view.subjects = subjects;
    return view;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {}

@end
