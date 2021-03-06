; Script generated by the HM NIS Edit Script Wizard.

; HM NIS Edit Wizard helper defines
!define PRODUCT_NAME "Kactus2"
!define PRODUCT_VERSION "3.4.0"
!define PRODUCT_PUBLISHER "TUT"
!define PRODUCT_DIR_REGKEY "Software\Microsoft\Windows\CurrentVersion\App Paths\Kactus2.exe"
!define PRODUCT_UNINST_KEY "Software\Microsoft\Windows\CurrentVersion\Uninstall\${PRODUCT_NAME}"
!define PRODUCT_UNINST_ROOT_KEY "HKLM"

SetCompressor bzip2

!define MULTIUSER_EXECUTIONLEVEL Highest
!define MULTIUSER_MUI
!define MULTIUSER_INSTALLMODE_COMMANDLINE
!include "MultiUser.nsh"
!include "MUI2.nsh"

; MUI Settings
!define MUI_ABORTWARNING
!define MUI_ICON "${NSISDIR}\Contrib\Graphics\Icons\modern-install.ico"
!define MUI_UNICON "${NSISDIR}\Contrib\Graphics\Icons\modern-uninstall.ico"

; Welcome page
!insertmacro MUI_PAGE_WELCOME
; License page
!insertmacro MUI_PAGE_LICENSE "gpl2.txt"
; Multiuser page
!insertmacro MULTIUSER_PAGE_INSTALLMODE
; Directory page
!insertmacro MUI_PAGE_DIRECTORY
; Instfiles page
!insertmacro MUI_PAGE_INSTFILES
; Finish page
!define MUI_FINISHPAGE_RUN "$INSTDIR\Kactus2.exe"
!insertmacro MUI_PAGE_FINISH

; Uninstaller pages
!insertmacro MUI_UNPAGE_INSTFILES

; Language files
!insertmacro MUI_LANGUAGE "English"

; Reserve files
;!insertmacro MUI_RESERVEFILE_INSTALLOPTIONS

; MUI end ------

Name "${PRODUCT_NAME}"
OutFile "Kactus2SetupWin32bit.exe"
InstallDir "$PROGRAMFILES\Kactus2"
InstallDirRegKey HKLM "${PRODUCT_DIR_REGKEY}" ""
ShowInstDetails show
ShowUnInstDetails show

