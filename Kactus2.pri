# ----------------------------------------------------
# This file is generated by the Qt Visual Studio Add-in.
# ------------------------------------------------------

# This is a reminder that you are using a generated .pro file.
# Remove it when you are finished editing this file.
message("You are running qmake on a generated .pro file. This may not work!")


HEADERS += ./designwidget/BusInterfaceDialog.h \
    ./mainwindow/DeleteWorkspaceDialog.h \
    ./mainwindow/NewWorkspaceDialog.h \
    ./mainwindow/SplashScreen.h \
    ./resource.h \
    ./version.h \
    ./common/ColumnTypes.h \
    ./common/CSourceWriter.h \
    ./common/diagramgrid.h \
    ./common/DiagramUtil.h \
    ./common/DrawMode.h \
    ./common/GenericEditProvider.h \
    ./common/IDFactory.h \
    ./common/IEditProvider.h \
    ./common/KactusAttribute.h \
    ./common/TextEditProvider.h \
    ./common/utils.h \
    ./common/dialogs/createVLNVDialog/createvlnvdialog.h \
    ./common/dialogs/createConfigurationDialog/createconfigurationdialog.h \
    ./common/dialogs/renameDialog/renamedialog.h \
    ./common/dialogs/attributeDialog/attributedialog.h \
    ./common/dialogs/comboSelector/comboselector.h \
    ./common/dialogs/propertyPageDialog/PropertyPageDialog.h \
    ./common/dialogs/propertyPageDialog/PropertyPageView.h \
    ./common/dialogs/newObjectDialog/newobjectdialog.h \
    ./common/dialogs/ObjectRemoveDialog/objectremovedialog.h \
    ./common/dialogs/ObjectRemoveDialog/objectremovemodel.h \
    ./common/dialogs/listSelectDialog/ListSelectDialog.h \
    ./common/widgets/attributeBox/attributebox.h \
    ./common/widgets/attributeBox/attributemodel.h \
    ./common/widgets/libraryRefGenerator/libraryrefgenerator.h \
    ./common/widgets/listManager/dirlistmanager.h \
    ./common/widgets/listManager/dirlistmanagerdelegate.h \
    ./common/widgets/listManager/filelistmanager.h \
    ./common/widgets/listManager/listmanager.h \
    ./common/widgets/listManager/listmanagermodel.h \
    ./common/widgets/nameGroupBox/namegroupbox.h \
    ./common/widgets/vlnvGenerator/vlnvgenerator.h \
    ./common/widgets/assistedLineEdit/AssistedLineEdit.h \
    ./common/widgets/assistedLineEdit/ILineContentMatcher.h \
    ./common/widgets/assistedLineEdit/LineContentAssistWidget.h \
    ./common/widgets/vlnvDisplayer/vlnvdisplayer.h \
    ./common/widgets/hexSpinBox/hexspinbox.h \
    ./common/widgets/booleanComboBox/booleancombobox.h \
    ./common/widgets/vectorEditor/vectoreditor.h \
    ./common/widgets/tabDocument/TabDocument.h \
    ./common/widgets/assistedTextEdit/AssistedTextEdit.h \
    ./common/widgets/assistedTextEdit/HighlightStyleDesc.h \
    ./common/widgets/assistedTextEdit/ITextContentMatcher.h \
    ./common/widgets/assistedTextEdit/TextContentAssistWidget.h \
    ./common/widgets/assistedTextEdit/ToolTipHintWidget.h \
    ./common/widgets/vlnvEditor/VLNVContentMatcher.h \
    ./common/widgets/vlnvEditor/VLNVDataTree.h \
    ./common/widgets/vlnvEditor/vlnveditor.h \
    ./common/widgets/colorBox/ColorBox.h \
    ./common/widgets/kactusAttributeEditor/KactusAttributeEditor.h \
    ./common/widgets/componentPreviewBox/ComponentPreviewBox.h \
    ./common/widgets/dirLineEdit/dirlineedit.h \
    ./common/widgets/LibraryPathSelector/librarypathselector.h \
    ./common/widgets/LibraryPathEditor/librarypatheditor.h \
    ./common/widgets/ScanProgressWidget/scanprogresswidget.h \
    ./common/widgets/ParameterEditor/parametereditor.h \
    ./common/widgets/ParameterGroupBox/parametergroupbox.h \
    ./common/widgets/NumberLineEdit/numberlineedit.h \
    ./common/validators/nameValidator/namevalidator.h \
    ./common/validators/vhdlNameValidator/vhdlnamevalidator.h \
    ./common/validators/LibraryPathValidator/librarypathvalidator.h \
    ./common/layouts/HStackedLayout.h \
    ./common/layouts/VCollisionLayout.h \
    ./common/layouts/VStackedLayout.h \
    ./common/graphicsItems/ComponentItem.h \
    ./common/graphicsItems/GraphicsRectButton.h \
    ./common/delegates/ComboDelegate/combodelegate.h \
    ./common/delegates/LineEditDelegate/lineeditdelegate.h \
    ./common/views/EditableTableView/editabletableview.h \
    ./common/views/EditableListView/editablelistview.h \
    ./common/models/ParameterModel/parametersmodel.h \
    ./designwidget/AdHocEnabled.h \
    ./designwidget/blockdiagram.h \
    ./designwidget/designwidget.h \
    ./designwidget/DiagramAddCommands.h \
    ./designwidget/DiagramAdHocInterface.h \
    ./designwidget/DiagramAdHocPort.h \
    ./designwidget/DiagramChangeCommands.h \
    ./designwidget/diagramcomponent.h \
    ./designwidget/DiagramConnectionEndpoint.h \
    ./designwidget/DiagramDeleteCommands.h \
    ./designwidget/diagraminterconnection.h \
    ./designwidget/diagraminterface.h \
    ./designwidget/DiagramMoveCommands.h \
    ./designwidget/DiagramOffPageConnector.h \
    ./designwidget/diagramport.h \
    ./designwidget/PortmapDialog.h \
    ./designwidget/SelectItemTypeDialog.h \
    ./designwidget/columnview/ColumnEditDialog.h \
    ./designwidget/columnview/DiagramColumn.h \
    ./designwidget/columnview/DiagramColumnLayout.h \
    ./exceptions/invalid_file.h \
    ./exceptions/vhdl_error.h \
    ./exceptions/write_error.h \
    ./IPXactWrapper/ComponentEditor/componenttreeitem.h \
    ./IPXactWrapper/ComponentEditor/componenttreemodel.h \
    ./IPXactWrapper/ComponentEditor/componenttreenavigator.h \
    ./IPXactWrapper/ComponentEditor/componenttreeview.h \
    ./IPXactWrapper/ComponentEditor/ipxactcomponenteditor.h \
    ./IPXactWrapper/ComponentEditor/itemeditor.h \
    ./IPXactWrapper/ComponentEditor/fileSet/filebuildcommand.h \
    ./IPXactWrapper/ComponentEditor/fileSet/filebuildereditor.h \
    ./IPXactWrapper/ComponentEditor/fileSet/filedefinemodel.h \
    ./IPXactWrapper/ComponentEditor/fileSet/filedefineview.h \
    ./IPXactWrapper/ComponentEditor/fileSet/fileeditor.h \
    ./IPXactWrapper/ComponentEditor/fileSet/fileextratab.h \
    ./IPXactWrapper/ComponentEditor/fileSet/filegeneraleditor.h \
    ./IPXactWrapper/ComponentEditor/fileSet/filegeneraltab.h \
    ./IPXactWrapper/ComponentEditor/fileSet/filenameeditor.h \
    ./IPXactWrapper/ComponentEditor/fileSet/filenamelineedit.h \
    ./IPXactWrapper/ComponentEditor/fileSet/fileseteditor.h \
    ./IPXactWrapper/ComponentEditor/fileSet/filetypeeditor.h \
    ./IPXactWrapper/ComponentEditor/fileSet/filetypeeditordelegate.h \
    ./IPXactWrapper/ComponentEditor/fileSet/groupmanager.h \
    ./IPXactWrapper/ComponentEditor/fileSet/groupmanagerdelegate.h \
    ./IPXactWrapper/ComponentEditor/fileSet/targetnameedit.h \
    ./IPXactWrapper/ComponentEditor/general/desceditor.h \
    ./IPXactWrapper/ComponentEditor/general/generaleditor.h \
    ./IPXactWrapper/ComponentEditor/modelParameters/modelparametereditor.h \
    ./IPXactWrapper/ComponentEditor/modelParameters/modelparametermodel.h \
    ./IPXactWrapper/ComponentEditor/modelParameters/usagedelegate.h \
    ./IPXactWrapper/ComponentEditor/ports/portsdelegate.h \
    ./IPXactWrapper/ComponentEditor/ports/portseditor.h \
    ./IPXactWrapper/ComponentEditor/ports/portsmodel.h \
    ./IPXactWrapper/ComponentEditor/parameters/parameterseditor.h \
    ./IPXactWrapper/ComponentEditor/otherClockDrivers/clockdriversdelegate.h \
    ./IPXactWrapper/ComponentEditor/otherClockDrivers/otherclockdriverseditor.h \
    ./IPXactWrapper/ComponentEditor/otherClockDrivers/otherclockdriversmodel.h \
    ./IPXactWrapper/ComponentEditor/channels/channeleditor.h \
    ./IPXactWrapper/ComponentEditor/channels/channelinterfacemanager.h \
    ./IPXactWrapper/ComponentEditor/channels/channelinterfacemanagerdelegate.h \
    ./IPXactWrapper/ComponentEditor/channels/channelinterfacemodel.h \
    ./IPXactWrapper/ComponentEditor/busInterfaces/ApiCreateDialog.h \
    ./IPXactWrapper/ComponentEditor/busInterfaces/apieditor.h \
    ./IPXactWrapper/ComponentEditor/busInterfaces/busifgeneraldetails.h \
    ./IPXactWrapper/ComponentEditor/busInterfaces/busifgeneraltab.h \
    ./IPXactWrapper/ComponentEditor/busInterfaces/busifinterfacemaster.h \
    ./IPXactWrapper/ComponentEditor/busInterfaces/busifinterfacemodeeditor.h \
    ./IPXactWrapper/ComponentEditor/busInterfaces/busifinterfacemodetab.h \
    ./IPXactWrapper/ComponentEditor/busInterfaces/busifinterfacemonitor.h \
    ./IPXactWrapper/ComponentEditor/busInterfaces/busifinterfacemslave.h \
    ./IPXactWrapper/ComponentEditor/busInterfaces/busifinterfaceslave.h \
    ./IPXactWrapper/ComponentEditor/busInterfaces/busifinterfacesystem.h \
    ./IPXactWrapper/ComponentEditor/busInterfaces/busifparameterstab.h \
    ./IPXactWrapper/ComponentEditor/busInterfaces/busifportmaptab.h \
    ./IPXactWrapper/ComponentEditor/busInterfaces/businterfaceeditor.h \
    ./IPXactWrapper/ComponentEditor/busInterfaces/portmaps/logicallistmodel.h \
    ./IPXactWrapper/ComponentEditor/busInterfaces/portmaps/logicallistview.h \
    ./IPXactWrapper/ComponentEditor/busInterfaces/portmaps/physlistmodel.h \
    ./IPXactWrapper/ComponentEditor/busInterfaces/portmaps/physlistview.h \
    ./IPXactWrapper/ComponentEditor/busInterfaces/portmaps/portlistmodel.h \
    ./IPXactWrapper/ComponentEditor/busInterfaces/portmaps/portlistview.h \
    ./IPXactWrapper/ComponentEditor/busInterfaces/portmaps/portmapsdelegate.h \
    ./IPXactWrapper/ComponentEditor/busInterfaces/portmaps/portmapsmodel.h \
    ./IPXactWrapper/ComponentEditor/busInterfaces/portmaps/portmapsview.h \
    ./IPXactWrapper/ComponentEditor/views/envidentifiereditor.h \
    ./IPXactWrapper/ComponentEditor/views/envidentifiersdelegate.h \
    ./IPXactWrapper/ComponentEditor/views/envidentifiersmodel.h \
    ./IPXactWrapper/ComponentEditor/views/filesetrefeditor.h \
    ./IPXactWrapper/ComponentEditor/views/filesetrefeditordelegate.h \
    ./IPXactWrapper/ComponentEditor/views/filesetrefmodel.h \
    ./IPXactWrapper/ComponentEditor/views/flatviewgeneraltab.h \
    ./IPXactWrapper/ComponentEditor/views/flatviewparameterstab.h \
    ./IPXactWrapper/ComponentEditor/views/hierarchyrefwidget.h \
    ./IPXactWrapper/ComponentEditor/views/vieweditor.h \
    ./IPXactWrapper/ComponentEditor/fileBuilders/filebuildersdelegate.h \
    ./IPXactWrapper/ComponentEditor/fileBuilders/filebuilderseditor.h \
    ./IPXactWrapper/ComponentEditor/fileBuilders/filebuildersmodel.h \
    ./IPXactWrapper/ComponentEditor/endpoints/EndpointDelegate.h \
    ./IPXactWrapper/ComponentEditor/endpoints/EndpointEditor.h \
    ./IPXactWrapper/ComponentEditor/endpoints/EndpointModel.h \
    ./IPXactWrapper/ComponentEditor/endpoints/ImportEndpointsDialog.h \
    ./IPXactWrapper/ComponentEditor/software/SoftwareMappingsEditor.h \
    ./IPXactWrapper/ComponentEditor/addressSpaces/addressspaceeditor.h \
    ./IPXactWrapper/ComponentEditor/addressSpaces/addressspacegeneraleditor.h \
    ./IPXactWrapper/ComponentEditor/addressSpaces/addressspaceparameterseditor.h \
    ./IPXactWrapper/ComponentEditor/addressSpaces/addressspacevisualizer.h \
    ./IPXactWrapper/ComponentEditor/addressSpaces/segmenteditor.h \
    ./IPXactWrapper/ComponentEditor/addressSpaces/segmentproxy.h \
    ./IPXactWrapper/ComponentEditor/addressSpaces/segmentsmodel.h \
    ./IPXactWrapper/ComponentEditor/cpus/addressspacerefdelegate.h \
    ./IPXactWrapper/ComponentEditor/cpus/addressspacerefeditor.h \
    ./IPXactWrapper/ComponentEditor/cpus/addressspacerefmodel.h \
    ./IPXactWrapper/ComponentEditor/cpus/cpueditor.h \
    ./IPXactWrapper/BusEditor/absdefgroup.h \
    ./IPXactWrapper/BusEditor/busdefgroup.h \
    ./IPXactWrapper/BusEditor/buseditor.h \
    ./IPXactWrapper/BusEditor/busportsdelegate.h \
    ./IPXactWrapper/BusEditor/busportsmodel.h \
    ./IPXactWrapper/BusEditor/busportsview.h \
    ./IPXactWrapper/BusEditor/impexpgroup.h \
    ./IPXactWrapper/BusEditor/renamegroup.h \
    ./IPXactWrapper/BusEditor/signalsgroup.h \
    ./IPXactWrapper/SWDesignEditor/SWDesignEditor.h \
    ./LibraryManager/ipxactitem.h \
    ./LibraryManager/ipxactmodel.h \
    ./LibraryManager/ipxactwidget.h \
    ./LibraryManager/librarydata.h \
    ./LibraryManager/libraryhandler.h \
    ./LibraryManager/libraryinterface.h \
    ./LibraryManager/libraryitem.h \
    ./LibraryManager/librarysearchfilter.h \
    ./LibraryManager/librarysearchwidget.h \
    ./LibraryManager/librarytableview.h \
    ./LibraryManager/librarytreefilter.h \
    ./LibraryManager/librarytreemodel.h \
    ./LibraryManager/librarytreeview.h \
    ./LibraryManager/librarytreewidget.h \
    ./LibraryManager/LibraryUtils.h \
    ./LibraryManager/typebox.h \
    ./LibraryManager/vlnv.h \
    ./LibraryManager/vlnvbox.h \
    ./LibraryManager/HierarchyView/hierarchyfilter.h \
    ./LibraryManager/HierarchyView/hierarchyitem.h \
    ./LibraryManager/HierarchyView/hierarchymodel.h \
    ./LibraryManager/HierarchyView/hierarchyview.h \
    ./LibraryManager/HierarchyView/hierarchywidget.h \
    ./LibraryManager/VLNVDialer/dialerwidget.h \
    ./LibraryManager/VLNVDialer/filterwidget.h \
    ./LibraryManager/VLNVDialer/firmnessgroup.h \
    ./LibraryManager/VLNVDialer/hierarchygroup.h \
    ./LibraryManager/VLNVDialer/implementationgroup.h \
    ./LibraryManager/VLNVDialer/typegroup.h \
    ./LibraryManager/VLNVDialer/vlnvdialer.h \
    ./models/abstractiondefinition.h \
    ./models/addressblock.h \
    ./models/addressspace.h \
    ./models/alternateregister.h \
    ./models/bank.h \
    ./models/buildcommand.h \
    ./models/buildmodel.h \
    ./models/busdefinition.h \
    ./models/businterface.h \
    ./models/channel.h \
    ./models/choice.h \
    ./models/component.h \
    ./models/componentgenerator.h \
    ./models/cpu.h \
    ./models/design.h \
    ./models/designconfabstractor.h \
    ./models/designconfiguration.h \
    ./models/enumeratedvalue.h \
    ./models/field.h \
    ./models/file.h \
    ./models/filebuilder.h \
    ./models/fileset.h \
    ./models/function.h \
    ./models/generaldeclarations.h \
    ./models/generator.h \
    ./models/generatorchain.h \
    ./models/generatorchainselector.h \
    ./models/librarycomponent.h \
    ./models/masterinterface.h \
    ./models/memoryblockdata.h \
    ./models/memorymap.h \
    ./models/memorymapitem.h \
    ./models/mirroredslaveinterface.h \
    ./models/model.h \
    ./models/modelparameter.h \
    ./models/otherclockdriver.h \
    ./models/parameter.h \
    ./models/port.h \
    ./models/portabstraction.h \
    ./models/register.h \
    ./models/registerdefinition.h \
    ./models/registerfile.h \
    ./models/registermodel.h \
    ./models/remapport.h \
    ./models/remapstate.h \
    ./models/reset.h \
    ./models/segment.h \
    ./models/servicetypedef.h \
    ./models/slaveinterface.h \
    ./models/subspacemap.h \
    ./models/transactional.h \
    ./models/transactionalabstraction.h \
    ./models/vector.h \
    ./models/view.h \
    ./models/wire.h \
    ./models/wireabstraction.h \
    ./mainwindow/mainwindow.h \
    ./mainwindow/newbuspage.h \
    ./mainwindow/NewComponentPage.h \
    ./mainwindow/NewDesignPage.h \
    ./mainwindow/NewSWComponentPage.h \
    ./mainwindow/NewSWDesignPage.h \
    ./mainwindow/NewSystemPage.h \
    ./modelsimGenerator/modelsimgenerator.h \
    ./quartusGenerator/quartusgenerator.h \
    ./vhdlGenerator/vhdlcomponentdeclaration.h \
    ./vhdlGenerator/vhdlcomponentinstance.h \
    ./vhdlGenerator/vhdlconnectionendpoint.h \
    ./vhdlGenerator/vhdlgeneral.h \
    ./vhdlGenerator/vhdlgenerator2.h \
    ./vhdlGenerator/vhdlgeneric.h \
    ./vhdlGenerator/vhdlobject.h \
    ./vhdlGenerator/vhdlport.h \
    ./vhdlGenerator/vhdlportmap.h \
    ./vhdlGenerator/vhdlportsorter.h \
    ./vhdlGenerator/vhdlsignal.h \
    ./PropertyWidget/messageconsole.h \
    ./MCAPI/MCAPIContentMatcher.h \
    ./MCAPI/MCAPIDesignerTypes.h \
    ./MCAPI/MCAPIFunctionDesc.h \
    ./MCAPI/MCAPIFunctionSet.h \
    ./MCAPI/MCAPIHighlighter.h \
    ./MCAPI/MCAPISourceWidget.h \
    ./MCAPI/MCAPITextEdit.h \
    ./EndpointDesign/ApplicationItem.h \
    ./EndpointDesign/AppPlaceholderItem.h \
    ./EndpointDesign/EndpointConnection.h \
    ./EndpointDesign/EndpointDesignDiagram.h \
    ./EndpointDesign/EndpointDesignWidget.h \
    ./EndpointDesign/EndpointEditDialog.h \
    ./EndpointDesign/EndpointItem.h \
    ./EndpointDesign/EndpointStack.h \
    ./EndpointDesign/MappingComponentItem.h \
    ./EndpointDesign/PlatformComponentItem.h \
    ./EndpointDesign/PlatformPlaceholderItem.h \
    ./EndpointDesign/ProgramEntityItem.h \
    ./EndpointDesign/SWComponentItem.h \
    ./EndpointDesign/SystemAddCommands.h \
    ./EndpointDesign/SystemChangeCommands.h \
    ./EndpointDesign/SystemColumn.h \
    ./EndpointDesign/SystemColumnLayout.h \
    ./EndpointDesign/SystemDeleteCommands.h \
    ./EndpointDesign/SystemMoveCommands.h \
    ./settings/CodeEditorSettingsPage.h \
    ./settings/GeneralSettingsPage.h \
    ./settings/LibrarySettingsPage.h \
    ./settings/SettingsDialog.h \
    ./ComponentInstanceEditor/componentinstanceeditor.h \
    ./ComponentInstanceEditor/componentinstancemodel.h \
    ./ComponentInstanceEditor/configurableelementdelegate.h \
    ./ComponentInstanceEditor/configurableelementeditor.h \
    ./ConfigurationEditor/activeviewdelegate.h \
    ./ConfigurationEditor/activevieweditor.h \
    ./ConfigurationEditor/activeviewmodel.h \
    ./ConfigurationEditor/configurationeditor.h \
    ./DocumentGenerator/documentgenerator.h \
    ./InterfaceEditor/interfaceeditor.h \
    ./ConnectionEditor/AdHocBoundsDelegate.h \
    ./ConnectionEditor/AdHocBoundsModel.h \
    ./ConnectionEditor/connectioneditor.h \
    ./GCF/Common.h \
    ./GCF/MenuStrip.h \
    ./AdHocEditor/AdHocDelegate.h \
    ./AdHocEditor/AdHocEditor.h \
    ./AdHocEditor/AdHocModel.h \
    ./common/widgets/tabWidgetEx/TabWidgetEx.h
