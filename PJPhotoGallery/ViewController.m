//
//  ViewController.m
//  PJPhotoGallery
//
//  Created by Mac on 08/11/16.
//  Copyright © 2016 Pragati Jawale. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info {
    NSLog(@"%@",info);
    
    UIImage *image = [info valueForKey:@"UIImagePickerControllerOriginalImage"];
    
    self.imageView.image = image;
    
    [picker dismissViewControllerAnimated:YES completion:nil];
    
}



- (IBAction)actionCamera:(id)sender {
    UIImagePickerController *imagePickerController = [[UIImagePickerController alloc]init];
    imagePickerController.delegate = self;
    [imagePickerController setSourceType:UIImagePickerControllerSourceTypeCamera];
    
    [self presentViewController:imagePickerController animated:YES completion:nil];
    

}

- (IBAction)actionPhotoGallery:(id)sender {
    UIImagePickerController *imagePickerController = [[UIImagePickerController alloc]init];
    
    imagePickerController.delegate = self;
    
    [imagePickerController setSourceType:UIImagePickerControllerSourceTypeCamera];
    
    [self presentViewController:imagePickerController animated:YES completion:nil];
    

}

- (IBAction)actionMail:(id)sender {
    MFMailComposeViewController *mailController = [[MFMailComposeViewController alloc]init];
    
    mailController.mailComposeDelegate = self;
    
    [mailController setToRecipients:@[@"nammahajan12@gmail.com"@"ritesh.patil1792@gmail.com",@"pragativj2011@gmail.com",@"patildivya2013@gmail.com",@"karishmamahajan1912@gmail.com",@"mrunalininemade.mn@gmail.com",@"gadhenilesh449@gmail.com",@"patilakshays1994@gmail.com",@"tushar.kolhe01@gmail.com",@"chaitali.cpatil@gmail.com",@"jivanchaudhari0@gmail.com",@"patiljagruti8693@gmail.com",@"kalyani.warke18@gmail.com",@"rane.gunjan94@gmail.com"]];
    
    [mailController setSubject:@"Firebase Doc - Read"];
    
    [mailController setMessageBody:@"https://firebase.google.com/docs/database/ios/read-and-write" isHTML:NO];
    
    [self presentViewController:mailController animated:YES completion:nil];

}
-(void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error {
    
    if (error) {
        NSLog(@"%@",error.localizedDescription);
    }
    else {
        switch (result) {
            case MFMailComposeResultCancelled:
                NSLog(@"Mail Cancelled");
                break;
                
            case MFMailComposeResultSaved:
                NSLog(@"Mail Saved");
                break;
            case MFMailComposeResultSent:
                NSLog(@"Mail Sent");
                break;
            case MFMailComposeResultFailed:
                NSLog(@"Mail Failed");
                break;
        }
    }
    
    [controller dismissViewControllerAnimated:YES completion:nil];
    
}


- (IBAction)actionSms:(id)sender {
    MFMessageComposeViewController *messageController = [[MFMessageComposeViewController alloc]init];
    
    messageController.messageComposeDelegate = self;
    
    [messageController setRecipients:@[@"+919545851097"]];
    
    [self presentViewController:messageController animated:YES completion:nil];
}

    -(void)messageComposeViewController:(MFMessageComposeViewController *)controller didFinishWithResult:(MessageComposeResult)result {
        
        switch (result) {
                
            case MessageComposeResultCancelled:
                NSLog(@"Mail Cancelled");
                break;
                
            case MessageComposeResultSent:
                NSLog(@"Mail Sent");
                break;
                
            case MessageComposeResultFailed:
                NSLog(@"Mail Failed");
                break;
                
        }
        
        [controller dismissViewControllerAnimated:YES completion:nil];
        
    }


@end