Section "MainSection" SEC01
  SetOutPath "$INSTDIR"
  SetOverwrite on
  File "..\..\executable\Qt5CLucene.dll"
  File "..\..\executable\Qt5Core.dll"
  File "..\..\executable\Qt5Gui.dll"
  File "..\..\executable\Qt5Help.dll"
  File "..\..\executable\Qt5Network.dll"
  File "..\..\executable\Qt5PrintSupport.dll"
  File "..\..\executable\Qt5Sql.dll"
  File "..\..\executable\Qt5Widgets.dll"
  File "..\..\executable\Qt5Xml.dll"
  File "..\..\executable\Qt5XmlPatterns.dll"
  File "..\..\executable\libEGL.dll"
  File "..\..\executable\libGLESv2.dll"
  File "..\..\executable\icuin51.dll"
  File "..\..\executable\icudt51.dll"
  File "..\..\executable\icuuc51.dll"
  File "..\..\executable\D3DCompiler_43.dll"
  File "..\..\executable\IPXACTmodels.dll"
  File "..\..\executable\Kactus2.exe"
  File "gpl2.txt"
  File "release_notes.txt"
  File "..\..\README.md"
  File "..\..\executable\upgrade.cfg"
  File /oname=DefaultSettings.ini "DefaultSettingsWin.ini"
  
  SetOutPath "$INSTDIR\accessible"
  SetOverwrite on
  File "..\..\executable\accessible\qtaccessiblewidgets.dll"
  
  SetOutPath "$INSTDIR\platforms"
  SetOverwrite on
  File "..\..\executable\platforms\qminimal.dll"
  File "..\..\executable\platforms\qwindows.dll"

  SetOutPath "$INSTDIR\sqldrivers"
  SetOverwrite on
  File "..\..\executable\sqldrivers\qsqlite.dll"

  SetOutPath "$INSTDIR\Plugins"
  SetOverwrite on
  File "..\..\executable\Plugins\MCAPICodeGenerator.dll"
  File "..\..\executable\Plugins\CppSourceAnalyzer.dll"
  File "..\..\executable\Plugins\VHDLSourceAnalyzer.dll"
  File "..\..\executable\Plugins\AlteraBSPGenerator.dll"
  File "..\..\executable\Plugins\MemoryMapHeaderGenerator.dll"
  File "..\..\executable\Plugins\PadsPartGenerator.dll"
  File "..\..\executable\Plugins\QuartusPinImportPlugin.dll"
  File "..\..\executable\Plugins\QuartusProjectGenerator.dll"
  File "..\..\executable\Plugins\MakefileGenerator.dll"
  File "..\..\executable\Plugins\ModelSimGenerator.dll"
  File "..\..\executable\Plugins\VerilogGeneratorPlugin.dll"
  File "..\..\executable\Plugins\VerilogImport.dll"
  File "..\..\executable\Plugins\VerilogIncludeImport.dll"
  File "..\..\executable\Plugins\VerilogSourceAnalyzer.dll"
  File "..\..\executable\Plugins\VHDLImport.dll"
  File "..\..\executable\Plugins\TLMWGenerator.dll"
  File "..\..\executable\Plugins\MemoryViewGenerator.dll"
    
  SetOutPath "$INSTDIR\Help"
  SetOverwrite on
  File "..\..\Help\Kactus2Help.qhc"
  File "..\..\Help\Kactus2Help.qch"
  
  SetOutPath "$APPDATA\TUT"
  SetOverwrite off
  File /oname=Kactus2.ini "DefaultSettingsWin.ini"
  
  SetOutPath "$INSTDIR\Library\tut.fi\global.communication\mcapi\1.063"
  SetOverwrite on
  File "Library\tut.fi\global.communication\mcapi\1.063\mcapi.1.063.xml"
  
  SetOutPath "$INSTDIR\Library\tut.fi\ip.swp.api\mcapi.apiDef\1.063"
  SetOverwrite on
  File "Library\tut.fi\ip.swp.api\mcapi.apiDef\1.063\mcapi.apiDef.1.063.xml"
  
  SetOutPath "$INSTDIR\Library\tut.fi\global.communication\mcapi\2.015"
  SetOverwrite on
  File "Library\tut.fi\global.communication\mcapi\2.015\mcapi.2.015.xml"
  
  SetOutPath "$INSTDIR\Library\tut.fi\ip.swp.api\mcapi.apiDef\2.015"
  SetOverwrite on
  File "Library\tut.fi\ip.swp.api\mcapi.apiDef\2.015\mcapi.apiDef.2.015.xml"
  
  SetOutPath "$INSTDIR\Library\tut.fi\global.communication\iptlm\1.1"
  SetOverwrite on
  File "Library\tut.fi\global.communication\iptlm\1.1\TLMW.1.1.xml"

  SetOutPath "$INSTDIR\Library\tut.fi\ip.swp.api\IPTLM.apidef\1.1"
  SetOverwrite on
  File "Library\tut.fi\ip.swp.api\IPTLM.apidef\1.1\TLMW.apiDef.1.1.xml"
  
  SetOutPath "$INSTDIR"
  CreateDirectory "$SMPROGRAMS\Kactus2"
  CreateShortCut "$SMPROGRAMS\Kactus2\Kactus2.lnk" "$INSTDIR\Kactus2.exe"
  CreateShortCut "$SMPROGRAMS\Kactus2\License.lnk" "$INSTDIR\gpl2.txt"
  CreateShortCut "$SMPROGRAMS\Kactus2\Release Notes.lnk" "$INSTDIR\release_notes.txt"
  CreateShortCut "$SMPROGRAMS\Kactus2\Readme.lnk" "$INSTDIR\readme.txt"
  CreateShortCut "$DESKTOP\Kactus2.lnk" "$INSTDIR\Kactus2.exe"
