//
//  FRRViewController.m
//  LocalNotifications
//
//  Created by Fernando Rodríguez Romero on 2/17/12.
//  Copyright (c) 2012 AGBO Business Architecture, SL. All rights reserved.
//

#import "FRRViewController.h"

@implementation FRRViewController
@synthesize nameTextField;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setNameTextField:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)onSet:(id)sender {
    
    UILocalNotification *notification = [[UILocalNotification alloc] init];
    
    // debe de activarse dentro de 5 segundos
    notification.fireDate = [[NSDate alloc] initWithTimeIntervalSinceNow:10];
    
    // mensaje que saldrá en la alerta
    notification.alertBody = self.nameTextField.text;
    
    // sonido por defecto
    notification.soundName = UILocalNotificationDefaultSoundName;
    
    // título del botón
    notification.alertAction = @"Ahora te lo cuento";
    notification.hasAction = YES;
    
    
    // activa la notificación
    [[UIApplication sharedApplication] scheduleLocalNotification:notification];
}

- (IBAction)onCancelAll:(id)sender {
    
    // eliminamos todas las notificaciones pendientes
    [[UIApplication sharedApplication] cancelAllLocalNotifications];
    
}
@end