SOURCES += ./common/CSourceWriter.cpp \
    ./common/GenericEditProvider.cpp \
    ./common/IDFactory.cpp \
    ./common/KactusAttribute.cpp \
    ./common/TextEditProvider.cpp \
    ./common/utils.cpp \
    ./common/dialogs/attributeDialog/attributedialog.cpp \
    ./common/dialogs/comboSelector/comboselector.cpp \
    ./common/dialogs/createVLNVDialog/createvlnvdialog.cpp \
    ./common/dialogs/renameDialog/renamedialog.cpp \
    ./common/dialogs/propertyPageDialog/PropertyPageDialog.cpp \
    ./common/dialogs/propertyPageDialog/PropertyPageView.cpp \
    ./common/dialogs/newObjectDialog/newobjectdialog.cpp \
    ./common/dialogs/ObjectRemoveDialog/objectremovedialog.cpp \
    ./common/dialogs/ObjectRemoveDialog/objectremovemodel.cpp \
    ./common/dialogs/createConfigurationDialog/createconfigurationdialog.cpp \
    ./common/dialogs/listSelectDialog/ListSelectDialog.cpp \
    ./common/validators/nameValidator/namevalidator.cpp \
    ./common/validators/vhdlNameValidator/vhdlnamevalidator.cpp \
    ./common/validators/LibraryPathValidator/librarypathvalidator.cpp \
    ./common/widgets/assistedLineEdit/AssistedLineEdit.cpp \
    ./common/widgets/assistedLineEdit/LineContentAssistWidget.cpp \
    ./common/widgets/attributeBox/attributebox.cpp \
    ./common/widgets/attributeBox/attributemodel.cpp \
    ./common/widgets/hexSpinBox/hexspinbox.cpp \
    ./common/widgets/libraryRefGenerator/libraryrefgenerator.cpp \
    ./common/widgets/listManager/dirlistmanager.cpp \
    ./common/widgets/listManager/dirlistmanagerdelegate.cpp \
    ./common/widgets/listManager/filelistmanager.cpp \
    ./common/widgets/listManager/listmanager.cpp \
    ./common/widgets/listManager/listmanagermodel.cpp \
    ./common/widgets/nameGroupBox/namegroupbox.cpp \
    ./common/widgets/vectorEditor/vectoreditor.cpp \
    ./common/widgets/vlnvDisplayer/vlnvdisplayer.cpp \
    ./common/widgets/vlnvGenerator/vlnvgenerator.cpp \
    ./common/widgets/assistedTextEdit/AssistedTextEdit.cpp \
    ./common/widgets/assistedTextEdit/TextContentAssistWidget.cpp \
    ./common/widgets/assistedTextEdit/ToolTipHintWidget.cpp \
    ./common/widgets/vlnvEditor/VLNVContentMatcher.cpp \
    ./common/widgets/vlnvEditor/VLNVDataTree.cpp \
    ./common/widgets/vlnvEditor/vlnveditor.cpp \
    ./common/widgets/colorBox/ColorBox.cpp \
    ./common/widgets/kactusAttributeEditor/KactusAttributeEditor.cpp \
    ./common/widgets/componentPreviewBox/ComponentPreviewBox.cpp \
    ./common/widgets/tabDocument/TabDocument.cpp \
    ./common/widgets/dirLineEdit/dirlineedit.cpp \
    ./common/widgets/booleanComboBox/booleancombobox.cpp \
    ./common/widgets/LibraryPathSelector/librarypathselector.cpp \
    ./common/widgets/LibraryPathEditor/librarypatheditor.cpp \
    ./common/widgets/ScanProgressWidget/scanprogresswidget.cpp \
    ./common/widgets/ParameterEditor/parametereditor.cpp \
    ./common/widgets/ParameterGroupBox/parametergroupbox.cpp \
    ./common/widgets/NumberLineEdit/numberlineedit.cpp \
    ./common/graphicsItems/ComponentItem.cpp \
    ./common/graphicsItems/GraphicsRectButton.cpp \
    ./common/delegates/ComboDelegate/combodelegate.cpp \
    ./common/delegates/LineEditDelegate/lineeditdelegate.cpp \
    ./common/views/EditableTableView/editabletableview.cpp \
    ./common/views/EditableListView/editablelistview.cpp \
    ./common/models/ParameterModel/parametersmodel.cpp \
    ./designwidget/AdHocEnabled.cpp \
    ./designwidget/blockdiagram.cpp \
    ./designwidget/BusInterfaceDialog.cpp \
    ./designwidget/designwidget.cpp \
    ./designwidget/DiagramAddCommands.cpp \
    ./designwidget/DiagramAdHocInterface.cpp \
    ./designwidget/DiagramAdHocPort.cpp \
    ./designwidget/DiagramChangeCommands.cpp \
    ./designwidget/diagramcomponent.cpp \
    ./designwidget/DiagramConnectionEndPoint.cpp \
    ./designwidget/DiagramDeleteCommands.cpp \
    ./designwidget/diagraminterconnection.cpp \
    ./designwidget/diagraminterface.cpp \
    ./designwidget/DiagramMoveCommands.cpp \
    ./designwidget/DiagramOffPageConnector.cpp \
    ./designwidget/diagramport.cpp \
    ./designwidget/PortmapDialog.cpp \
    ./designwidget/SelectItemTypeDialog.cpp \
    ./designwidget/columnview/ColumnEditDialog.cpp \
    ./designwidget/columnview/DiagramColumn.cpp \
    ./designwidget/columnview/DiagramColumnLayout.cpp \
    ./exceptions/invalid_file.cpp \
    ./exceptions/vhdl_error.cpp \
    ./exceptions/write_error.cpp \
    ./IPXactWrapper/ComponentEditor/componenttreeitem.cpp \
    ./IPXactWrapper/ComponentEditor/componenttreemodel.cpp \
    ./IPXactWrapper/ComponentEditor/componenttreenavigator.cpp \
    ./IPXactWrapper/ComponentEditor/componenttreeview.cpp \
    ./IPXactWrapper/ComponentEditor/ipxactcomponenteditor.cpp \
    ./IPXactWrapper/ComponentEditor/itemeditor.cpp \
    ./IPXactWrapper/ComponentEditor/busInterfaces/ApiCreateDialog.cpp \
    ./IPXactWrapper/ComponentEditor/busInterfaces/apieditor.cpp \
    ./IPXactWrapper/ComponentEditor/busInterfaces/busifgeneraldetails.cpp \
    ./IPXactWrapper/ComponentEditor/busInterfaces/busifgeneraltab.cpp \
    ./IPXactWrapper/ComponentEditor/busInterfaces/busifinterfacemaster.cpp \
    ./IPXactWrapper/ComponentEditor/busInterfaces/busifinterfacemodeeditor.cpp \
    ./IPXactWrapper/ComponentEditor/busInterfaces/busifinterfacemodetab.cpp \
    ./IPXactWrapper/ComponentEditor/busInterfaces/busifinterfacemonitor.cpp \
    ./IPXactWrapper/ComponentEditor/busInterfaces/busifinterfacemslave.cpp \
    ./IPXactWrapper/ComponentEditor/busInterfaces/busifinterfaceslave.cpp \
    ./IPXactWrapper/ComponentEditor/busInterfaces/busifinterfacesystem.cpp \
    ./IPXactWrapper/ComponentEditor/busInterfaces/busifparameterstab.cpp \
    ./IPXactWrapper/ComponentEditor/busInterfaces/busifportmaptab.cpp \
    ./IPXactWrapper/ComponentEditor/busInterfaces/businterfaceeditor.cpp \
    ./IPXactWrapper/ComponentEditor/busInterfaces/portmaps/logicallistmodel.cpp \
    ./IPXactWrapper/ComponentEditor/busInterfaces/portmaps/physlistmodel.cpp \
    ./IPXactWrapper/ComponentEditor/busInterfaces/portmaps/portlistmodel.cpp \
    ./IPXactWrapper/ComponentEditor/busInterfaces/portmaps/portlistview.cpp \
    ./IPXactWrapper/ComponentEditor/busInterfaces/portmaps/portmapsdelegate.cpp \
    ./IPXactWrapper/ComponentEditor/busInterfaces/portmaps/portmapsmodel.cpp \
    ./IPXactWrapper/ComponentEditor/busInterfaces/portmaps/portmapsview.cpp \
    ./IPXactWrapper/ComponentEditor/channels/channeleditor.cpp \
    ./IPXactWrapper/ComponentEditor/channels/channelinterfacemanager.cpp \
    ./IPXactWrapper/ComponentEditor/channels/channelinterfacemanagerdelegate.cpp \
    ./IPXactWrapper/ComponentEditor/channels/channelinterfacemodel.cpp \
    ./IPXactWrapper/ComponentEditor/fileBuilders/filebuildersdelegate.cpp \
    ./IPXactWrapper/ComponentEditor/fileBuilders/filebuilderseditor.cpp \
    ./IPXactWrapper/ComponentEditor/fileBuilders/filebuildersmodel.cpp \
    ./IPXactWrapper/ComponentEditor/fileSet/filebuildcommand.cpp \
    ./IPXactWrapper/ComponentEditor/fileSet/filebuildereditor.cpp \
    ./IPXactWrapper/ComponentEditor/fileSet/filedefinemodel.cpp \
    ./IPXactWrapper/ComponentEditor/fileSet/filedefineview.cpp \
    ./IPXactWrapper/ComponentEditor/fileSet/fileeditor.cpp \
    ./IPXactWrapper/ComponentEditor/fileSet/fileextratab.cpp \
    ./IPXactWrapper/ComponentEditor/fileSet/filegeneraleditor.cpp \
    ./IPXactWrapper/ComponentEditor/fileSet/filegeneraltab.cpp \
    ./IPXactWrapper/ComponentEditor/fileSet/filenameeditor.cpp \
    ./IPXactWrapper/ComponentEditor/fileSet/filenamelineedit.cpp \
    ./IPXactWrapper/ComponentEditor/fileSet/fileseteditor.cpp \
    ./IPXactWrapper/ComponentEditor/fileSet/filetypeeditor.cpp \
    ./IPXactWrapper/ComponentEditor/fileSet/filetypeeditordelegate.cpp \
    ./IPXactWrapper/ComponentEditor/fileSet/groupmanager.cpp \
    ./IPXactWrapper/ComponentEditor/fileSet/groupmanagerdelegate.cpp \
    ./IPXactWrapper/ComponentEditor/fileSet/targetnameedit.cpp \
    ./IPXactWrapper/ComponentEditor/general/desceditor.cpp \
    ./IPXactWrapper/ComponentEditor/general/generaleditor.cpp \
    ./IPXactWrapper/ComponentEditor/modelParameters/modelparametereditor.cpp \
    ./IPXactWrapper/ComponentEditor/modelParameters/modelparametermodel.cpp \
    ./IPXactWrapper/ComponentEditor/modelParameters/usagedelegate.cpp \
    ./IPXactWrapper/ComponentEditor/otherClockDrivers/clockdriversdelegate.cpp \
    ./IPXactWrapper/ComponentEditor/otherClockDrivers/otherclockdriverseditor.cpp \
    ./IPXactWrapper/ComponentEditor/otherClockDrivers/otherclockdriversmodel.cpp \
    ./IPXactWrapper/ComponentEditor/parameters/parameterseditor.cpp \
    ./IPXactWrapper/ComponentEditor/ports/portsdelegate.cpp \
    ./IPXactWrapper/ComponentEditor/ports/portseditor.cpp \
    ./IPXactWrapper/ComponentEditor/ports/portsmodel.cpp \
    ./IPXactWrapper/ComponentEditor/views/envidentifiereditor.cpp \
    ./IPXactWrapper/ComponentEditor/views/envidentifiersdelegate.cpp \
    ./IPXactWrapper/ComponentEditor/views/envidentifiersmodel.cpp \
    ./IPXactWrapper/ComponentEditor/views/filesetrefeditor.cpp \
    ./IPXactWrapper/ComponentEditor/views/filesetrefeditordelegate.cpp \
    ./IPXactWrapper/ComponentEditor/views/filesetrefmodel.cpp \
    ./IPXactWrapper/ComponentEditor/views/flatviewgeneraltab.cpp \
    ./IPXactWrapper/ComponentEditor/views/flatviewparameterstab.cpp \
    ./IPXactWrapper/ComponentEditor/views/hierarchyrefwidget.cpp \
    ./IPXactWrapper/ComponentEditor/views/vieweditor.cpp \
    ./IPXactWrapper/ComponentEditor/endpoints/EndpointDelegate.cpp \
    ./IPXactWrapper/ComponentEditor/endpoints/EndpointEditor.cpp \
    ./IPXactWrapper/ComponentEditor/endpoints/EndpointModel.cpp \
    ./IPXactWrapper/ComponentEditor/endpoints/ImportEndpointsDialog.cpp \
    ./IPXactWrapper/ComponentEditor/software/SoftwareMappingsEditor.cpp \
    ./IPXactWrapper/ComponentEditor/addressSpaces/addressspaceeditor.cpp \
    ./IPXactWrapper/ComponentEditor/addressSpaces/addressspacegeneraleditor.cpp \
    ./IPXactWrapper/ComponentEditor/addressSpaces/addressspaceparameterseditor.cpp \
    ./IPXactWrapper/ComponentEditor/addressSpaces/addressspacevisualizer.cpp \
    ./IPXactWrapper/ComponentEditor/addressSpaces/segmenteditor.cpp \
    ./IPXactWrapper/ComponentEditor/addressSpaces/segmentproxy.cpp \
    ./IPXactWrapper/ComponentEditor/addressSpaces/segmentsmodel.cpp \
    ./IPXactWrapper/ComponentEditor/cpus/addressspacerefdelegate.cpp \
    ./IPXactWrapper/ComponentEditor/cpus/addressspacerefeditor.cpp \
    ./IPXactWrapper/ComponentEditor/cpus/addressspacerefmodel.cpp \
    ./IPXactWrapper/ComponentEditor/cpus/cpueditor.cpp \
    ./IPXactWrapper/BusEditor/absdefgroup.cpp \
    ./IPXactWrapper/BusEditor/busdefgroup.cpp \
    ./IPXactWrapper/BusEditor/buseditor.cpp \
    ./IPXactWrapper/BusEditor/busportsdelegate.cpp \
    ./IPXactWrapper/BusEditor/busportsmodel.cpp \
    ./IPXactWrapper/BusEditor/busportsview.cpp \
    ./IPXactWrapper/BusEditor/impexpgroup.cpp \
    ./IPXactWrapper/BusEditor/renamegroup.cpp \
    ./IPXactWrapper/BusEditor/signalsgroup.cpp \
    ./IPXactWrapper/SWDesignEditor/SWDesignEditor.cpp \
    ./LibraryManager/ipxactitem.cpp \
    ./LibraryManager/ipxactmodel.cpp \
    ./LibraryManager/ipxactwidget.cpp \
    ./LibraryManager/librarydata.cpp \
    ./LibraryManager/libraryhandler.cpp \
    ./LibraryManager/libraryitem.cpp \
    ./LibraryManager/librarysearchfilter.cpp \
    ./LibraryManager/librarysearchwidget.cpp \
    ./LibraryManager/librarytableview.cpp \
    ./LibraryManager/librarytreefilter.cpp \
    ./LibraryManager/librarytreemodel.cpp \
    ./LibraryManager/librarytreeview.cpp \
    ./LibraryManager/librarytreewidget.cpp \
    ./LibraryManager/LibraryUtils.cpp \
    ./LibraryManager/typebox.cpp \
    ./LibraryManager/vlnv.cpp \
    ./LibraryManager/vlnvbox.cpp \
    ./LibraryManager/HierarchyView/hierarchyfilter.cpp \
    ./LibraryManager/HierarchyView/hierarchyitem.cpp \
    ./LibraryManager/HierarchyView/hierarchymodel.cpp \
    ./LibraryManager/HierarchyView/hierarchyview.cpp \
    ./LibraryManager/HierarchyView/hierarchywidget.cpp \
    ./IPXactWrapper/ComponentEditor/busInterfaces/portmaps/logicallistview.cpp \
    ./IPXactWrapper/ComponentEditor/busInterfaces/portmaps/physlistview.cpp \
    ./LibraryManager/VLNVDialer/dialerwidget.cpp \
    ./LibraryManager/VLNVDialer/filterwidget.cpp \
    ./LibraryManager/VLNVDialer/firmnessgroup.cpp \
    ./LibraryManager/VLNVDialer/hierarchygroup.cpp \
    ./LibraryManager/VLNVDialer/implementationgroup.cpp \
    ./LibraryManager/VLNVDialer/typegroup.cpp \
    ./LibraryManager/VLNVDialer/vlnvdialer.cpp \
    ./mainwindow/DeleteWorkspaceDialog.cpp \
    ./mainwindow/main.cpp \
    ./mainwindow/mainwindow.cpp \
    ./mainwindow/newbuspage.cpp \
    ./mainwindow/NewComponentPage.cpp \
    ./mainwindow/NewDesignPage.cpp \
    ./mainwindow/NewSWComponentPage.cpp \
    ./mainwindow/NewSWDesignPage.cpp \
    ./mainwindow/NewSystemPage.cpp \
    ./mainwindow/NewWorkspaceDialog.cpp \
    ./mainwindow/SplashScreen.cpp \
    ./models/abstractiondefinition.cpp \
    ./models/addressblock.cpp \
    ./models/addressspace.cpp \
    ./models/alternateregister.cpp \
    ./models/bank.cpp \
    ./models/buildcommand.cpp \
    ./models/buildmodel.cpp \
    ./models/busdefinition.cpp \
    ./models/businterface.cpp \
    ./models/channel.cpp \
    ./models/choice.cpp \
    ./models/component.cpp \
    ./models/componentgenerator.cpp \
    ./models/cpu.cpp \
    ./models/design.cpp \
    ./models/designconfabstractor.cpp \
    ./models/designconfiguration.cpp \
    ./models/enumeratedvalue.cpp \
    ./models/field.cpp \
    ./models/file.cpp \
    ./models/filebuilder.cpp \
    ./models/fileset.cpp \
    ./models/function.cpp \
    ./models/generaldeclarations.cpp \
    ./models/generator.cpp \
    ./models/generatorchain.cpp \
    ./models/generatorchainselector.cpp \
    ./models/librarycomponent.cpp \
    ./models/masterinterface.cpp \
    ./models/memoryblockdata.cpp \
    ./models/memorymap.cpp \
    ./models/memorymapitem.cpp \
    ./models/mirroredslaveinterface.cpp \
    ./models/model.cpp \
    ./models/modelparameter.cpp \
    ./models/otherclockdriver.cpp \
    ./models/parameter.cpp \
    ./models/port.cpp \
    ./models/portabstraction.cpp \
    ./models/register.cpp \
    ./models/registerdefinition.cpp \
    ./models/registerfile.cpp \
    ./models/registermodel.cpp \
    ./models/remapport.cpp \
    ./models/remapstate.cpp \
    ./models/reset.cpp \
    ./models/segment.cpp \
    ./models/servicetypedef.cpp \
    ./models/slaveinterface.cpp \
    ./models/subspacemap.cpp \
    ./models/transactional.cpp \
    ./models/transactionalabstraction.cpp \
    ./models/vector.cpp \
    ./models/view.cpp \
    ./models/wire.cpp \
    ./models/wireabstraction.cpp \
    ./modelsimGenerator/modelsimgenerator.cpp \
    ./PropertyWidget/messageconsole.cpp \
    ./quartusGenerator/quartusgenerator.cpp \
    ./vhdlGenerator/vhdlcomponentdeclaration.cpp \
    ./vhdlGenerator/vhdlcomponentinstance.cpp \
    ./vhdlGenerator/vhdlconnectionendpoint.cpp \
    ./vhdlGenerator/vhdlgeneral.cpp \
    ./vhdlGenerator/vhdlgenerator2.cpp \
    ./vhdlGenerator/vhdlgeneric.cpp \
    ./vhdlGenerator/vhdlobject.cpp \
    ./vhdlGenerator/vhdlport.cpp \
    ./vhdlGenerator/vhdlportmap.cpp \
    ./vhdlGenerator/vhdlportsorter.cpp \
    ./vhdlGenerator/vhdlsignal.cpp \
    ./MCAPI/MCAPIContentMatcher.cpp \
    ./MCAPI/MCAPIDesignerTypes.cpp \
    ./MCAPI/MCAPIFunctionDesc.cpp \
    ./MCAPI/MCAPIFunctionSet.cpp \
    ./MCAPI/MCAPIHighlighter.cpp \
    ./MCAPI/MCAPISourceWidget.cpp \
    ./MCAPI/MCAPITextEdit.cpp \
    ./EndpointDesign/ApplicationItem.cpp \
    ./EndpointDesign/AppPlaceholderItem.cpp \
    ./EndpointDesign/EndpointConnection.cpp \
    ./EndpointDesign/EndpointDesignDiagram.cpp \
    ./EndpointDesign/EndpointDesignWidget.cpp \
    ./EndpointDesign/EndpointEditDialog.cpp \
    ./EndpointDesign/EndpointItem.cpp \
    ./EndpointDesign/EndpointStack.cpp \
    ./EndpointDesign/MappingComponentItem.cpp \
    ./EndpointDesign/PlatformComponentItem.cpp \
    ./EndpointDesign/PlatformPlaceholderItem.cpp \
    ./EndpointDesign/ProgramEntityItem.cpp \
    ./EndpointDesign/SWComponentItem.cpp \
    ./EndpointDesign/SystemAddCommands.cpp \
    ./EndpointDesign/SystemChangeCommands.cpp \
    ./EndpointDesign/SystemColumn.cpp \
    ./EndpointDesign/SystemColumnLayout.cpp \
    ./EndpointDesign/SystemDeleteCommands.cpp \
    ./EndpointDesign/SystemMoveCommands.cpp \
    ./settings/CodeEditorSettingsPage.cpp \
    ./settings/GeneralSettingsPage.cpp \
    ./settings/LibrarySettingsPage.cpp \
    ./settings/SettingsDialog.cpp \
    ./ComponentInstanceEditor/componentinstanceeditor.cpp \
    ./ComponentInstanceEditor/componentinstancemodel.cpp \
    ./ComponentInstanceEditor/configurableelementdelegate.cpp \
    ./ComponentInstanceEditor/configurableelementeditor.cpp \
    ./ConfigurationEditor/activeviewdelegate.cpp \
    ./ConfigurationEditor/activevieweditor.cpp \
    ./ConfigurationEditor/activeviewmodel.cpp \
    ./ConfigurationEditor/configurationeditor.cpp \
    ./DocumentGenerator/documentgenerator.cpp \
    ./InterfaceEditor/interfaceeditor.cpp \
    ./ConnectionEditor/AdHocBoundsDelegate.cpp \
    ./ConnectionEditor/AdHocBoundsModel.cpp \
    ./ConnectionEditor/connectioneditor.cpp \
    ./GCF/MenuStrip.cpp \
    ./AdHocEditor/AdHocDelegate.cpp \
    ./AdHocEditor/AdHocEditor.cpp \
    ./AdHocEditor/AdHocModel.cpp \
    ./common/widgets/tabWidgetEx/TabWidgetEx.cpp
RESOURCES += kactus.qrc