SectionEnd

Section "DependencySection" SEC02
  SetOutPath "$TEMP\Kactus2Installer"
  SetOverwrite ifnewer
  File "vcredist_x86.exe"
  ExecWait '"$OUTDIR\vcredist_x86.exe" /q /norestart'
  SetOutPath "$INSTDIR"
  RMDir /r "$TEMP\Kactus2Installer"
SectionEnd

Section -AdditionalIcons
  CreateShortCut "$SMPROGRAMS\Kactus2\Uninstall.lnk" "$INSTDIR\uninst.exe"
SectionEnd

Section -Post
  WriteUninstaller "$INSTDIR\uninst.exe"
  WriteRegStr HKLM "${PRODUCT_DIR_REGKEY}" "" "$INSTDIR\Kactus2.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayName" "$(^Name)"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "UninstallString" "$INSTDIR\uninst.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayIcon" "$INSTDIR\Kactus2.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayVersion" "${PRODUCT_VERSION}"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "Publisher" "${PRODUCT_PUBLISHER}"
SectionEnd

Function .onInit
  !insertmacro MULTIUSER_INIT
FunctionEnd

Function un.onUninstSuccess
  HideWindow
  MessageBox MB_ICONINFORMATION|MB_OK "$(^Name) was successfully removed from your computer."
FunctionEnd

Function un.onInit
  !insertmacro MULTIUSER_UNINIT
  MessageBox MB_ICONQUESTION|MB_YESNO|MB_DEFBUTTON2 "Are you sure you want to completely remove $(^Name) and all of its components?" IDYES +2
  Abort
FunctionEnd

