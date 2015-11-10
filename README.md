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
- (void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo {
    __weak UIViewController *currentVC=CurrentVC;
    NSLog(@"%@",currentVC);
}
    

//when you want to do something in subviews,it's subviews touch function
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    AnotherViewController *another=[[AnotherViewController alloc]init];
    PushVC(another);
}
