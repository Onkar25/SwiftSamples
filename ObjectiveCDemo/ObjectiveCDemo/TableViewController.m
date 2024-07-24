//
//  TableViewController.m
//  ObjectiveCDemo
//
//  Created by Apple on 17/12/17.
//  Copyright © 2017 trycatch. All rights reserved.
//

#import "TableViewController.h"
#import "CustomTVC.h"
@interface TableViewController ()

@end

@implementation TableViewController
- (IBAction)btnBack:(id)sender {
      [self dismissViewControllerAnimated:YES completion:nil];
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{return  3;}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
//    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
//    cell.textLabel.text = [NSString stringWithFormat:@"Row number %ld" , indexPath.row+1];
//    return  cell;
    
    CustomTVC *myCustomCell = [tableView dequeueReusableCellWithIdentifier:@"CustomTVC"];
    myCustomCell.lblTitle.text = [NSString stringWithFormat:@"Row %ld",(long)indexPath.row];
    return myCustomCell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    return [NSString stringWithFormat:@"Section %ld",(long)section];
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{return 5; }
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
