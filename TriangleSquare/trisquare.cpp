#include "trisquare.h"
#include <QtMath>

TriSquare::TriSquare()
{

}

double TriSquare::square()
{
    return squareTri;
}

void TriSquare::geronsSquare(QString sideA, QString sideB, QString sideC)
{   double p;
    double a,b,c;
    a = sideA.toDouble();
    b = sideB.toDouble();
    c = sideC.toDouble();
    p = (a + b + c) / 2;
    squareTri = sqrt((p*(p - a)*(p - b)*(p - c)));
}

void TriSquare::peaksSquare(QString x11, QString x12, QString x13, QString y11, QString y12, QString y13)
{
    double x1,x2,x3,y1,y2,y3;
    x1 = x11.toDouble();
    x2 = x12.toDouble();
    x3 = x13.toDouble();
    y1 = y11.toDouble();
    y2 = y12.toDouble();
    y3 = y13.toDouble();
    squareTri = 0.5*abs((x2-x1)*(y3-y1)-(x3-x1)*(y2-y1));
}
