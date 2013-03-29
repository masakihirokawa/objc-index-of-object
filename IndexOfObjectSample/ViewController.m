//
//  ViewController.m
//  IndexOfObjectSample
//
//  Created by 廣川政樹 on 2013/03/29.
//  Copyright (c) 2013年 Dolice. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
	[self main];
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
}

- (void)main
{
  //配列を生成する
  NSArray *myArray = [NSArray arrayWithObjects:
                      @"Apple", @"Banana", @"Orange", nil];
  
  //順序付けされたセットを生成する
  NSOrderedSet *orderedSet;
  orderedSet = [NSOrderedSet orderedSetWithArray:myArray];
  
  //配列からオブジェクトを検索する
  NSLog(@"From myArray");
  NSInteger u = [myArray indexOfObject:@"Banana"];
  NSLog(@"%lu", (unsigned long)u);
  
  //オブジェクトが見つからない時は「NSNotFound」が返る
  u = [myArray indexOfObject:@"Banana"];
  if (u == NSNotFound) {
    NSLog(@"Not Found");
  }
  
  //順序付けされたセットからオブジェクトを検索する
  NSLog(@"From orderdSet");
  NSInteger i = [orderedSet indexOfObject:@"Apple"];
  NSLog(@"%lu", (unsigned long)i);
  
  //オブジェクトが見つからない時は「NSNotFound」が返る
  u = [myArray indexOfObject:@"Lemon"];
  if (u == NSNotFound) {
    NSLog(@"Not Found");
  }
}

@end
