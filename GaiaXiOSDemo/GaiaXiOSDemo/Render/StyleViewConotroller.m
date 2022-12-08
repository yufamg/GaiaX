//
//  StyleViewConotroller.m
//  GaiaXiOSDemo
//
//  Created by biezhihua on 2022/12/8.
//

#import "StyleViewController.h"
#import <GaiaXiOS/GaiaXiOS.h>
#import "GaiaXHelper.h"

@interface StyleViewController (){
    UIView *_view1;
    UIView *_view2;
}

@end

@implementation StyleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self renderTemplate1];
}

- (void)renderTemplate1{

    UILabel *label1 = [[UILabel alloc] initWithFrame:CGRectMake(10, 100, self.view.frame.size.width - 20, 40)];
    label1.textColor = [UIColor blackColor];
    NSString *tmpString = NSLocalizedString(@"style_blur_template", nil);
    label1.text = [NSString stringWithFormat:@"%@ 1",tmpString];
    [self.view addSubview:label1];

    //templateItem
    GXTemplateItem *templateItem1 = [[GXTemplateItem alloc] init];
    templateItem1.templateId = @"gx-style-backdrop-filter";
    templateItem1.bizId = [GaiaXHelper bizId];
    templateItem1.isLocal = YES;

    //渲染view
    _view1 = [TheGXTemplateEngine creatViewByTemplateItem:templateItem1 measureSize:CGSizeMake(self.view.frame.size.width - 20, NAN)];
    CGRect frame1 = _view1.frame;
    frame1.origin.x = 10;
    frame1.origin.y = CGRectGetMaxY(label1.frame);
    _view1.frame = frame1;
    [self.view addSubview:_view1];

    //绑定数据
    GXTemplateData *data1 = [[GXTemplateData alloc] init];
    data1.data = @{@"blur_text": @"我是文本我是文本我是文本我是文本我是文本", @"img": @"https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fup.enterdesk.com%2Fphoto%2F2011-10-14%2Fenterdesk.com-2E8A38D0891116035E78DD713EED9637.jpg&refer=http%3A%2F%2Fup.enterdesk.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1666781857&t=595349c20a2e34ceddbd48b130339fbf"};

    [TheGXTemplateEngine bindData:data1 onView:_view1];
    
}



@end
