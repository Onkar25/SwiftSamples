//
//  CollectionViewVC.m
//  ObjectiveCDemo
//
//  Created by Apple on 17/12/17.
//  Copyright © 2017 trycatch. All rights reserved.
//

#import "CollectionViewVC.h"
#import "CustomCVC.h"

@interface CollectionViewVC ()

@end

@implementation CollectionViewVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return  10;
}
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    CustomCVC *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"CustomCVC" forIndexPath:indexPath];
    cell.lblData.text = [NSString stringWithFormat:@"Item %ld",indexPath.row];
    return cell;
}

-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    return CGSizeMake((collectionView.frame.size.width-20)/3, (collectionView.frame.size.width-20)/3);
}
@end
