void main(){

int intValue=12;
double doubleValue =3.14 ;
String strValue = "Balu" ;
bool boolValue = false;

var osszeadas = intValue + doubleValue;
var osszeadas2 = osszeadas.toInt();

var kivonas = intValue - doubleValue; 
var kivonas2 = kivonas.toDouble();

var szorzas = intValue * doubleValue;
var szorzas2 = szorzas.toInt();

var osztas = intValue / doubleValue;
var osztas2 = osztas.toInt(); 

var maradekososztas = intValue ~/ doubleValue;
var maradekososztas2 = maradekososztas.toDouble();

print('Össze adás: ${intValue} + ${doubleValue} = $osszeadas');
print('Össze adás 2 : ${intValue} + ${doubleValue} = $osszeadas2');
print('');
print('Kivonás: ${intValue} - ${doubleValue} = $kivonas');
print('Kivonás 2 : ${intValue} - ${doubleValue} = $kivonas2');
print('');
print('szorzás: ${intValue} * ${doubleValue} = $szorzas');
print('szorzás 2 : ${intValue} * ${doubleValue} = $szorzas2');
print('');
print('osztás: ${intValue} / ${doubleValue} = $osztas');
print('osztás 2 : ${intValue} / ${doubleValue} = $osztas2');
print('');
print('maradékos osztás: ${intValue} ~/ ${doubleValue} = $maradekososztas');
print('maradékos osztás 2 : ${intValue} ~/ ${doubleValue} = $maradekososztas2');


print('Adat tipus kiírás');
print('intvalue = ${intValue.runtimeType}');
print('doubleValue = ${doubleValue.runtimeType}');
print('boolValue = ${boolValue.runtimeType}');

var boolResult =  true;

// double num1 = 10.01;
// int num2 = num1.toInt();

}


