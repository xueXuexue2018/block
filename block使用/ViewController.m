//
//  ViewController.m
//  block使用
//
//  Created by XJL on 2018/9/14.
//  Copyright © 2018年 XJL. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
  
  //block的定义
  // 返回类型（^block名称)(参数）=^{表达式}
 __block int count=10;
  void (^blockName)(void)=^(){
   
    NSLog(@"%d",count);
  };
  count=9;
  blockName();
  

  
  
  
}
void exampleA() {
  char a = 'A';
  ^{
    printf("%c\n", a);
  }();
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}


@end
