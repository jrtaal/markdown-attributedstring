//
//  NSViewController.m
//  MarkdownAttributedString
//
//  Created by Jacco Taal on 03/06/2017.
//  Copyright (c) 2017 Jacco Taal. All rights reserved.
//

@import MarkdownAttributedString;
#import "NSViewController.h"

@interface NSViewController ()
@property (nonatomic) IBOutlet UITextView *textView;

@end

@implementation NSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.textView = [[UITextView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:_textView];
    self.view.backgroundColor = [UIColor whiteColor];
	// Do any additional setup after loading the view, typically from a nib.

    NSString * p = [[NSBundle mainBundle]pathForResource:@"README" ofType:@"md"];
    NSString * s = [NSString stringWithContentsOfFile:p encoding:NSUTF8StringEncoding error:nil];
    NSAttributedStringMarkdownParser * parser = [NSAttributedStringMarkdownParser new];
    NSAttributedString *m = [parser attributedStringFromMarkdownString:s];

    self.textView.attributedText = m;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
