/****************************************************************************
** Meta object code from reading C++ file 'randomnum.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.8.0)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../randomnum.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'randomnum.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.8.0. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_randomnum_t {
    QByteArrayData data[15];
    char stringdata0[104];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_randomnum_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_randomnum_t qt_meta_stringdata_randomnum = {
    {
QT_MOC_LITERAL(0, 0, 9), // "randomnum"
QT_MOC_LITERAL(1, 10, 12), // "randnChanged"
QT_MOC_LITERAL(2, 23, 0), // ""
QT_MOC_LITERAL(3, 24, 15), // "radionumChanged"
QT_MOC_LITERAL(4, 40, 12), // "plusradionum"
QT_MOC_LITERAL(5, 53, 13), // "minusradionum"
QT_MOC_LITERAL(6, 67, 8), // "radionum"
QT_MOC_LITERAL(7, 76, 5), // "MNAME"
QT_MOC_LITERAL(8, 82, 2), // "so"
QT_MOC_LITERAL(9, 85, 2), // "la"
QT_MOC_LITERAL(10, 88, 2), // "xi"
QT_MOC_LITERAL(11, 91, 3), // "dao"
QT_MOC_LITERAL(12, 95, 2), // "re"
QT_MOC_LITERAL(13, 98, 2), // "mi"
QT_MOC_LITERAL(14, 101, 2) // "fa"

    },
    "randomnum\0randnChanged\0\0radionumChanged\0"
    "plusradionum\0minusradionum\0radionum\0"
    "MNAME\0so\0la\0xi\0dao\0re\0mi\0fa"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_randomnum[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       4,   14, // methods
       1,   38, // properties
       1,   42, // enums/sets
       0,    0, // constructors
       0,       // flags
       2,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    0,   34,    2, 0x06 /* Public */,
       3,    0,   35,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
       4,    0,   36,    2, 0x0a /* Public */,
       5,    0,   37,    2, 0x0a /* Public */,

 // signals: parameters
    QMetaType::Void,
    QMetaType::Void,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,

 // properties: name, type, flags
       6, QMetaType::QString, 0x00495003,

 // properties: notify_signal_id
       1,

 // enums: name, flags, count, data
       7, 0x0,    7,   46,

 // enum data: key, value
       8, uint(randomnum::so),
       9, uint(randomnum::la),
      10, uint(randomnum::xi),
      11, uint(randomnum::dao),
      12, uint(randomnum::re),
      13, uint(randomnum::mi),
      14, uint(randomnum::fa),

       0        // eod
};

void randomnum::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        randomnum *_t = static_cast<randomnum *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->randnChanged(); break;
        case 1: _t->radionumChanged(); break;
        case 2: _t->plusradionum(); break;
        case 3: _t->minusradionum(); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        void **func = reinterpret_cast<void **>(_a[1]);
        {
            typedef void (randomnum::*_t)();
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&randomnum::randnChanged)) {
                *result = 0;
                return;
            }
        }
        {
            typedef void (randomnum::*_t)();
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&randomnum::radionumChanged)) {
                *result = 1;
                return;
            }
        }
    }
#ifndef QT_NO_PROPERTIES
    else if (_c == QMetaObject::ReadProperty) {
        randomnum *_t = static_cast<randomnum *>(_o);
        Q_UNUSED(_t)
        void *_v = _a[0];
        switch (_id) {
        case 0: *reinterpret_cast< QString*>(_v) = _t->reRadionum(); break;
        default: break;
        }
    } else if (_c == QMetaObject::WriteProperty) {
        randomnum *_t = static_cast<randomnum *>(_o);
        Q_UNUSED(_t)
        void *_v = _a[0];
        switch (_id) {
        case 0: _t->wrRadionum(*reinterpret_cast< QString*>(_v)); break;
        default: break;
        }
    } else if (_c == QMetaObject::ResetProperty) {
    }
#endif // QT_NO_PROPERTIES
    Q_UNUSED(_a);
}

const QMetaObject randomnum::staticMetaObject = {
    { &QObject::staticMetaObject, qt_meta_stringdata_randomnum.data,
      qt_meta_data_randomnum,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *randomnum::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *randomnum::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_randomnum.stringdata0))
        return static_cast<void*>(const_cast< randomnum*>(this));
    return QObject::qt_metacast(_clname);
}

int randomnum::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 4)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 4;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 4)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 4;
    }
#ifndef QT_NO_PROPERTIES
   else if (_c == QMetaObject::ReadProperty || _c == QMetaObject::WriteProperty
            || _c == QMetaObject::ResetProperty || _c == QMetaObject::RegisterPropertyMetaType) {
        qt_static_metacall(this, _c, _id, _a);
        _id -= 1;
    } else if (_c == QMetaObject::QueryPropertyDesignable) {
        _id -= 1;
    } else if (_c == QMetaObject::QueryPropertyScriptable) {
        _id -= 1;
    } else if (_c == QMetaObject::QueryPropertyStored) {
        _id -= 1;
    } else if (_c == QMetaObject::QueryPropertyEditable) {
        _id -= 1;
    } else if (_c == QMetaObject::QueryPropertyUser) {
        _id -= 1;
    }
#endif // QT_NO_PROPERTIES
    return _id;
}

// SIGNAL 0
void randomnum::randnChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 0, Q_NULLPTR);
}

// SIGNAL 1
void randomnum::radionumChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 1, Q_NULLPTR);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
