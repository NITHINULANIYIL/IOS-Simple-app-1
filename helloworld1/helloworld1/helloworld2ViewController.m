//
//  helloworld2ViewController.m
//  helloworld1
//
//  Created by infoview on 08/12/13.
//  Copyright (c) 2013 infoview. All rights reserved.
//

#import "helloworld2ViewController.h"
#import "helloworld3ViewController.h"
@interface helloworld2ViewController ()

@end

@implementation helloworld2ViewController

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
    [super viewDidLoad];self.view.backgroundColor =[UIColor whiteColor];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button addTarget:self action:@selector(callLabel) forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:@"Click" forState:normal];
    button.backgroundColor = [UIColor blueColor];
    button.frame = CGRectMake(100, 150, 100, 20);
    [self.view addSubview:button];
    
	// Do any additional setup after loading the view.
}
-(void)callLabel{
    helloworld3ViewController *hello2 =[[helloworld3ViewController alloc]init];
    [self.navigationController pushViewController:hello2 animated:YES];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
