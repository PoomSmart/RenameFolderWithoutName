@interface SBFolder
@property(retain, nonatomic) NSString *displayName;
@end

@interface SBFolderView <UITextFieldDelegate>
- (void)setFolderName:(NSString *)name;
@end

%hook SBFolderView

- (void)textFieldDidEndEditing:(UITextField *)textField
{
	SBFolder* folder = MSHookIvar<SBFolder *>(self, "_folder");
	NSString *text = [textField text];
	[folder setDisplayName:text];
	if ([self respondsToSelector:@selector(setFolderName:)])
		[self setFolderName:text];
}

%end
