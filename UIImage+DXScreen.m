
#import "UIImage+DXScreen.h"

@implementation UIImage (DXScreen)

+ (UIImage *)captureScreen:(UIView *)view
{
    // 手动开启图片上下文
    UIGraphicsBeginImageContext(view.bounds.size);
    
    // 获取上下文
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    // 渲染上下文到图层
    [view.layer renderInContext:ctx];
    
    // 从当前上下文获取图片
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();

    // 结束上下文
    UIGraphicsEndImageContext();
    return newImage;
}
@end
