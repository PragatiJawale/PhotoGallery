//
//  ViewController.h
//  PJPhotoGallery
//
//  Created by Mac on 08/11/16.
//  Copyright © 2016 Pragati Jawale. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>

@interface ViewController : UIViewController

<UIImagePickerControllerDelegate,MFMailComposeViewControllerDelegate,MFMessageComposeViewControllerDelegate>

- (IBAction)actionCamera:(id)sender;
- (IBAction)actionPhotoGallery:(id)sender;
- (IBAction)actionMail:(id)sender;
- (IBAction)actionSms:(id)sender;


@property (strong, nonatomic) IBOutlet UIImageView *imageView;

@end

