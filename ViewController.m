#import "ViewController.h"

@interface ViewController ()

@property NSString *categoria;
@property UILabel *resultado;

@end


@implementation ViewController


- (void)viewDidLoad {

    [super viewDidLoad];


    UIButton *animal =
    [UIButton buttonWithType:UIButtonTypeSystem];


    animal.frame =
    CGRectMake(80,100,200,40);


    [animal setTitle:@"Animales"
            forState:UIControlStateNormal];


    [animal addTarget:self
               action:@selector(seleccionarAnimal)
     forControlEvents:UIControlEventTouchUpInside];


    [self.view addSubview:animal];



    UIButton *boton =
    [UIButton buttonWithType:UIButtonTypeSystem];


    boton.frame =
    CGRectMake(80,200,200,40);


    [boton setTitle:@"Mostrar dato"
           forState:UIControlStateNormal];


    [boton addTarget:self
              action:@selector(mostrarDato)
    forControlEvents:UIControlEventTouchUpInside];


    [self.view addSubview:boton];



    self.resultado =
    [[UILabel alloc]
     initWithFrame:CGRectMake(40,300,300,100)];


    self.resultado.numberOfLines = 5;


    [self.view addSubview:self.resultado];

}



-(void)seleccionarAnimal {

    self.categoria = @"Animales";

}



-(void)mostrarDato {


    NSArray *datos =
    @[
      @"Los pulpos tienen tres corazones.",
      @"Los delfines pueden dormir con una parte de su cerebro activa.",
      @"Los elefantes tienen una gran memoria."
      ];


    int numero =
    arc4random_uniform(3);



    self.resultado.text =
    datos[numero];

}



@end