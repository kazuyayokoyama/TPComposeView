//
//  DemoViewController.m
//  Demo
//
//  Created by Damir Tursunovic on 1/15/12.
//  Copyright (c) 2012 Tappable Software. All rights reserved.
//

#import "DemoViewController.h"
#import "TPComposeView.h"

@implementation DemoViewController

-(void)viewDidLoad
{
    self.title = @"Composeview Demo";
    self.view.backgroundColor = [UIColor scrollViewTexturedBackgroundColor];
    
    UIButton *firstButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [firstButton setFrame:CGRectMake(20.0, 20.0, 280.0, 36.0)];
    [firstButton setTitle:@"Compose some text!" forState:UIControlStateNormal];
    [firstButton addTarget:self action:@selector(a) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:firstButton];
    
    UIButton *secondButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [secondButton setFrame:CGRectMake(20.0, 80.0, 280.0, 36.0)];
    [secondButton setTitle:@"Compose some text with char limiter" forState:UIControlStateNormal];
    [secondButton addTarget:self action:@selector(b) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:secondButton];    
}

-(void)a
{
    TPComposeView *composeView = [[TPComposeView alloc] initWithInitialText:@"Some text..."];
    [composeView setCancelButtonTitle:@"Cancel!"];
    [composeView setComposeButtonTitle:@"Post it!"];
    composeView.title = @"Compose";
    composeView.completionHandler = ^(TPComposeViewResult result, NSString *text){
        switch (result) 
        {
            case TPComposeViewResultCancelled:
                NSLog(@"Cancelled!");
                break;
                
            case TPComposeViewResultDone:
                NSLog(@"Composed the text: %@", text);
                break;                
        }
    };
    [composeView presentComposeView];
    [composeView release];    
}


-(void)b
{
    TPComposeView *composeView = [[TPComposeView alloc] initWithInitialText:@"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis adipiscing. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis adipiscing. "];
    composeView.title = @"Compose";
    composeView.maxChars = 140;
    composeView.completionHandler = ^(TPComposeViewResult result, NSString *text){
        switch (result) 
        {
            case TPComposeViewResultCancelled:
                NSLog(@"Cancelled!");
                break;
                
            case TPComposeViewResultDone:
                NSLog(@"Composed the text: %@", text);
                break;                
        }
    };
    [composeView presentComposeView];
    [composeView release];    
}

@end
