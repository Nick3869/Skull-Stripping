CMAKE_MINIMUM_REQUIRED(VERSION 2.8)

PROJECT(SkullStripping)

SET(CMAKE_AUTOMOC OFF)

FIND_PACKAGE(ITK)
IF(ITK_FOUND)
  INCLUDE(${ITK_USE_FILE})
ELSE(ITK_FOUND)
  MESSAGE(FATAL_ERROR
	  "ITK not found. Please set ITK_DIR.")
ENDIF(ITK_FOUND)

FIND_PACKAGE(Qt4 REQUIRED)
INCLUDE(${QT_USE_FILE})

ADD_DEFINITIONS(${QT_DEFINITIONS})

INCLUDE_DIRECTORIES( ${CMAKE_CURRENT_BINARY_DIR} )

SET( sources main.cpp mainwindow.cpp )
SET( headers mainwindow.h )
SET( forms mainwindow.ui )
SET( RCC )

QT4_ADD_RESOURCES( RCC_srcs ${RCC})
QT4_WRAP_UI( forms_headers ${forms} )
QT4_WRAP_CPP( headers_moc ${headers} )

SET( OtherHeaders skullstrip.hpp )
SET( OtherSources skullstrip.cpp )

ADD_EXECUTABLE(SkullStripping ${sources} ${headers_moc} ${forms_headers} ${RCC_srcs} ${OtherHeaders} ${OtherSources})

TARGET_LINK_LIBRARIES(SkullStripping ${QT_LIBRARIES} ${ITK_LIBRARIES})
