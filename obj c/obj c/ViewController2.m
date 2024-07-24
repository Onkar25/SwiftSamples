//
//  ViewController2.m
//  obj c
//
//  Created by Apple on 22/12/17.
//  Copyright © 2017 TryCatch. All rights reserved.
//

#import "ViewController2.h"

@interface ViewController2 ()

@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)bcBTN:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (IBAction)shopbtn:(id)sender {
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    
    UIViewController *vc1 = [sb instantiateViewControllerWithIdentifier:@"ViewController3"];
    [self presentViewController:vc1 animated:YES completion:nil];
}
@end
