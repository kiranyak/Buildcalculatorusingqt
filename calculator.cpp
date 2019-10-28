#include "calculator.h"
#include "ui_calculator.h"

double calcVal=0.0;
bool divTrigger= false;
bool multTrigger= false;
bool addTrigger= false;
bool subTrigger= false;

calculator::calculator(QWidget *parent):
     QMainWindow(parent)
    , ui(new Ui::calculator)
{
    ui->setupUi(this);

   ui->lineEdit->setText(QString::number(calcVal));
   QPushButton *numButtons[10];
   for (int i=0;i<10;i++){
       QString butName="Button"+ QString::number(i);
       numButtons[i]=calculator::findChild<QPushButton *>(butName);

   }



}

calculator::~calculator()
{
    delete ui;
}

