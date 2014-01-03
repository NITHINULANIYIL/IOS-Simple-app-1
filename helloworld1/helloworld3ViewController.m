//
//  helloworld3ViewController.m
//  helloworld1
//
//  Created by infoview on 08/12/13.
//  Copyright (c) 2013 infoview. All rights reserved.
//

#import "helloworld3ViewController.h"
#import "helloworld4ViewController.h"

@interface helloworld3ViewController ()

@end

@implementation helloworld3ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];self.view.backgroundColor = [UIColor greenColor];
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(100, 300, 150 , 40)];
    label.text = @"hellow world";
    [self.view addSubview:label];
    
    
   
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button addTarget:self action:@selector(callLabel1) forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:@"Click" forState:normal];
    button.backgroundColor = [UIColor blueColor];
    button.frame = CGRectMake(100, 450, 100, 20);
    [self.view addSubview:button];	// Do any additional setup after loading the view.
}
-(void)callLabel1{
    helloworld4ViewController *hello2 =[[helloworld4ViewController alloc]init];
    [self.navigationController pushViewController:hello2 animated:YES];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
