//
//   Created by 彭懂 on 2021/10/8.
//   Abstract: ViewController.m
//  

#import "ViewController.h"
#import "OneViewController.h"
#import "TwoViewController.h"
#import "ThreeViewController.h"
#import "FourViewController.h"
#import "FiveViewController.h"
#import "SixViewController.h"
#import "SevenViewController.h"
//#import "Masonry.h"
//#import <Masonry/Masonry.h>
//#import "AFNetworking.h"
//#import "MJRefresh.h"
#import <AFNetworking/AFNetworking.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
//    UIView *v = [UIView new];
//    [self.view addSubview:v];
//    [v mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.edges.equalTo(self.view);
//    }];
//
//    v.backgroundColor = UIColor.orangeColor;
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    NSLog(@"%@",manager);
}


@end
