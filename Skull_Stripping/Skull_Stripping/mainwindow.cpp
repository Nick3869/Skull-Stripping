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
    openFile(str);
    ui->inputt->setText(str);
    str = QString();
}

void MainWindow::browseOu()
{
    openFile(str);
    ui->outputt->setText(str);
    str = QString();
}

void MainWindow::browseLa()
{
    openFile(str);
    ui->labelt->setText(str);
    str = QString();
}

void MainWindow::start()
{
    strip();
}

void MainWindow::init()
{
    str = QString();
}

void MainWindow::openFile(QString& path)
{
    path = QFileDialog::getOpenFileName(this,tr("Choose a file"), path, tr("nrrd files (*nrrd);;gipl.gz files (*gipl.gz)"));
}
