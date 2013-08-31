@interface SBFolder
@property(retain, nonatomic) NSString* displayName;
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
	[self setFolderName:text];
}

%end