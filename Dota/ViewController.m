//
//  ViewController.m
//  Dota
//
//  Created by Carlitox on 18/08/14.
//  Copyright (c) 2014 LaMicroTienda. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIAlertView * alerta = [[UIAlertView Alloc] initWithTitle:@"Esdte es un titulo" message:@"Este sera el msj" delegate:self cancelButtonTitle:@"Cancelar" otherButtonTitles: nil];
                             
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
