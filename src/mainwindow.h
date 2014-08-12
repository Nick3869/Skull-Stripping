#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QString>
#include <QFileDialog>
#include <QMessageBox>
#include <QFile>

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
    void inputChanged();
    void labelChanged();
    void outputChanged();
    
private:
    Ui::MainWindow *ui;

    QString strin,strla,strou,str;

    void init();

    void openFile(QString& path);
};

#endif // MAINWINDOW_H
