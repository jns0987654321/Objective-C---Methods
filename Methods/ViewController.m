//
//  ViewController.m
//  Methods
//
//  Created by Junior Samaroo on 2017-04-29.
//  Copyright © 2017 Junior Samaroo. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()
// non publicly availbale since defined in  m file and not h
// native value types, or non objects dont specify strong/weak can retain those properties
@property (nonatomic) double bankAccount;
@property (nonatomic) double itemAmount;
@end

@implementation ViewController

// - means method of your object
// static methdos have + sign
// void is return type
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.bankAccount =500.50;
    self.itemAmount = 400.00;
    
}

// double is C type
// : represents a parameter, add : for more
- (BOOL) canPurchase:(double)amount {
    
    if (self.bankAccount >= amount)
        return YES;
    
    return NO;
}

- (void) declareWinnerWithPlayerAScore:(NSInteger)scoreA playerBScore:(NSInteger)scoreB {
    
    if (scoreA > scoreB)
    {
        NSLog(@"Player A Wins!");
    }
    
}

-(void)playground {
    
    if ([self canPurchase:self.itemAmount]) {
        NSLog(@"We can buy!");
    }
    
    [self declareWinnerWithPlayerAScore:55 playerBScore:66];
    
    Person *person = [[Person alloc]init];
    [person speakName];
    [Person stateSpecies];
    
    // example image download from www, check for null is still dangerous
    UIImage *image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://google.com"]]];
    
    NSString *urlString = @"http://google.com";
    NSURL * url = [NSURL URLWithString:urlString];
    NSData *data = [NSData dataWithContentsOfURL:url];
    UIImage *img = [UIImage imageWithData:data];
    
}

// class func someFunc() is a static or type func, Person.someFunc()
// func which is called on an isntacne is called class func

// function calls like [hi hi] but can also be properties
// access properties using dots hi.hi to differentiate between both

@end
