//
//  UpdateViewController.h
//  AddressBook
//
//  Created by scjy on 15/12/20.
//  Copyright © 2015年 张鹏飞. All rights reserved.
//

#import <UIKit/UIKit.h>
//定义代理
@protocol UpdateDelegate <NSObject>

-(void)getTextName:(NSString *)name andGender:(NSString *)gender  andAge:(NSString *)age andTel:(NSString *)tel andHobby:(NSString *)hobby andimageName:(NSString *)imageName;

@end




@interface UpdateViewController : UIViewController<UITextFieldDelegate,UIImagePickerControllerDelegate,UINavigationControllerDelegate>

@property(nonatomic, assign) id<UpdateDelegate>delegate;

@property(nonatomic,retain) UITextField *nameKuang;
@property(nonatomic,retain) UITextField *genderKuang;
@property(nonatomic,retain) UITextField *agePassKuang;
@property(nonatomic,retain) UITextField *phoneNumKuang;
@property(nonatomic,retain) UITextField *remarksKuang;
@end
