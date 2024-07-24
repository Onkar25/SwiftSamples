//
//  ViewController.m
//  obj c
//
//  Created by Apple on 22/12/17.
//  Copyright © 2017 TryCatch. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UILabel *lbl = [[UILabel alloc]initWithFrame:CGRectMake(10, 10, 100, 40)];
    [lbl setText:@"Sign Up"];
    [self.view addSubview:lbl];
    UITextField *tv1 = [[UITextField alloc]initWithFrame:CGRectMake(10, 50, 100, 40)];
    tv1.text = @"USERNAME" ;
    [self.view addSubview:tv1];
  UITextField*TV = [[UITextField alloc]initWithFrame:CGRectMake(10, 90, 100, 40)];
    TV.text = @"password";
    [self.view addSubview:TV];
   /* UISegmentedControl *seg = [[UISegmentedControl alloc]initWithItems: *arr];
    UIImageView *img = [[UIImageView alloc]initWithFrame:(CGRectMake(10, 160, 50, 50))];
    [self.view addSubview:img];
   img.image = UIImage(named: @"game of thrones.jpg");
    [img setImage:@"images-9.jpeg"];*/
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(10, 160, 100, 40)];
    [btn setTitle:@"SignUP" forState:UIControlStateNormal];
    [btn setBackgroundColor:[UIColor grayColor]];
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(btnPressed) forControlEvents:UIControlEventTouchUpInside];
    
    //NSArray *arr = [NSArray arrayWithObjects:@"Female",@"Male", nil]
}

- (void) btnPressed {
    NSLog(@"btn Pressed");
   
    
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    
    UIViewController *vc = [sb instantiateViewControllerWithIdentifier:@"ViewController2"];
    [self presentViewController:vc animated:YES completion:nil];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
