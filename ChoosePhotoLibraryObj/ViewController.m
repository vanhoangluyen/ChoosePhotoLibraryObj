//
//  ViewController.m
//  ChoosePhotoLibraryObj
//
//  Created by HoangLuyen on 1/31/18.
//  Copyright © 2018 HoangLuyen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (nonatomic, strong) UIImagePickerController *imgPicker;
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
- (IBAction)selectImageFromPhotoLibrary:(UITapGestureRecognizer *)sender {
    self.imgPicker = [[UIImagePickerController alloc] init];
    self.imgPicker.delegate = self;
    self.imgPicker.allowsEditing = YES ;
    self.imgPicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    [self presentViewController:self.imgPicker animated:YES completion:nil];
}
-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info {
    self.imageView.image = info[UIImagePickerControllerEditedImage];
    [self.imgPicker dismissViewControllerAnimated:YES completion:nil];
}


@end
