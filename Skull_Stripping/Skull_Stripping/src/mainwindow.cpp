#include "mainwindow.h"
#include "ui_mainwindow.h"
#include "skullstrip.hpp"

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    init();
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::browseIn()
{
    openFile(strin);
    ui->inputt->setText(strin);
}

void MainWindow::browseOu()
{
    openFile(strou);
    ui->outputt->setText(strou);
}

void MainWindow::browseLa()
{
    openFile(strla);
    ui->labelt->setText(strla);
}

void MainWindow::start()
{
    strip(strin.toStdString().c_str(),strou.toStdString().c_str(),strla.toStdString().c_str());
}

void MainWindow::init()
{
    strin = QString();
    strla = QString();
    strou = QString("output.nrrd");
}

void MainWindow::openFile(QString& path)
{
    path = QFileDialog::getOpenFileName(this,tr("Choose a file"), path, tr("nrrd files (*nrrd);;gipl.gz files (*gipl.gz)"));
}
