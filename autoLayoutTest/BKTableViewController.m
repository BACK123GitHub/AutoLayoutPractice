//
//  BKTableViewController.m
//  autoLayoutTest
//
//  Created by 孟庆儒 on 2019/5/28.
//  Copyright © 2019 孟庆儒. All rights reserved.
//

#import "BKTableViewController.h"
#import "bkTableViewCell.h"
#import "bkTableModel.h"
#import "Masonry.h"
#import "Ourdur.h"

@interface BKTableViewController ()

@end

@implementation BKTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.dataList = [NSMutableArray array];
    for(int i=0;i<10;i++)
    {
        bkTableModel* model = [[bkTableModel alloc]init];
        model.title= [NSString stringWithFormat:@"title %d",i];
        model.text = @"this is a text";
        [self.dataList addObject:model];
    }
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

-(void)tableViewConstraint
{
    [self.bktableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    
    return self.dataList.count;
}

#pragma mark - Table view delegate

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    bkTableViewCell* cell = [self.bktableView dequeueReusableCellWithIdentifier:bkCell];
    bkTableModel* model = self.dataList[indexPath.row];
    cell.detailTextLabel.text=model.title;
//    if(cell==nil)
//    {
//        cell = [[bkTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:bkCell];
//    }
    return cell;
}

- (UITableView *)tableView
{
    if(_bktableView!=nil)
    {
        _bktableView=[[UITableView alloc]initWithFrame:CGRectZero style:UITableViewStylePlain];
        _bktableView.delegate=self;
        _bktableView.dataSource=self;
        //设置tableView自动高度
        _bktableView.rowHeight=UITableViewAutomaticDimension;
        [_bktableView registerClass:[bkTableViewCell class] forCellReuseIdentifier:bkCell];
        [self.view addSubview:_bktableView];
    }
    return _bktableView;
}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
