#include "mainwindow.h"
#include "ui_mainwindow.h"
#include "strip.h"

#include <iostream>

#include <QFontMetrics>
#include <QFileDialog>
#include <QFile>

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);
	createCommon();
    createWidgets();
	createSlots();
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::createCommon()
{
	_strinput = QString();
	_strlabel = QString();
	_stroutput = QString("output.nrrd");
}

void MainWindow::createWidgets()
{
	// Initialisation

    _centralWidget = new QWidget(this);
	_input = new QLabel("Input file", this);
	_label = new QLabel("Label file", this);
	_output = new QLabel("Output file", this);
	_browseInput = new QPushButton("Browse", this);
	_browseLabel = new QPushButton("Browse", this);
	_browseOutput = new QPushButton("Browse", this);
	_execute = new QPushButton("Execute", this);
	_editInput = new QTextEdit(this);
	_editLabel = new QTextEdit(this);
	_editOutput = new QTextEdit(_stroutput, this);
	_layoutInput = new QHBoxLayout;
	_layoutLabel = new QHBoxLayout;
	_layoutOutput = new QHBoxLayout;
	_layout = new QVBoxLayout;

	// Central Widget

    setCentralWidget(_centralWidget);

	// Text edit maximum size
	
	_editInput->setMaximumHeight(2*QFontMetrics(_editInput->currentFont()).height());
	_editLabel->setMaximumHeight(2*QFontMetrics(_editLabel->currentFont()).height());
	_editOutput->setMaximumHeight(2*QFontMetrics(_editOutput->currentFont()).height());

	// Enable tab changing focus in edit text
	
	_editInput->setTabChangesFocus(true);
	_editLabel->setTabChangesFocus(true);
	_editOutput->setTabChangesFocus(true);

	// Layout setting
	
	_layoutInput->addWidget(_input);
	_layoutInput->addWidget(_editInput);
	_layoutInput->addWidget(_browseInput);
	_layoutLabel->addWidget(_label);
	_layoutLabel->addWidget(_editLabel);
	_layoutLabel->addWidget(_browseLabel);
	_layoutOutput->addWidget(_output);
	_layoutOutput->addWidget(_editOutput);
	_layoutOutput->addWidget(_browseOutput);

	_layout->addLayout(_layoutInput);
	_layout->addLayout(_layoutLabel);
	_layout->addLayout(_layoutOutput);
	_layout->addWidget(_execute);

	_centralWidget->setLayout(_layout);
}

void MainWindow::createSlots()
{
	// Connecting buttons

	connect(_browseInput, SIGNAL(clicked()), SLOT(browseInput()));
	connect(_browseLabel, SIGNAL(clicked()), SLOT(browseLabel()));
	connect(_browseOutput, SIGNAL(clicked()), SLOT(browseOutput()));
	connect(_execute, SIGNAL(clicked()), SLOT(execute()));

	// Connecting text changes
	
	connect(_editInput, SIGNAL(textChanged()), SLOT(changedInput()));
	connect(_editLabel, SIGNAL(textChanged()), SLOT(changedLabel()));
	connect(_editOutput, SIGNAL(textChanged()), SLOT(changedOutput()));
}

void MainWindow::browseInput()
{
	openFile(_strinput);
	_editInput->setText(_strinput);
}

void MainWindow::browseLabel()
{
	openFile(_strlabel);
	_editLabel->setText(_strlabel);
}

void MainWindow::browseOutput()
{
	saveFile(_stroutput);
	_editOutput->setText(_stroutput);
}

void MainWindow::openFile(QString& path)
{
	path = QFileDialog::getOpenFileName(this, tr("Choose a file"), path, tr("nrrd fils (*nrrd)"));
}

void MainWindow::saveFile(QString& path)
{
	path = QFileDialog::getSaveFileName(this, tr("Create a file"), path, tr("nrrd fils (*nrrd)"));
}

void MainWindow::execute()
{
	if(QFile(_strinput).exists() && QFile(_strlabel).exists() 
			&& QString(".nrrd")==_strinput.rightRef(5)
			&& QString(".nrrd")==_strlabel.rightRef(5)
			&& QString(".nrrd")==_stroutput.rightRef(5))
		strip(_strinput.toStdString().c_str(), _strlabel.toStdString().c_str(), _stroutput.toStdString().c_str());
}

void MainWindow::changedInput()
{
	_strinput = _editInput->toPlainText();
}

void MainWindow::changedLabel()
{
	_strlabel = _editLabel->toPlainText();
}

void MainWindow::changedOutput()
{
	_stroutput = _editOutput->toPlainText();
}