Section Uninstall
  Delete "$INSTDIR\uninst.exe"
  Delete "$INSTDIR\Library\tut.fi\ip.swp.api\IPTLM.apiDef\1.1\TLMW.apiDef.1.1.xml"
  Delete "$INSTDIR\Library\tut.fi\global.communication\iptlm\1.1\TLMW.1.1.xml"
  Delete "$INSTDIR\Library\tut.fi\global.communication\mcapi\2.015\mcapi.2.015.xml"
  Delete "$INSTDIR\Library\tut.fi\ip.swp.api\mcapi.apiDef\2.015\mcapi.apiDef.2.015.xml"
  Delete "$INSTDIR\Library\tut.fi\global.communication\mcapi\1.063\mcapi.1.063.xml"
  Delete "$INSTDIR\Library\tut.fi\ip.swp.api\mcapi.apiDef\1.063\mcapi.apiDef.1.063.xml"
  Delete "$INSTDIR\Help\Kactus2Help.qch"
  Delete "$INSTDIR\Help\Kactus2Help.qhc"
  Delete "$INSTDIR\Plugins\TLMWGenerator.dll"
  Delete "$INSTDIR\Plugins\MemoryViewGenerator.dll"
  Delete "$INSTDIR\Plugins\VHDLImport.dll"
  Delete "$INSTDIR\Plugins\VerilogSourceAnalyzer.dll"
  Delete "$INSTDIR\Plugins\VerilogIncludeImport.dll"
  Delete "$INSTDIR\Plugins\VerilogImport.dll"  
  Delete "$INSTDIR\Plugins\VerilogGeneratorPlugin.dll"
  Delete "$INSTDIR\Plugins\ModelSimGenerator.dll"
  Delete "$INSTDIR\Plugins\MakefileGenerator.dll"
  Delete "$INSTDIR\Plugins\QuartusProjectGenerator.dll"
  Delete "$INSTDIR\Plugins\QuartusPinImportPlugin.dll"
  Delete "$INSTDIR\Plugins\PadsPartGenerator.dll"
  Delete "$INSTDIR\Plugins\MemoryMapHeaderGenerator.dll"
  Delete "$INSTDIR\Plugins\AlteraBSPGenerator.dll"
  Delete "$INSTDIR\Plugins\VHDLSourceAnalyzer.dll"
  Delete "$INSTDIR\Plugins\CppSourceAnalyzer.dll"
  Delete "$INSTDIR\Plugins\MCAPICodeGenerator.dll"
  Delete "$INSTDIR\sqldrivers\qsqlite.dll"
  Delete "$INSTDIR\platforms\qminimal.dll"
  Delete "$INSTDIR\platforms\qwindows.dll"
  Delete "$INSTDIR\accessible\qtaccessiblewidgets.dll"
  Delete "$INSTDIR\DefaultSettings.ini"
  Delete "$INSTDIR\upgrade.cfg"
  Delete "$INSTDIR\README.md"
  Delete "$INSTDIR\release_notes.txt"
  Delete "$INSTDIR\gpl2.txt"
  Delete "$INSTDIR\Kactus2.exe"
  Delete "$INSTDIR\IPXACTmodels.dll"
  Delete "$INSTDIR\D3DCompiler_43.dll"
  Delete "$INSTDIR\icuuc51.dll"
  Delete "$INSTDIR\icudt51.dll"
  Delete "$INSTDIR\icuin51.dll"
  Delete "$INSTDIR\libGLESv2.dll"
  Delete "$INSTDIR\libEGL.dll"
  Delete "$INSTDIR\Qt5XmlPatterns.dll"
  Delete "$INSTDIR\Qt5Xml.dll"
  Delete "$INSTDIR\Qt5Widgets.dll"
  Delete "$INSTDIR\Qt5Sql.dll"
  Delete "$INSTDIR\Qt5PrintSupport.dll"
  Delete "$INSTDIR\Qt5Network.dll"
  Delete "$INSTDIR\Qt5Help.dll"
  Delete "$INSTDIR\Qt5Gui.dll"
  Delete "$INSTDIR\Qt5Core.dll"
  Delete "$INSTDIR\Qt5CLucene.dll"

  Delete "$SMPROGRAMS\Kactus2\Uninstall.lnk"
  Delete "$DESKTOP\Kactus2.lnk"
  Delete "$SMPROGRAMS\Kactus2\Readme.lnk"
  Delete "$SMPROGRAMS\Kactus2\Release Notes.lnk"
  Delete "$SMPROGRAMS\Kactus2\License.lnk"
  Delete "$SMPROGRAMS\Kactus2\Kactus2.lnk"

  RMDir "$SMPROGRAMS\Kactus2"
  RMDir "$INSTDIR\Help"
  RMDir "$INSTDIR\Plugins"
  RMDir "$INSTDIR\sqldrivers"
  RMDir "$INSTDIR\platforms"
  RMDir "$INSTDIR\accessible"
  RMDir "$INSTDIR\Library\tut.fi\ip.swp.api\IPTLM.apiDef\1.1"
  RMDir "$INSTDIR\Library\tut.fi\ip.swp.api\IPTLM.apiDef"
  RMDir "$INSTDIR\Library\tut.fi\ip.swp.api\mcapi.apiDef\2.015"
  RMDir "$INSTDIR\Library\tut.fi\ip.swp.api\mcapi.apiDef\1.063"
  RMDir "$INSTDIR\Library\tut.fi\ip.swp.api\mcapi.apiDef"
  RMDir "$INSTDIR\Library\tut.fi\ip.swp.api"
  RMDir "$INSTDIR\Library\tut.fi\global.communication\iptlm\1.1"
  RMDir "$INSTDIR\Library\tut.fi\global.communication\iptlm"
  RMDir "$INSTDIR\Library\tut.fi\global.communication\mcapi\2.015"
  RMDir "$INSTDIR\Library\tut.fi\global.communication\mcapi\1.063"
  RMDir "$INSTDIR\Library\tut.fi\global.communication\mcapi"
  RMDir "$INSTDIR\Library\tut.fi\global.communication"
  RMDir "$INSTDIR\Library\tut.fi"
  RMDir "$INSTDIR\Library"
  RMDir "$INSTDIR"

  DeleteRegKey ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}"
  DeleteRegKey HKLM "${PRODUCT_DIR_REGKEY}"
  SetAutoClose true
SectionEnd