//
//  ViewController.m
//  Dota
//
//  Created by Carlitox on 18/08/14.
//  Copyright (c) 2014 LaMicroTienda. All rights reserved.
//

#import "BERViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIAlertView * alerta = [[UIAlertView alloc] initWithTitle:@"Introduce" message:@"Tu Usuario y Contraseña" delegate:self cancelButtonTitle:@"Aceptar" otherButtonTitles: nil];
    
    
    alerta.alertViewStyle = UIAlertViewStyleLoginAndPasswordInput;
    [alerta show];
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    
    if (buttonIndex==0) {
        NSLog(@"El Login es %@", [alertView textFieldAtIndex:0].text);
    }
    
    
    if (buttonIndex==0) {
        NSLog(@"La Contraseña es %@", [alertView textFieldAtIndex:1].text);
    }



    
    
    if ([[alertView textFieldAtIndex:0].text isEqualToString:@"PEPE"] && [[alertView textFieldAtIndex:1].text isEqualToString:@"123"]) {
        BERSiPuedesViewController * controller = [self.storyboard instantiateViewControllerWithIdentifier:@"SiPuedes"];
        controller.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
        [self presentViewController:controller animated:YES completion:nil];
        
    } else {
        
        
        BERSiPuedesViewController * controller = [self.storyboard instantiateViewControllerWithIdentifier:@"NoPuedes"];
        controller.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
        [self presentViewController:controller animated:YES completion:nil];
    }



}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
