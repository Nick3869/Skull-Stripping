#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QWidget>
#include <QLabel>
#include <QPushButton>
#include <QTextEdit>
#include <QHBoxLayout>
#include <QVBoxLayout>

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
	void browseInput();
	void browseLabel();
	void browseOutput();
	void changedInput();
	void changedLabel();
	void changedOutput();
	void execute();

private:
    Ui::MainWindow *ui;

	QWidget *_centralWidget;
	QLabel *_input, *_label, *_output;
	QPushButton *_browseInput, *_browseLabel, *_browseOutput, *_execute;
	QTextEdit *_editInput, *_editLabel, *_editOutput;
	QHBoxLayout *_layoutInput, *_layoutLabel, *_layoutOutput;
	QVBoxLayout *_layout;

	QString _strinput, _strlabel, _stroutput;

	void createCommon();
    void createWidgets();
	void createSlots();

	void openFile(QString& path);
	void saveFile(QString& path);

};

#endif // MAINWINDOW_H
