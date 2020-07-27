//
//  ViewController.m
//  OsamaMouthShutDemo
//
//  Created by Osama Mohammed Shaikh on 27/07/20.
//  Copyright © 2020 Osama Mohammed Shaikh. All rights reserved.
//

#import "ViewController.h"
#import "CustomTableViewCell.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITableView *CustomTableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.CustomTableView.tableFooterView = [UIView new];

    [self registerCustomTableViewCell];
    [self setDelegateAndDatasource];
}

-(void) setDelegateAndDatasource {
    self.CustomTableView.delegate = self;
    self.CustomTableView.dataSource = self;
}

-(void) registerCustomTableViewCell {
    [self.CustomTableView registerNib:[UINib nibWithNibName:@"CustomTableViewCell" bundle:nil] forCellReuseIdentifier:@"CustomTableViewCell"];
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath { 
    CustomTableViewCell *tableCell = [self.CustomTableView dequeueReusableCellWithIdentifier:@"CustomTableViewCell" forIndexPath:indexPath];
    tableCell.tableIndex = indexPath.row;
    return tableCell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 100;
}

- (CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 100;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section { 
    return 2;
}

@end
