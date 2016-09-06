###UIScrollView手势缩放
- UIScrollView不仅能滚动显示大量内容，还能对其内容进行缩放处理
- 也就是说，要完成缩放功能的话，只需要将需要缩放的内容添加到UIScrollView中
- 当用户在UIScrollView身上使用捏合手势时，UIScrollView会调用代理的viewForZoomingInScrollView:方法，这个方法返回的控件就是需要进行缩放的控件

//这个方法会返回一个要缩放的内容，返回值只能是scrollView的子控件

- -(nullable UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
    return self.imageView;
}

// 当scrollView的子控件正在缩放时调用

- -(void)scrollViewDidZoom:(UIScrollView *)scrollView
{
    NSLog(@"%f",scrollView.zoomScale);
}