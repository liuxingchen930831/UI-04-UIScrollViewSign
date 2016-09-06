//
//  ViewController.m
//  UIScrollViewDelegate
//
//  Created by liuxingchen on 16/9/6.
//  Copyright © 2016年 Liuxingchen. All rights reserved.
//

#import "ViewController.h"
@interface ViewController ()<UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@property(nonatomic,strong)UIImageView * imageView ;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.imageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"minion"]];
    [self.scrollView addSubview:self.imageView];
    self.scrollView.contentSize = self.imageView.image.size;
    self.scrollView.delegate = self;
    //设置缩放比例最大值
    self.scrollView.maximumZoomScale = 2.0;
    //设置缩放比例最小值
    self.scrollView.minimumZoomScale = 0.5;
}
//这个方法会返回一个要缩放的内容，返回值只能是scrollView的子控件
- (nullable UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
    return self.imageView;
}
//当scrollView的子控件正在缩放时调用
- (void)scrollViewDidZoom:(UIScrollView *)scrollView
{
    NSLog(@"%f",scrollView.zoomScale);
}
@end
