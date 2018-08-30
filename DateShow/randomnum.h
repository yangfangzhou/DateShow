#ifndef RANDOMNUM_H
#define RANDOMNUM_H
#include <QObject>
#include <QTime>
#include <QDebug>

class randomnum : public QObject
{
    Q_OBJECT
    Q_ENUMS(MNAME)

public:
    Q_PROPERTY(QString radionum READ reRadionum WRITE wrRadionum NOTIFY radionumChanged)
    randomnum();
    void wrRadionum( const QString &value);

    enum MNAME{
        so = 1,
        la,
        xi,
        dao,
        re,
        mi,
        fa
    };
private:
    QString m_radionum;
    QString reRadionum() const;

signals:
    void randnChanged();
    void radionumChanged();
public slots:
    void plusradionum();
    void minusradionum();
};

#endif // RANDOMNUM_H
