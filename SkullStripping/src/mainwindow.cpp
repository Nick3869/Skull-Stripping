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
    if (QFile(strin).exists() && QFile(strla).exists()
            && (strin.right(5)==".nrrd" || strin.right(8)==".gipl.gz")
            && (strou.right(5)==".nrrd" || strou.right(8)==".gipl.gz")
            && (strla.right(5)==".nrrd" || strla.right(8)==".gipl.gz"))
    {
        if (ui->filter->isChecked())
        {
            strip_filter(strin.toStdString().c_str(),strou.toStdString().c_str(),strla.toStdString().c_str());
            QMessageBox::information(this, "Complete", "File "+strou+" generated");
        }
        else
        {
            strip(strin.toStdString().c_str(),strou.toStdString().c_str(),strla.toStdString().c_str());
            QMessageBox::information(this, "Complete", "File "+strou+" generated");
        }
    }
    else
        QMessageBox::critical(this, "Error", "Incorrect filename");
}

void MainWindow::inputChanged()
{
    strin = ui->inputt->toPlainText();
}

void MainWindow::labelChanged()
{
    strla = ui->labelt->toPlainText();
}

void MainWindow::outputChanged()
{
    strou = ui->outputt->toPlainText();
}

void MainWindow::init()
{
    strin = QString();
    strla = QString();
    strou = QString("../test/output.nrrd");
}

void MainWindow::openFile(QString& path)
{
    path = QFileDialog::getOpenFileName(this,tr("Choose a file"), path, tr("nrrd files (*nrrd);;gipl.gz files (*gipl.gz)"));
}
