#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QString>
#include <QFileDialog>

namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT
    
public:
    explicit MainWindow(QWidget *parent = 0);
    ~MainWindow();



public slots:
    void browseIn();
    void browseOu();
    void browseLa();
    void start();
    
private:
    Ui::MainWindow *ui;

    QString strin,strla,strou,str;

    void init();

    void openFile(QString& path);
};

#endif // MAINWINDOW_H
