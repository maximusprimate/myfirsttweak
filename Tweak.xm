@interface SpringBoard
	-(NSArray *)_rootViewControllers;
@end

%hook SpringBoard
- (void)applicationDidFinishLaunching:(UIApplication *)application {
	%orig;
	UIAlertView *alert = [[UIAlertView alloc] 
	initWithTitle:@"Hello world" 
	message:@"-Max" 
    delegate:nil 
    cancelButtonTitle:@"Dismiss"
    otherButtonTitles:nil];
	[alert show];
	}

%end