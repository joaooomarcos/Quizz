//
//  ViewController.m
//  Quiz
//
//  Created by João Marcos on 23/02/15.
//  Copyright (c) 2015 João Marcos. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
//oi
@end

@implementation ViewController

@synthesize pergunta, resposta, imagem;

int i = 1;

- (void)viewDidLoad {
    [super viewDidLoad];
    perguntas = [[NSMutableArray alloc] initWithObjects:@"O que sou eu?",@"O que veio primeiro, ovo ou galinha?",@"Porque a vaca corre atrás do carro?", nil];
    respostas = [[NSMutableArray alloc] initWithObjects:@"iPhone",@"Galinha",@"Pra pegar o VACUO", nil];
    NSString *perg = [NSString stringWithFormat:@"%@", [perguntas objectAtIndex:0]];
    [pergunta setText:perg];
    [resposta setText:@"??????????"];
    [imagem setImage:nil];
    self.view.backgroundColor = [UIColor grayColor];
    pergunta.textColor = [UIColor whiteColor];
    resposta.textColor = [UIColor whiteColor];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)mostrarPergunta:(id)sender {
    NSString *perg = [NSString stringWithFormat:@"%@", [perguntas objectAtIndex:i]];
    [pergunta setText:perg];
    [resposta setText:@"??????????"];
    [imagem setImage:nil];
    
    if (i == 2)
        i = 0;
    else
        i++;
    
}

- (IBAction)mostrarResposta:(id)sender {
    if (i == 0)
        i = 2;
    else
        i--;
    
    NSString *resp = [NSString stringWithFormat:@"%@", [respostas objectAtIndex:i]];
    [resposta setText:resp];
    
    UIImage *_0 = [UIImage imageNamed:@"iphone.png"];
    UIImage *_1 = [UIImage imageNamed:@"galinha.png"];
    UIImage *_2 = [UIImage imageNamed:@"vacuo.png"];
    
    switch (i) {
        case 0:
            [imagem setImage:_0];
            break;
        case 1:
            [imagem setImage:_1];
            break;
        case 2:
            [imagem setImage:_2];
            break;
        default:
            [imagem setImage:nil];
            break;
    }
    
    if (i == 2)
        i = 0;
    else
        i++;
}
@end
