#include "randomnum.h"

randomnum::randomnum()
{
    m_radionum = "88.8";
}

void randomnum::wrRadionum(const QString &value)
{
    m_radionum = value;
    emit radionumChanged();
}

QString randomnum::reRadionum() const
{
    return m_radionum;
}

void randomnum::plusradionum()
{
    double tmpradioNum;
    tmpradioNum = m_radionum.toDouble() + 0.1;
    m_radionum = QString::number(tmpradioNum,'f',1);
    emit radionumChanged();
}

void randomnum::minusradionum()
{
    double tmpradioNum;
    tmpradioNum = m_radionum.toDouble() - 0.1;
    m_radionum = QString::number(tmpradioNum,'f',1);
    emit radionumChanged();
}
