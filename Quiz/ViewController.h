//
//  ViewController.h
//  Quiz
//
//  Created by João Marcos on 23/02/15.
//  Copyright (c) 2015 João Marcos. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    NSMutableArray *perguntas;
    NSMutableArray *respostas;
}

@property (weak, nonatomic) IBOutlet UILabel *pergunta;
@property (weak, nonatomic) IBOutlet UILabel *resposta;
@property (weak, nonatomic) IBOutlet UIImageView *imagem;

- (IBAction)mostrarPergunta:(id)sender;
- (IBAction)mostrarResposta:(id)sender;

@end

