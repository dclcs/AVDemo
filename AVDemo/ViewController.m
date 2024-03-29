//
//  ViewController.m
//  KFAudioDemo
//
//  Created by cl d on 2023/12/19.
//

#import "ViewController.h"

static NSString * const KFMainTableCellIdentifier = @"KFMainTableCellIdentifier";

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>
@property (strong, nonatomic) UITableView *myTableView;
@property (copy, nonatomic) NSArray *demoList;
@property (copy, nonatomic) NSArray *demoTitle;
@property (copy, nonatomic) NSArray *demoPageNameList;
@end

@implementation ViewController

#pragma mark - Property
- (UITableView *)myTableView {
    if (!_myTableView) {
        _myTableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
        _myTableView.delegate = self;
        _myTableView.dataSource = self;
    }
    
    return _myTableView;
}

#pragma mark - Lifecycle
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.whiteColor;
    self.demoTitle = @[@"DEMOS", @"面试相关"];
    self.demoList = @[@[@"Audio Capture", @"Audio Encoder", @"Audio Muxer", @"Audio Demuxer", @"Audio Decoder", @"Audio Render", @"TestImageLoader"], @[@"多线程相关"]];
    self.demoPageNameList = @[@[@"KFAudioCaptureViewController", @"KFAudioEncoderViewController", @"KFAudioMuxerViewController",@"KFAudioDemuxerViewController", @"KFAudioDecoderViewController", @"KFAudioRenderViewController", @"TestImageLoaderViewController"], @[@"InterviewGCDViewController"]];
    
    [self setupUI];
}

#pragma mark - Setup
- (void)setupUI {
    // Use full screen layout.
    self.edgesForExtendedLayout = UIRectEdgeAll;
    self.extendedLayoutIncludesOpaqueBars = YES;
    
    self.title = @"Demos";
    
    // myTableView.
    [self.view addSubview:self.myTableView];
    self.myTableView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addConstraints:@[
                                [NSLayoutConstraint constraintWithItem:self.myTableView attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeft multiplier:1.0 constant:0],
                                [NSLayoutConstraint constraintWithItem:self.myTableView attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeRight multiplier:1.0 constant:0],
                                [NSLayoutConstraint constraintWithItem:self.myTableView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view.safeAreaLayoutGuide attribute:NSLayoutAttributeTop multiplier:1.0 constant:0],
                                [NSLayoutConstraint constraintWithItem:self.myTableView attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self.view.safeAreaLayoutGuide attribute:NSLayoutAttributeBottom multiplier:1.0 constant:0],
                                ]];
}

#pragma mark - Navigation
- (void)goToDemoPageWithViewControllerName:(NSString *)name {
    UIViewController *vc = [(UIViewController *) [NSClassFromString(name) alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

#pragma mark - UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    [self goToDemoPageWithViewControllerName:self.demoPageNameList[indexPath.section][indexPath.row]];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 50;
}

#pragma mark - UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.demoList.count;
}

- (NSString *) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return self.demoTitle[section];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return ((NSArray *)self.demoList[section]).count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:KFMainTableCellIdentifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:KFMainTableCellIdentifier];
    }
    
    NSString *demoTitle = self.demoList[indexPath.section][indexPath.row];
    cell.textLabel.text = demoTitle;
    
    return cell;
}


@end
