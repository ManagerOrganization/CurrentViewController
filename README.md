# CurrentViewController
easy ti get your current view controller in display

# How to use

let your view controller extends BaseViewController
```
//make your viewcontroller inheritance BaseViewController
@interface ViewController : BaseViewController
@end
```
then you can get current view controller any where 
```
//when ReceiveRemoteNotification
 //I can esay find out which view controller is on the screen here.
//    __weak UIViewController *currentVC=[UIApplication sharedApplication].currentViewController;
    __weak UIViewController *currentVC=CurrentVC;
    NSLog(@"%@",currentVC);
    

//when you want to do something in subviews
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    //if you want to go another view controller when you touch this view
    //you don't need create a delegate to let the display or some view controller to perform SEL
    
    NSLog(@"%@",[UIApplication sharedApplication].currentViewController);
    
    AnotherViewController *another=[[AnotherViewController alloc]init];
    //    [[UIApplication sharedApplication].currentViewController.navigationController pushViewController:another animated:YES];
    //OR
    PushVC(another);
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [CurrentVC.navigationController popViewControllerAnimated:YES];
    });
    
}
