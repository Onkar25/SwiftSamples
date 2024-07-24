//
//  ViewController.m
//  ObjectiveCDemo
//
//  Created by Apple on 17/12/17.
//  Copyright © 2017 trycatch. All rights reserved.
//

#import "ViewController.h"
#import <AFNetworking.h>

@interface ViewController ()
{
    UITextField *Username;
    UILabel *lbl;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
  lbl= [[UILabel alloc] initWithFrame: CGRectMake(10, 10, 200, 30)];
    lbl.text = @"Welcome Onkar";
    //[lbl setText: @"Welcome Crooks"];
    [self.view addSubview:lbl];
    
     Username = [[UITextField alloc] initWithFrame:CGRectMake(10, 60, 200, 30)];
   // Username.placeholder = @"Enter Username";
    [Username setPlaceholder:@"Enter Username"];
    [self.view addSubview:Username];
    
    
    NSArray *items = [NSArray arrayWithObjects: @"Onkar" ,@"Shraddha" , @"Afzal" , nil];
    
    NSMutableArray *dyncItem = [[NSMutableArray alloc] init];
    [dyncItem addObject:@"Try Catch"];
    [dyncItem addObject:@"Daily Hunt"];
    [dyncItem addObject:@"Webian"];
    
    NSLog(@"%@" , dyncItem[1]);
    
    UISegmentedControl *gender = [[UISegmentedControl alloc] initWithFrame:CGRectMake(10, 100, 300, 30)];
    
    [gender initWithItems:dyncItem];
    [self.view addSubview:gender];
                                  
    
    UIButton *submit = [[UIButton alloc] initWithFrame:CGRectMake(10, 140, 200, 30)] ;
        [submit setTitle:@"SUBMIT" forState:UIControlStateNormal];
                        [self.view addSubview:submit];
    
    [submit setBackgroundColor:[UIColor blackColor]];
    [submit addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    
    for (int i = 0; i<10; i++) {
        //NSLog(@"Value %d",i);
       // printf(<#const char *restrict, ...#>)
        printf("Value %d \n" ,i);
        if (i==5) {
            break;
        }
    }
    
    NSDictionary *dict = [NSDictionary dictionaryWithObjectsAndKeys: @"Onkar" , @"Name" ,@"Try Catch", @"Class",nil];
                          NSLog(@"%@" , dict);
    
    NSMutableDictionary *dict1 = [[NSMutableDictionary alloc] init];
                                  [dict1 setObject:@"Crooks" forKey:@"Pet Name"];
    [dict1 setObject:@"Afzal" forKey:@"Friend"];
    NSLog(@"%@",dict1);
    
}
-(void) btnClick{
    NSString *str = Username.text ;
    NSLog(str);
    [lbl setText:str];
    
    NSString *str1 = @"Helllo" ;
    int z = 0;
    float x = 9.88;
    
    NSLog(@"Button Clicked %@ %d %f" , str1, z ,x );
    
    
//
//    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
//    UIViewController *vc2 = [sb instantiateViewControllerWithIdentifier:@"CollectionViewVC"];
//    [self presentViewController:vc2 animated:YES completion:nil];

    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    
    [manager GET:@"http://mapi.trycatchtech.com/v1/naamkaran/category_list" parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSLog(@"output : %@",responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(error.localizedDescription);
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
