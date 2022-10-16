#ifndef TRISQUARE_H
#define TRISQUARE_H

#include <QObject>

class TriSquare : public QObject
{
    Q_OBJECT
    Q_PROPERTY(double square READ square);
    Q_INVOKABLE void geronsSquare(QString sideA, QString sideB, QString sideC);
    Q_INVOKABLE void peaksSquare(QString x1, QString x2,QString x3,QString y1,QString y2,QString y3);

public:
    explicit TriSquare();
    double squareTri;
    double square();
private:


};

#endif // TRISQUARE_H
