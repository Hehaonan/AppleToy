//
//  SceneDelegate.m
//  AppleToy
//
//  Created by hehaonan on 2022/8/29.
//

#import "SceneDelegate.h"
#import "ViewController.h"
@interface SceneDelegate ()<UITabBarControllerDelegate>

@end

@implementation SceneDelegate


- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
    // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
    // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
    // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
    self.window = [[UIWindow alloc] initWithWindowScene:(UIWindowScene *)scene];

    UITabBarController *tabBarController = [[UITabBarController alloc]init];
    
    UIViewController *tabViewController1 = [[UIViewController alloc]init];
    tabViewController1.view.backgroundColor = [UIColor lightGrayColor];
    tabViewController1.tabBarItem.title = @"首页";
    tabViewController1.tabBarItem.image = [UIImage imageNamed:@"page.png"];
    tabViewController1.tabBarItem.selectedImage = [UIImage imageNamed:@"ipage_selected.png"];
    
    UIViewController *tabViewController2 = [[UIViewController alloc]init];
    tabViewController2.view.backgroundColor = [UIColor whiteColor];
    tabViewController2.tabBarItem.title = @"喜欢1";
    tabViewController2.tabBarItem.image = [UIImage imageNamed:@"like.png"];
    tabViewController2.tabBarItem.selectedImage = [UIImage imageNamed:@"like_selected.png"];
    
    
    UIViewController *tabViewController3 = [[UIViewController alloc]init];
    tabViewController3.view.backgroundColor = [UIColor lightGrayColor];
    tabViewController3.tabBarItem.title = @"视频1";
    tabViewController3.tabBarItem.image = [UIImage imageNamed:@"video.png"];
    tabViewController3.tabBarItem.selectedImage = [UIImage imageNamed:@"video_selected.png"];

    ViewController  *tabViewController4 = [[ViewController alloc] init];
    tabViewController4.view.backgroundColor = [UIColor whiteColor];
    tabViewController4.tabBarItem.title = @"我的1";
    tabViewController4.tabBarItem.image = [UIImage imageNamed:@"home.png"];
    tabViewController4.tabBarItem.selectedImage = [UIImage imageNamed:@"home_selected.png"];
    

    [tabBarController setViewControllers:@[tabViewController1,tabViewController2,tabViewController3,tabViewController4]];
    tabBarController.delegate = self;

    UINavigationController *navController = [[[UINavigationController alloc]init] initWithRootViewController:tabBarController];
    
    self.window.rootViewController = navController;
    [self.window makeKeyAndVisible];
}


- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController {
    NSLog(@"tabBarController didSelectViewController");
}

- (void)sceneDidDisconnect:(UIScene *)scene {
    // Called as the scene is being released by the system.
    // This occurs shortly after the scene enters the background, or when its session is discarded.
    // Release any resources associated with this scene that can be re-created the next time the scene connects.
    // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
}


- (void)sceneDidBecomeActive:(UIScene *)scene {
    // Called when the scene has moved from an inactive state to an active state.
    // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
}


- (void)sceneWillResignActive:(UIScene *)scene {
    // Called when the scene will move from an active state to an inactive state.
    // This may occur due to temporary interruptions (ex. an incoming phone call).
}


- (void)sceneWillEnterForeground:(UIScene *)scene {
    // Called as the scene transitions from the background to the foreground.
    // Use this method to undo the changes made on entering the background.
}


- (void)sceneDidEnterBackground:(UIScene *)scene {
    // Called as the scene transitions from the foreground to the background.
    // Use this method to save data, release shared resources, and store enough scene-specific state information
    // to restore the scene back to its current state.
}


@end
