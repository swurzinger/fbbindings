#pragma once

#include once "_mingw_unicode.bi"
#include once "windows.bi"
#include once "shellapi.bi"
#include once "ole2.bi"
#include once "tchar.bi"

'' The following symbols have been renamed:
''     #define OleUIInsertObject => OleUIInsertObject_
''     #define OleUIPasteSpecial => OleUIPasteSpecial_
''     #define LPOLEUILINKCONTAINER => LPOLEUILINKCONTAINER_
''     #define OleUIEditLinks => OleUIEditLinks_
''     #define OleUIChangeIcon => OleUIChangeIcon_
''     #define OleUIConvert => OleUIConvert_
''     #define OleUIBusy => OleUIBusy_
''     #define OleUIChangeSource => OleUIChangeSource_

#ifdef __FB_64BIT__
	extern "C"
#else
	extern "Windows"
#endif

type IOleUILinkContainerWVtbl as IOleUILinkContainerWVtbl_
type IOleUILinkContainerAVtbl as IOleUILinkContainerAVtbl_
type IOleUIObjInfoWVtbl as IOleUIObjInfoWVtbl_
type IOleUIObjInfoAVtbl as IOleUIObjInfoAVtbl_
type IOleUILinkInfoWVtbl as IOleUILinkInfoWVtbl_
type IOleUILinkInfoAVtbl as IOleUILinkInfoAVtbl_
type tagOLEUIOBJECTPROPSW as tagOLEUIOBJECTPROPSW_
type tagOLEUIOBJECTPROPSA as tagOLEUIOBJECTPROPSA_

#define _OLEDLG_H_

#ifdef UNICODE
	#define _UNICODE
#endif

#define IDC_OLEUIHELP 99
#define IDC_IO_CREATENEW 2100
#define IDC_IO_CREATEFROMFILE 2101
#define IDC_IO_LINKFILE 2102
#define IDC_IO_OBJECTTYPELIST 2103
#define IDC_IO_DISPLAYASICON 2104
#define IDC_IO_CHANGEICON 2105
#define IDC_IO_FILE 2106
#define IDC_IO_FILEDISPLAY 2107
#define IDC_IO_RESULTIMAGE 2108
#define IDC_IO_RESULTTEXT 2109
#define IDC_IO_ICONDISPLAY 2110
#define IDC_IO_OBJECTTYPETEXT 2111
#define IDC_IO_FILETEXT 2112
#define IDC_IO_FILETYPE 2113
#define IDC_IO_INSERTCONTROL 2114
#define IDC_IO_ADDCONTROL 2115
#define IDC_IO_CONTROLTYPELIST 2116
#define IDC_PS_PASTE 500
#define IDC_PS_PASTELINK 501
#define IDC_PS_SOURCETEXT 502
#define IDC_PS_PASTELIST 503
#define IDC_PS_PASTELINKLIST 504
#define IDC_PS_DISPLAYLIST 505
#define IDC_PS_DISPLAYASICON 506
#define IDC_PS_ICONDISPLAY 507
#define IDC_PS_CHANGEICON 508
#define IDC_PS_RESULTIMAGE 509
#define IDC_PS_RESULTTEXT 510
#define IDC_CI_GROUP 120
#define IDC_CI_CURRENT 121
#define IDC_CI_CURRENTICON 122
#define IDC_CI_DEFAULT 123
#define IDC_CI_DEFAULTICON 124
#define IDC_CI_FROMFILE 125
#define IDC_CI_FROMFILEEDIT 126
#define IDC_CI_ICONLIST 127
#define IDC_CI_LABEL 128
#define IDC_CI_LABELEDIT 129
#define IDC_CI_BROWSE 130
#define IDC_CI_ICONDISPLAY 131
#define IDC_CV_OBJECTTYPE 150
#define IDC_CV_DISPLAYASICON 152
#define IDC_CV_CHANGEICON 153
#define IDC_CV_ACTIVATELIST 154
#define IDC_CV_CONVERTTO 155
#define IDC_CV_ACTIVATEAS 156
#define IDC_CV_RESULTTEXT 157
#define IDC_CV_CONVERTLIST 158
#define IDC_CV_ICONDISPLAY 165
#define IDC_EL_CHANGESOURCE 201
#define IDC_EL_AUTOMATIC 202
#define IDC_EL_CANCELLINK 209
#define IDC_EL_UPDATENOW 210
#define IDC_EL_OPENSOURCE 211
#define IDC_EL_MANUAL 212
#define IDC_EL_LINKSOURCE 216
#define IDC_EL_LINKTYPE 217
#define IDC_EL_LINKSLISTBOX 206
#define IDC_EL_COL1 220
#define IDC_EL_COL2 221
#define IDC_EL_COL3 222
#define IDC_BZ_RETRY 600
#define IDC_BZ_ICON 601
#define IDC_BZ_MESSAGE1 602
#define IDC_BZ_SWITCHTO 604
#define IDC_UL_METER 1029
#define IDC_UL_STOP 1030
#define IDC_UL_PERCENT 1031
#define IDC_UL_PROGRESS 1032
#define IDC_PU_LINKS 900
#define IDC_PU_TEXT 901
#define IDC_PU_CONVERT 902
#define IDC_PU_ICON 908
#define IDC_GP_OBJECTNAME 1009
#define IDC_GP_OBJECTTYPE 1010
#define IDC_GP_OBJECTSIZE 1011
#define IDC_GP_CONVERT 1013
#define IDC_GP_OBJECTICON 1014
#define IDC_GP_OBJECTLOCATION 1022
#define IDC_VP_PERCENT 1000
#define IDC_VP_CHANGEICON 1001
#define IDC_VP_EDITABLE 1002
#define IDC_VP_ASICON 1003
#define IDC_VP_RELATIVE 1005
#define IDC_VP_SPIN 1006
#define IDC_VP_SCALETXT 1034
#define IDC_VP_ICONDISPLAY 1021
#define IDC_VP_RESULTIMAGE 1033
#define IDC_LP_OPENSOURCE 1006
#define IDC_LP_UPDATENOW 1007
#define IDC_LP_BREAKLINK 1008
#define IDC_LP_LINKSOURCE 1012
#define IDC_LP_CHANGESOURCE 1015
#define IDC_LP_AUTOMATIC 1016
#define IDC_LP_MANUAL 1017
#define IDC_LP_DATE 1018
#define IDC_LP_TIME 1019
#define IDD_INSERTOBJECT 1000
#define IDD_CHANGEICON 1001
#define IDD_CONVERT 1002
#define IDD_PASTESPECIAL 1003
#define IDD_EDITLINKS 1004
#define IDD_BUSY 1006
#define IDD_UPDATELINKS 1007
#define IDD_CHANGESOURCE 1009
#define IDD_INSERTFILEBROWSE 1010
#define IDD_CHANGEICONBROWSE 1011
#define IDD_CONVERTONLY 1012
#define IDD_CHANGESOURCE4 1013
#define IDD_GNRLPROPS 1100
#define IDD_VIEWPROPS 1101
#define IDD_LINKPROPS 1102
#define IDD_CONVERT4 1103
#define IDD_CONVERTONLY4 1104
#define IDD_EDITLINKS4 1105
#define IDD_GNRLPROPS4 1106
#define IDD_LINKPROPS4 1107
#define IDD_PASTESPECIAL4 1108
#define IDD_CANNOTUPDATELINK 1008
#define IDD_LINKSOURCEUNAVAILABLE 1020
#define IDD_SERVERNOTFOUND 1023
#define IDD_OUTOFMEMORY 1024
#define IDD_SERVERNOTREGW 1021
#define IDD_LINKTYPECHANGEDW 1022
#define IDD_SERVERNOTREGA 1025
#define IDD_LINKTYPECHANGEDA 1026
#define IDD_SERVERNOTREG __MINGW_NAME_AW(IDD_SERVERNOTREG)
#define IDD_LINKTYPECHANGED __MINGW_NAME_AW(IDD_LINKTYPECHANGED)

type LPFNOLEUIHOOK as function(byval as HWND, byval as UINT, byval as WPARAM, byval as LPARAM) as UINT

#define OLESTDDELIM TEXT_(!"\\")
#define SZOLEUI_MSG_HELP TEXT_("OLEUI_MSG_HELP")
#define SZOLEUI_MSG_ENDDIALOG TEXT_("OLEUI_MSG_ENDDIALOG")
#define SZOLEUI_MSG_BROWSE TEXT_("OLEUI_MSG_BROWSE")
#define SZOLEUI_MSG_CHANGEICON TEXT_("OLEUI_MSG_CHANGEICON")
#define SZOLEUI_MSG_CLOSEBUSYDIALOG TEXT_("OLEUI_MSG_CLOSEBUSYDIALOG")
#define SZOLEUI_MSG_CONVERT TEXT_("OLEUI_MSG_CONVERT")
#define SZOLEUI_MSG_CHANGESOURCE TEXT_("OLEUI_MSG_CHANGESOURCE")
#define SZOLEUI_MSG_ADDCONTROL TEXT_("OLEUI_MSG_ADDCONTROL")
#define SZOLEUI_MSG_BROWSE_OFN TEXT_("OLEUI_MSG_BROWSE_OFN")
#define ID_BROWSE_CHANGEICON 1
#define ID_BROWSE_INSERTFILE 2
#define ID_BROWSE_ADDCONTROL 3
#define ID_BROWSE_CHANGESOURCE 4
#define OLEUI_FALSE 0
#define OLEUI_SUCCESS 1
#define OLEUI_OK 1
#define OLEUI_CANCEL 2
#define OLEUI_ERR_STANDARDMIN 100
#define OLEUI_ERR_OLEMEMALLOC 100
#define OLEUI_ERR_STRUCTURENULL 101
#define OLEUI_ERR_STRUCTUREINVALID 102
#define OLEUI_ERR_CBSTRUCTINCORRECT 103
#define OLEUI_ERR_HWNDOWNERINVALID 104
#define OLEUI_ERR_LPSZCAPTIONINVALID 105
#define OLEUI_ERR_LPFNHOOKINVALID 106
#define OLEUI_ERR_HINSTANCEINVALID 107
#define OLEUI_ERR_LPSZTEMPLATEINVALID 108
#define OLEUI_ERR_HRESOURCEINVALID 109
#define OLEUI_ERR_FINDTEMPLATEFAILURE 110
#define OLEUI_ERR_LOADTEMPLATEFAILURE 111
#define OLEUI_ERR_DIALOGFAILURE 112
#define OLEUI_ERR_LOCALMEMALLOC 113
#define OLEUI_ERR_GLOBALMEMALLOC 114
#define OLEUI_ERR_LOADSTRING 115
#define OLEUI_ERR_STANDARDMAX 116

declare function OleUIAddVerbMenuW(byval lpOleObj as LPOLEOBJECT, byval lpszShortType as LPCWSTR, byval hMenu as HMENU, byval uPos as UINT, byval uIDVerbMin as UINT, byval uIDVerbMax as UINT, byval bAddConvert as WINBOOL, byval idConvert as UINT, byval lphMenu as HMENU ptr) as WINBOOL
declare function OleUIAddVerbMenuA(byval lpOleObj as LPOLEOBJECT, byval lpszShortType as LPCSTR, byval hMenu as HMENU, byval uPos as UINT, byval uIDVerbMin as UINT, byval uIDVerbMax as UINT, byval bAddConvert as WINBOOL, byval idConvert as UINT, byval lphMenu as HMENU ptr) as WINBOOL

#define OleUIAddVerbMenu __MINGW_NAME_AW(OleUIAddVerbMenu)

type tagOLEUIINSERTOBJECTW field = 8
	cbStruct as DWORD
	dwFlags as DWORD
	hWndOwner as HWND
	lpszCaption as LPCWSTR
	lpfnHook as LPFNOLEUIHOOK
	lCustData as LPARAM
	hInstance as HINSTANCE
	lpszTemplate as LPCWSTR
	hResource as HRSRC
	clsid as CLSID
	lpszFile as LPWSTR
	cchFile as UINT
	cClsidExclude as UINT
	lpClsidExclude as LPCLSID
	iid as IID
	oleRender as DWORD
	lpFormatEtc as LPFORMATETC
	lpIOleClientSite as LPOLECLIENTSITE
	lpIStorage as LPSTORAGE
	ppvObj as LPVOID ptr
	sc as SCODE
	hMetaPict as HGLOBAL
end type

type OLEUIINSERTOBJECTW as tagOLEUIINSERTOBJECTW
type POLEUIINSERTOBJECTW as tagOLEUIINSERTOBJECTW ptr
type LPOLEUIINSERTOBJECTW as tagOLEUIINSERTOBJECTW ptr

type tagOLEUIINSERTOBJECTA field = 8
	cbStruct as DWORD
	dwFlags as DWORD
	hWndOwner as HWND
	lpszCaption as LPCSTR
	lpfnHook as LPFNOLEUIHOOK
	lCustData as LPARAM
	hInstance as HINSTANCE
	lpszTemplate as LPCSTR
	hResource as HRSRC
	clsid as CLSID
	lpszFile as LPSTR
	cchFile as UINT
	cClsidExclude as UINT
	lpClsidExclude as LPCLSID
	iid as IID
	oleRender as DWORD
	lpFormatEtc as LPFORMATETC
	lpIOleClientSite as LPOLECLIENTSITE
	lpIStorage as LPSTORAGE
	ppvObj as LPVOID ptr
	sc as SCODE
	hMetaPict as HGLOBAL
end type

type OLEUIINSERTOBJECTA as tagOLEUIINSERTOBJECTA
type POLEUIINSERTOBJECTA as tagOLEUIINSERTOBJECTA ptr
type LPOLEUIINSERTOBJECTA as tagOLEUIINSERTOBJECTA ptr

declare function OleUIInsertObjectW(byval as LPOLEUIINSERTOBJECTW) as UINT
declare function OleUIInsertObjectA(byval as LPOLEUIINSERTOBJECTA) as UINT

#define tagOLEUIINSERTOBJECT __MINGW_NAME_AW(tagOLEUIINSERTOBJECT)
#define OLEUIINSERTOBJECT __MINGW_NAME_AW(OLEUIINSERTOBJECT)
#define POLEUIINSERTOBJECT __MINGW_NAME_AW(POLEUIINSERTOBJECT)
#define LPOLEUIINSERTOBJECT __MINGW_NAME_AW(LPOLEUIINSERTOBJECT)
#define OleUIInsertObject_ __MINGW_NAME_AW(OleUIInsertObject)
#define IOF_SHOWHELP __MSABI_LONG(&h00000001)
#define IOF_SELECTCREATENEW __MSABI_LONG(&h00000002)
#define IOF_SELECTCREATEFROMFILE __MSABI_LONG(&h00000004)
#define IOF_CHECKLINK __MSABI_LONG(&h00000008)
#define IOF_CHECKDISPLAYASICON __MSABI_LONG(&h00000010)
#define IOF_CREATENEWOBJECT __MSABI_LONG(&h00000020)
#define IOF_CREATEFILEOBJECT __MSABI_LONG(&h00000040)
#define IOF_CREATELINKOBJECT __MSABI_LONG(&h00000080)
#define IOF_DISABLELINK __MSABI_LONG(&h00000100)
#define IOF_VERIFYSERVERSEXIST __MSABI_LONG(&h00000200)
#define IOF_DISABLEDISPLAYASICON __MSABI_LONG(&h00000400)
#define IOF_HIDECHANGEICON __MSABI_LONG(&h00000800)
#define IOF_SHOWINSERTCONTROL __MSABI_LONG(&h00001000)
#define IOF_SELECTCREATECONTROL __MSABI_LONG(&h00002000)
#define OLEUI_IOERR_LPSZFILEINVALID (OLEUI_ERR_STANDARDMAX + 0)
#define OLEUI_IOERR_LPSZLABELINVALID (OLEUI_ERR_STANDARDMAX + 1)
#define OLEUI_IOERR_HICONINVALID (OLEUI_ERR_STANDARDMAX + 2)
#define OLEUI_IOERR_LPFORMATETCINVALID (OLEUI_ERR_STANDARDMAX + 3)
#define OLEUI_IOERR_PPVOBJINVALID (OLEUI_ERR_STANDARDMAX + 4)
#define OLEUI_IOERR_LPIOLECLIENTSITEINVALID (OLEUI_ERR_STANDARDMAX + 5)
#define OLEUI_IOERR_LPISTORAGEINVALID (OLEUI_ERR_STANDARDMAX + 6)
#define OLEUI_IOERR_SCODEHASERROR (OLEUI_ERR_STANDARDMAX + 7)
#define OLEUI_IOERR_LPCLSIDEXCLUDEINVALID (OLEUI_ERR_STANDARDMAX + 8)
#define OLEUI_IOERR_CCHFILEINVALID (OLEUI_ERR_STANDARDMAX + 9)

type tagOLEUIPASTEFLAG as long
enum
	OLEUIPASTE_ENABLEICON = 2048
	OLEUIPASTE_PASTEONLY = 0
	OLEUIPASTE_PASTE = 512
	OLEUIPASTE_LINKANYTYPE = 1024
	OLEUIPASTE_LINKTYPE1 = 1
	OLEUIPASTE_LINKTYPE2 = 2
	OLEUIPASTE_LINKTYPE3 = 4
	OLEUIPASTE_LINKTYPE4 = 8
	OLEUIPASTE_LINKTYPE5 = 16
	OLEUIPASTE_LINKTYPE6 = 32
	OLEUIPASTE_LINKTYPE7 = 64
	OLEUIPASTE_LINKTYPE8 = 128
end enum

type OLEUIPASTEFLAG as tagOLEUIPASTEFLAG

type tagOLEUIPASTEENTRYW field = 8
	fmtetc as FORMATETC
	lpstrFormatName as LPCWSTR
	lpstrResultText as LPCWSTR
	dwFlags as DWORD
	dwScratchSpace as DWORD
end type

type OLEUIPASTEENTRYW as tagOLEUIPASTEENTRYW
type POLEUIPASTEENTRYW as tagOLEUIPASTEENTRYW ptr
type LPOLEUIPASTEENTRYW as tagOLEUIPASTEENTRYW ptr

type tagOLEUIPASTEENTRYA field = 8
	fmtetc as FORMATETC
	lpstrFormatName as LPCSTR
	lpstrResultText as LPCSTR
	dwFlags as DWORD
	dwScratchSpace as DWORD
end type

type OLEUIPASTEENTRYA as tagOLEUIPASTEENTRYA
type POLEUIPASTEENTRYA as tagOLEUIPASTEENTRYA ptr
type LPOLEUIPASTEENTRYA as tagOLEUIPASTEENTRYA ptr

#define tagOLEUIPASTEENTRY __MINGW_NAME_AW(tagOLEUIPASTEENTRY)
#define OLEUIPASTEENTRY __MINGW_NAME_AW(OLEUIPASTEENTRY)
#define POLEUIPASTEENTRY __MINGW_NAME_AW(POLEUIPASTEENTRY)
#define LPOLEUIPASTEENTRY __MINGW_NAME_AW(LPOLEUIPASTEENTRY)
#define PS_MAXLINKTYPES 8

type tagOLEUIPASTESPECIALW field = 8
	cbStruct as DWORD
	dwFlags as DWORD
	hWndOwner as HWND
	lpszCaption as LPCWSTR
	lpfnHook as LPFNOLEUIHOOK
	lCustData as LPARAM
	hInstance as HINSTANCE
	lpszTemplate as LPCWSTR
	hResource as HRSRC
	lpSrcDataObj as LPDATAOBJECT
	arrPasteEntries as LPOLEUIPASTEENTRYW
	cPasteEntries as long
	arrLinkTypes as UINT ptr
	cLinkTypes as long
	cClsidExclude as UINT
	lpClsidExclude as LPCLSID
	nSelectedIndex as long
	fLink as WINBOOL
	hMetaPict as HGLOBAL
	sizel as SIZEL
end type

type OLEUIPASTESPECIALW as tagOLEUIPASTESPECIALW
type POLEUIPASTESPECIALW as tagOLEUIPASTESPECIALW ptr
type LPOLEUIPASTESPECIALW as tagOLEUIPASTESPECIALW ptr

type tagOLEUIPASTESPECIALA field = 8
	cbStruct as DWORD
	dwFlags as DWORD
	hWndOwner as HWND
	lpszCaption as LPCSTR
	lpfnHook as LPFNOLEUIHOOK
	lCustData as LPARAM
	hInstance as HINSTANCE
	lpszTemplate as LPCSTR
	hResource as HRSRC
	lpSrcDataObj as LPDATAOBJECT
	arrPasteEntries as LPOLEUIPASTEENTRYA
	cPasteEntries as long
	arrLinkTypes as UINT ptr
	cLinkTypes as long
	cClsidExclude as UINT
	lpClsidExclude as LPCLSID
	nSelectedIndex as long
	fLink as WINBOOL
	hMetaPict as HGLOBAL
	sizel as SIZEL
end type

type OLEUIPASTESPECIALA as tagOLEUIPASTESPECIALA
type POLEUIPASTESPECIALA as tagOLEUIPASTESPECIALA ptr
type LPOLEUIPASTESPECIALA as tagOLEUIPASTESPECIALA ptr

#define tagOLEUIPASTESPECIAL __MINGW_NAME_AW(tagOLEUIPASTESPECIAL)
#define OLEUIPASTESPECIAL __MINGW_NAME_AW(OLEUIPASTESPECIAL)
#define POLEUIPASTESPECIAL __MINGW_NAME_AW(POLEUIPASTESPECIAL)
#define LPOLEUIPASTESPECIAL __MINGW_NAME_AW(LPOLEUIPASTESPECIAL)

declare function OleUIPasteSpecialW(byval as LPOLEUIPASTESPECIALW) as UINT
declare function OleUIPasteSpecialA(byval as LPOLEUIPASTESPECIALA) as UINT

#define OleUIPasteSpecial_ __MINGW_NAME_AW(OleUIPasteSpecial)
#define PSF_SHOWHELP __MSABI_LONG(&h00000001)
#define PSF_SELECTPASTE __MSABI_LONG(&h00000002)
#define PSF_SELECTPASTELINK __MSABI_LONG(&h00000004)
#define PSF_CHECKDISPLAYASICON __MSABI_LONG(&h00000008)
#define PSF_DISABLEDISPLAYASICON __MSABI_LONG(&h00000010)
#define PSF_HIDECHANGEICON __MSABI_LONG(&h00000020)
#define PSF_STAYONCLIPBOARDCHANGE __MSABI_LONG(&h00000040)
#define PSF_NOREFRESHDATAOBJECT __MSABI_LONG(&h00000080)
#define OLEUI_IOERR_SRCDATAOBJECTINVALID (OLEUI_ERR_STANDARDMAX + 0)
#define OLEUI_IOERR_ARRPASTEENTRIESINVALID (OLEUI_ERR_STANDARDMAX + 1)
#define OLEUI_IOERR_ARRLINKTYPESINVALID (OLEUI_ERR_STANDARDMAX + 2)
#define OLEUI_PSERR_CLIPBOARDCHANGED (OLEUI_ERR_STANDARDMAX + 3)
#define OLEUI_PSERR_GETCLIPBOARDFAILED (OLEUI_ERR_STANDARDMAX + 4)

type IOleUILinkContainerW field = 8
	lpVtbl as IOleUILinkContainerWVtbl ptr
end type

type IOleUILinkContainerWVtbl_ field = 8
	QueryInterface as function(byval This as IOleUILinkContainerW ptr, byval riid as const IID const ptr, byval ppvObj as LPVOID ptr) as HRESULT
	AddRef as function(byval This as IOleUILinkContainerW ptr) as ULONG_
	Release as function(byval This as IOleUILinkContainerW ptr) as ULONG_
	GetNextLink as function(byval This as IOleUILinkContainerW ptr, byval dwLink as DWORD) as DWORD
	SetLinkUpdateOptions as function(byval This as IOleUILinkContainerW ptr, byval dwLink as DWORD, byval dwUpdateOpt as DWORD) as HRESULT
	GetLinkUpdateOptions as function(byval This as IOleUILinkContainerW ptr, byval dwLink as DWORD, byval lpdwUpdateOpt as DWORD ptr) as HRESULT
	SetLinkSource as function(byval This as IOleUILinkContainerW ptr, byval dwLink as DWORD, byval lpszDisplayName as LPWSTR, byval lenFileName as ULONG_, byval pchEaten as ULONG_ ptr, byval fValidateSource as WINBOOL) as HRESULT
	GetLinkSource as function(byval This as IOleUILinkContainerW ptr, byval dwLink as DWORD, byval lplpszDisplayName as LPWSTR ptr, byval lplenFileName as ULONG_ ptr, byval lplpszFullLinkType as LPWSTR ptr, byval lplpszShortLinkType as LPWSTR ptr, byval lpfSourceAvailable as WINBOOL ptr, byval lpfIsSelected as WINBOOL ptr) as HRESULT
	OpenLinkSource as function(byval This as IOleUILinkContainerW ptr, byval dwLink as DWORD) as HRESULT
	UpdateLink as function(byval This as IOleUILinkContainerW ptr, byval dwLink as DWORD, byval fErrorMessage as WINBOOL, byval fReserved as WINBOOL) as HRESULT
	CancelLink as function(byval This as IOleUILinkContainerW ptr, byval dwLink as DWORD) as HRESULT
end type

type LPOLEUILINKCONTAINERW as IOleUILinkContainerW ptr

type IOleUILinkContainerA field = 8
	lpVtbl as IOleUILinkContainerAVtbl ptr
end type

type IOleUILinkContainerAVtbl_ field = 8
	QueryInterface as function(byval This as IOleUILinkContainerA ptr, byval riid as const IID const ptr, byval ppvObj as LPVOID ptr) as HRESULT
	AddRef as function(byval This as IOleUILinkContainerA ptr) as ULONG_
	Release as function(byval This as IOleUILinkContainerA ptr) as ULONG_
	GetNextLink as function(byval This as IOleUILinkContainerA ptr, byval dwLink as DWORD) as DWORD
	SetLinkUpdateOptions as function(byval This as IOleUILinkContainerA ptr, byval dwLink as DWORD, byval dwUpdateOpt as DWORD) as HRESULT
	GetLinkUpdateOptions as function(byval This as IOleUILinkContainerA ptr, byval dwLink as DWORD, byval lpdwUpdateOpt as DWORD ptr) as HRESULT
	SetLinkSource as function(byval This as IOleUILinkContainerA ptr, byval dwLink as DWORD, byval lpszDisplayName as LPSTR, byval lenFileName as ULONG_, byval pchEaten as ULONG_ ptr, byval fValidateSource as WINBOOL) as HRESULT
	GetLinkSource as function(byval This as IOleUILinkContainerA ptr, byval dwLink as DWORD, byval lplpszDisplayName as LPSTR ptr, byval lplenFileName as ULONG_ ptr, byval lplpszFullLinkType as LPSTR ptr, byval lplpszShortLinkType as LPSTR ptr, byval lpfSourceAvailable as WINBOOL ptr, byval lpfIsSelected as WINBOOL ptr) as HRESULT
	OpenLinkSource as function(byval This as IOleUILinkContainerA ptr, byval dwLink as DWORD) as HRESULT
	UpdateLink as function(byval This as IOleUILinkContainerA ptr, byval dwLink as DWORD, byval fErrorMessage as WINBOOL, byval fReserved as WINBOOL) as HRESULT
	CancelLink as function(byval This as IOleUILinkContainerA ptr, byval dwLink as DWORD) as HRESULT
end type

type LPOLEUILINKCONTAINERA as IOleUILinkContainerA ptr

#define IOleUILinkContainer __MINGW_NAME_AW(IOleUILinkContainer)
#define LPOLEUILINKCONTAINER_ __MINGW_NAME_AW(LPOLEUILINKCONTAINER)
#define IOleUILinkContainerVtbl __MINGW_NAME_AW_EXT(IOleUILinkContainer, Vtbl)

type tagOLEUIEDITLINKSW field = 8
	cbStruct as DWORD
	dwFlags as DWORD
	hWndOwner as HWND
	lpszCaption as LPCWSTR
	lpfnHook as LPFNOLEUIHOOK
	lCustData as LPARAM
	hInstance as HINSTANCE
	lpszTemplate as LPCWSTR
	hResource as HRSRC
	lpOleUILinkContainer as LPOLEUILINKCONTAINERW
end type

type OLEUIEDITLINKSW as tagOLEUIEDITLINKSW
type POLEUIEDITLINKSW as tagOLEUIEDITLINKSW ptr
type LPOLEUIEDITLINKSW as tagOLEUIEDITLINKSW ptr

type tagOLEUIEDITLINKSA field = 8
	cbStruct as DWORD
	dwFlags as DWORD
	hWndOwner as HWND
	lpszCaption as LPCSTR
	lpfnHook as LPFNOLEUIHOOK
	lCustData as LPARAM
	hInstance as HINSTANCE
	lpszTemplate as LPCSTR
	hResource as HRSRC
	lpOleUILinkContainer as LPOLEUILINKCONTAINERA
end type

type OLEUIEDITLINKSA as tagOLEUIEDITLINKSA
type POLEUIEDITLINKSA as tagOLEUIEDITLINKSA ptr
type LPOLEUIEDITLINKSA as tagOLEUIEDITLINKSA ptr

#define tagOLEUIEDITLINKS __MINGW_NAME_AW(tagOLEUIEDITLINKS)
#define OLEUIEDITLINKS __MINGW_NAME_AW(OLEUIEDITLINKS)
#define POLEUIEDITLINKS __MINGW_NAME_AW(POLEUIEDITLINKS)
#define LPOLEUIEDITLINKS __MINGW_NAME_AW(LPOLEUIEDITLINKS)
#define OLEUI_ELERR_LINKCNTRNULL (OLEUI_ERR_STANDARDMAX + 0)
#define OLEUI_ELERR_LINKCNTRINVALID (OLEUI_ERR_STANDARDMAX + 1)

declare function OleUIEditLinksW(byval as LPOLEUIEDITLINKSW) as UINT
declare function OleUIEditLinksA(byval as LPOLEUIEDITLINKSA) as UINT

#define OleUIEditLinks_ __MINGW_NAME_AW(OleUIEditLinks)
#define ELF_SHOWHELP __MSABI_LONG(&h00000001)
#define ELF_DISABLEUPDATENOW __MSABI_LONG(&h00000002)
#define ELF_DISABLEOPENSOURCE __MSABI_LONG(&h00000004)
#define ELF_DISABLECHANGESOURCE __MSABI_LONG(&h00000008)
#define ELF_DISABLECANCELLINK __MSABI_LONG(&h00000010)

type tagOLEUICHANGEICONW field = 8
	cbStruct as DWORD
	dwFlags as DWORD
	hWndOwner as HWND
	lpszCaption as LPCWSTR
	lpfnHook as LPFNOLEUIHOOK
	lCustData as LPARAM
	hInstance as HINSTANCE
	lpszTemplate as LPCWSTR
	hResource as HRSRC
	hMetaPict as HGLOBAL
	clsid as CLSID
	szIconExe(0 to 259) as WCHAR
	cchIconExe as long
end type

type OLEUICHANGEICONW as tagOLEUICHANGEICONW
type POLEUICHANGEICONW as tagOLEUICHANGEICONW ptr
type LPOLEUICHANGEICONW as tagOLEUICHANGEICONW ptr

type tagOLEUICHANGEICONA field = 8
	cbStruct as DWORD
	dwFlags as DWORD
	hWndOwner as HWND
	lpszCaption as LPCSTR
	lpfnHook as LPFNOLEUIHOOK
	lCustData as LPARAM
	hInstance as HINSTANCE
	lpszTemplate as LPCSTR
	hResource as HRSRC
	hMetaPict as HGLOBAL
	clsid as CLSID
	szIconExe(0 to 259) as CHAR
	cchIconExe as long
end type

type OLEUICHANGEICONA as tagOLEUICHANGEICONA
type POLEUICHANGEICONA as tagOLEUICHANGEICONA ptr
type LPOLEUICHANGEICONA as tagOLEUICHANGEICONA ptr

declare function OleUIChangeIconW(byval as LPOLEUICHANGEICONW) as UINT
declare function OleUIChangeIconA(byval as LPOLEUICHANGEICONA) as UINT

#define tagOLEUICHANGEICON __MINGW_NAME_AW(tagOLEUICHANGEICON)
#define OLEUICHANGEICON __MINGW_NAME_AW(OLEUICHANGEICON)
#define POLEUICHANGEICON __MINGW_NAME_AW(POLEUICHANGEICON)
#define LPOLEUICHANGEICON __MINGW_NAME_AW(LPOLEUICHANGEICON)
#define OleUIChangeIcon_ __MINGW_NAME_AW(OleUIChangeIcon)
#define CIF_SHOWHELP __MSABI_LONG(&h00000001)
#define CIF_SELECTCURRENT __MSABI_LONG(&h00000002)
#define CIF_SELECTDEFAULT __MSABI_LONG(&h00000004)
#define CIF_SELECTFROMFILE __MSABI_LONG(&h00000008)
#define CIF_USEICONEXE __MSABI_LONG(&h00000010)
#define OLEUI_CIERR_MUSTHAVECLSID (OLEUI_ERR_STANDARDMAX + 0)
#define OLEUI_CIERR_MUSTHAVECURRENTMETAFILE (OLEUI_ERR_STANDARDMAX + 1)
#define OLEUI_CIERR_SZICONEXEINVALID (OLEUI_ERR_STANDARDMAX + 2)
#define PROP_HWND_CHGICONDLG TEXT_("HWND_CIDLG")

type tagOLEUICONVERTW field = 8
	cbStruct as DWORD
	dwFlags as DWORD
	hWndOwner as HWND
	lpszCaption as LPCWSTR
	lpfnHook as LPFNOLEUIHOOK
	lCustData as LPARAM
	hInstance as HINSTANCE
	lpszTemplate as LPCWSTR
	hResource as HRSRC
	clsid as CLSID
	clsidConvertDefault as CLSID
	clsidActivateDefault as CLSID
	clsidNew as CLSID
	dvAspect as DWORD
	wFormat as WORD
	fIsLinkedObject as WINBOOL
	hMetaPict as HGLOBAL
	lpszUserType as LPWSTR
	fObjectsIconChanged as WINBOOL
	lpszDefLabel as LPWSTR
	cClsidExclude as UINT
	lpClsidExclude as LPCLSID
end type

type OLEUICONVERTW as tagOLEUICONVERTW
type POLEUICONVERTW as tagOLEUICONVERTW ptr
type LPOLEUICONVERTW as tagOLEUICONVERTW ptr

type tagOLEUICONVERTA field = 8
	cbStruct as DWORD
	dwFlags as DWORD
	hWndOwner as HWND
	lpszCaption as LPCSTR
	lpfnHook as LPFNOLEUIHOOK
	lCustData as LPARAM
	hInstance as HINSTANCE
	lpszTemplate as LPCSTR
	hResource as HRSRC
	clsid as CLSID
	clsidConvertDefault as CLSID
	clsidActivateDefault as CLSID
	clsidNew as CLSID
	dvAspect as DWORD
	wFormat as WORD
	fIsLinkedObject as WINBOOL
	hMetaPict as HGLOBAL
	lpszUserType as LPSTR
	fObjectsIconChanged as WINBOOL
	lpszDefLabel as LPSTR
	cClsidExclude as UINT
	lpClsidExclude as LPCLSID
end type

type OLEUICONVERTA as tagOLEUICONVERTA
type POLEUICONVERTA as tagOLEUICONVERTA ptr
type LPOLEUICONVERTA as tagOLEUICONVERTA ptr

declare function OleUIConvertW(byval as LPOLEUICONVERTW) as UINT
declare function OleUIConvertA(byval as LPOLEUICONVERTA) as UINT

#define tagOLEUICONVERT __MINGW_NAME_AW(tagOLEUICONVERT)
#define OLEUICONVERT __MINGW_NAME_AW(OLEUICONVERT)
#define POLEUICONVERT __MINGW_NAME_AW(POLEUICONVERT)
#define LPOLEUICONVERT __MINGW_NAME_AW(LPOLEUICONVERT)
#define OleUIConvert_ __MINGW_NAME_AW(OleUIConvert)

declare function OleUICanConvertOrActivateAs(byval rClsid as const IID const ptr, byval fIsLinkedObject as WINBOOL, byval wFormat as WORD) as WINBOOL

#define CF_SHOWHELPBUTTON __MSABI_LONG(&h00000001)
#define CF_SETCONVERTDEFAULT __MSABI_LONG(&h00000002)
#define CF_SETACTIVATEDEFAULT __MSABI_LONG(&h00000004)
#define CF_SELECTCONVERTTO __MSABI_LONG(&h00000008)
#define CF_SELECTACTIVATEAS __MSABI_LONG(&h00000010)
#define CF_DISABLEDISPLAYASICON __MSABI_LONG(&h00000020)
#define CF_DISABLEACTIVATEAS __MSABI_LONG(&h00000040)
#define CF_HIDECHANGEICON __MSABI_LONG(&h00000080)
#define CF_CONVERTONLY __MSABI_LONG(&h00000100)
#define OLEUI_CTERR_CLASSIDINVALID (OLEUI_ERR_STANDARDMAX + 1)
#define OLEUI_CTERR_DVASPECTINVALID (OLEUI_ERR_STANDARDMAX + 2)
#define OLEUI_CTERR_CBFORMATINVALID (OLEUI_ERR_STANDARDMAX + 3)
#define OLEUI_CTERR_HMETAPICTINVALID (OLEUI_ERR_STANDARDMAX + 4)
#define OLEUI_CTERR_STRINGINVALID (OLEUI_ERR_STANDARDMAX + 5)

type tagOLEUIBUSYW field = 8
	cbStruct as DWORD
	dwFlags as DWORD
	hWndOwner as HWND
	lpszCaption as LPCWSTR
	lpfnHook as LPFNOLEUIHOOK
	lCustData as LPARAM
	hInstance as HINSTANCE
	lpszTemplate as LPCWSTR
	hResource as HRSRC
	hTask as HTASK
	lphWndDialog as HWND ptr
end type

type OLEUIBUSYW as tagOLEUIBUSYW
type POLEUIBUSYW as tagOLEUIBUSYW ptr
type LPOLEUIBUSYW as tagOLEUIBUSYW ptr

type tagOLEUIBUSYA field = 8
	cbStruct as DWORD
	dwFlags as DWORD
	hWndOwner as HWND
	lpszCaption as LPCSTR
	lpfnHook as LPFNOLEUIHOOK
	lCustData as LPARAM
	hInstance as HINSTANCE
	lpszTemplate as LPCSTR
	hResource as HRSRC
	hTask as HTASK
	lphWndDialog as HWND ptr
end type

type OLEUIBUSYA as tagOLEUIBUSYA
type POLEUIBUSYA as tagOLEUIBUSYA ptr
type LPOLEUIBUSYA as tagOLEUIBUSYA ptr

declare function OleUIBusyW(byval as LPOLEUIBUSYW) as UINT
declare function OleUIBusyA(byval as LPOLEUIBUSYA) as UINT

#define tagOLEUIBUSY __MINGW_NAME_AW(tagOLEUIBUSY)
#define OLEUIBUSY __MINGW_NAME_AW(OLEUIBUSY)
#define POLEUIBUSY __MINGW_NAME_AW(POLEUIBUSY)
#define LPOLEUIBUSY __MINGW_NAME_AW(LPOLEUIBUSY)
#define OleUIBusy_ __MINGW_NAME_AW(OleUIBusy)
#define BZ_DISABLECANCELBUTTON __MSABI_LONG(&h00000001)
#define BZ_DISABLESWITCHTOBUTTON __MSABI_LONG(&h00000002)
#define BZ_DISABLERETRYBUTTON __MSABI_LONG(&h00000004)
#define BZ_NOTRESPONDINGDIALOG __MSABI_LONG(&h00000008)
#define OLEUI_BZERR_HTASKINVALID (OLEUI_ERR_STANDARDMAX + 0)
#define OLEUI_BZ_SWITCHTOSELECTED (OLEUI_ERR_STANDARDMAX + 1)
#define OLEUI_BZ_RETRYSELECTED (OLEUI_ERR_STANDARDMAX + 2)
#define OLEUI_BZ_CALLUNBLOCKED (OLEUI_ERR_STANDARDMAX + 3)

type tagOLEUICHANGESOURCEW field = 8
	cbStruct as DWORD
	dwFlags as DWORD
	hWndOwner as HWND
	lpszCaption as LPCWSTR
	lpfnHook as LPFNOLEUIHOOK
	lCustData as LPARAM
	hInstance as HINSTANCE
	lpszTemplate as LPCWSTR
	hResource as HRSRC
	lpOFN as OPENFILENAMEW ptr
	dwReserved1(0 to 3) as DWORD
	lpOleUILinkContainer as LPOLEUILINKCONTAINERW
	dwLink as DWORD
	lpszDisplayName as LPWSTR
	nFileLength as ULONG_
	lpszFrom as LPWSTR
	lpszTo as LPWSTR
end type

type OLEUICHANGESOURCEW as tagOLEUICHANGESOURCEW
type POLEUICHANGESOURCEW as tagOLEUICHANGESOURCEW ptr
type LPOLEUICHANGESOURCEW as tagOLEUICHANGESOURCEW ptr

type tagOLEUICHANGESOURCEA field = 8
	cbStruct as DWORD
	dwFlags as DWORD
	hWndOwner as HWND
	lpszCaption as LPCSTR
	lpfnHook as LPFNOLEUIHOOK
	lCustData as LPARAM
	hInstance as HINSTANCE
	lpszTemplate as LPCSTR
	hResource as HRSRC
	lpOFN as OPENFILENAMEA ptr
	dwReserved1(0 to 3) as DWORD
	lpOleUILinkContainer as LPOLEUILINKCONTAINERA
	dwLink as DWORD
	lpszDisplayName as LPSTR
	nFileLength as ULONG_
	lpszFrom as LPSTR
	lpszTo as LPSTR
end type

type OLEUICHANGESOURCEA as tagOLEUICHANGESOURCEA
type POLEUICHANGESOURCEA as tagOLEUICHANGESOURCEA ptr
type LPOLEUICHANGESOURCEA as tagOLEUICHANGESOURCEA ptr

declare function OleUIChangeSourceW(byval as LPOLEUICHANGESOURCEW) as UINT
declare function OleUIChangeSourceA(byval as LPOLEUICHANGESOURCEA) as UINT

#define tagOLEUICHANGESOURCE __MINGW_NAME_AW(tagOLEUICHANGESOURCE)
#define OLEUICHANGESOURCE __MINGW_NAME_AW(OLEUICHANGESOURCE)
#define POLEUICHANGESOURCE __MINGW_NAME_AW(POLEUICHANGESOURCE)
#define LPOLEUICHANGESOURCE __MINGW_NAME_AW(LPOLEUICHANGESOURCE)
#define OleUIChangeSource_ __MINGW_NAME_AW(OleUIChangeSource)
#define CSF_SHOWHELP __MSABI_LONG(&h00000001)
#define CSF_VALIDSOURCE __MSABI_LONG(&h00000002)
#define CSF_ONLYGETSOURCE __MSABI_LONG(&h00000004)
#define CSF_EXPLORER __MSABI_LONG(&h00000008)
#define OLEUI_CSERR_LINKCNTRNULL (OLEUI_ERR_STANDARDMAX + 0)
#define OLEUI_CSERR_LINKCNTRINVALID (OLEUI_ERR_STANDARDMAX + 1)
#define OLEUI_CSERR_FROMNOTNULL (OLEUI_ERR_STANDARDMAX + 2)
#define OLEUI_CSERR_TONOTNULL (OLEUI_ERR_STANDARDMAX + 3)
#define OLEUI_CSERR_SOURCENULL (OLEUI_ERR_STANDARDMAX + 4)
#define OLEUI_CSERR_SOURCEINVALID (OLEUI_ERR_STANDARDMAX + 5)
#define OLEUI_CSERR_SOURCEPARSERROR (OLEUI_ERR_STANDARDMAX + 6)
#define OLEUI_CSERR_SOURCEPARSEERROR (OLEUI_ERR_STANDARDMAX + 6)

type IOleUIObjInfoW field = 8
	lpVtbl as IOleUIObjInfoWVtbl ptr
end type

type IOleUIObjInfoWVtbl_ field = 8
	QueryInterface as function(byval This as IOleUIObjInfoW ptr, byval riid as const IID const ptr, byval ppvObj as LPVOID ptr) as HRESULT
	AddRef as function(byval This as IOleUIObjInfoW ptr) as ULONG_
	Release as function(byval This as IOleUIObjInfoW ptr) as ULONG_
	GetObjectInfo as function(byval This as IOleUIObjInfoW ptr, byval dwObject as DWORD, byval lpdwObjSize as DWORD ptr, byval lplpszLabel as LPWSTR ptr, byval lplpszType as LPWSTR ptr, byval lplpszShortType as LPWSTR ptr, byval lplpszLocation as LPWSTR ptr) as HRESULT
	GetConvertInfo as function(byval This as IOleUIObjInfoW ptr, byval dwObject as DWORD, byval lpClassID as CLSID ptr, byval lpwFormat as WORD ptr, byval lpConvertDefaultClassID as CLSID ptr, byval lplpClsidExclude as LPCLSID ptr, byval lpcClsidExclude as UINT ptr) as HRESULT
	ConvertObject as function(byval This as IOleUIObjInfoW ptr, byval dwObject as DWORD, byval clsidNew as const IID const ptr) as HRESULT
	GetViewInfo as function(byval This as IOleUIObjInfoW ptr, byval dwObject as DWORD, byval phMetaPict as HGLOBAL ptr, byval pdvAspect as DWORD ptr, byval pnCurrentScale as long ptr) as HRESULT
	SetViewInfo as function(byval This as IOleUIObjInfoW ptr, byval dwObject as DWORD, byval hMetaPict as HGLOBAL, byval dvAspect as DWORD, byval nCurrentScale as long, byval bRelativeToOrig as WINBOOL) as HRESULT
end type

type LPOLEUIOBJINFOW as IOleUIObjInfoW ptr

type IOleUIObjInfoA field = 8
	lpVtbl as IOleUIObjInfoAVtbl ptr
end type

type IOleUIObjInfoAVtbl_ field = 8
	QueryInterface as function(byval This as IOleUIObjInfoA ptr, byval riid as const IID const ptr, byval ppvObj as LPVOID ptr) as HRESULT
	AddRef as function(byval This as IOleUIObjInfoA ptr) as ULONG_
	Release as function(byval This as IOleUIObjInfoA ptr) as ULONG_
	GetObjectInfo as function(byval This as IOleUIObjInfoA ptr, byval dwObject as DWORD, byval lpdwObjSize as DWORD ptr, byval lplpszLabel as LPSTR ptr, byval lplpszType as LPSTR ptr, byval lplpszShortType as LPSTR ptr, byval lplpszLocation as LPSTR ptr) as HRESULT
	GetConvertInfo as function(byval This as IOleUIObjInfoA ptr, byval dwObject as DWORD, byval lpClassID as CLSID ptr, byval lpwFormat as WORD ptr, byval lpConvertDefaultClassID as CLSID ptr, byval lplpClsidExclude as LPCLSID ptr, byval lpcClsidExclude as UINT ptr) as HRESULT
	ConvertObject as function(byval This as IOleUIObjInfoA ptr, byval dwObject as DWORD, byval clsidNew as const IID const ptr) as HRESULT
	GetViewInfo as function(byval This as IOleUIObjInfoA ptr, byval dwObject as DWORD, byval phMetaPict as HGLOBAL ptr, byval pdvAspect as DWORD ptr, byval pnCurrentScale as long ptr) as HRESULT
	SetViewInfo as function(byval This as IOleUIObjInfoA ptr, byval dwObject as DWORD, byval hMetaPict as HGLOBAL, byval dvAspect as DWORD, byval nCurrentScale as long, byval bRelativeToOrig as WINBOOL) as HRESULT
end type

type LPOLEUIOBJINFOA as IOleUIObjInfoA ptr

#define IOleUIObjInfo __MINGW_NAME_AW(IOleUIObjInfo)
#define LPOLEUIOBJINFO __MINGW_NAME_AW(LPOLEUIOBJINFO)
#define IOleUIObjInfoVtbl __MINGW_NAME_AW_EXT(IOleUIObjInfo, Vtbl)

type IOleUILinkInfoW field = 8
	lpVtbl as IOleUILinkInfoWVtbl ptr
end type

type IOleUILinkInfoWVtbl_ field = 8
	QueryInterface as function(byval This as IOleUILinkInfoW ptr, byval riid as const IID const ptr, byval ppvObj as LPVOID ptr) as HRESULT
	AddRef as function(byval This as IOleUILinkInfoW ptr) as ULONG_
	Release as function(byval This as IOleUILinkInfoW ptr) as ULONG_
	GetNextLink as function(byval This as IOleUILinkInfoW ptr, byval dwLink as DWORD) as DWORD
	SetLinkUpdateOptions as function(byval This as IOleUILinkInfoW ptr, byval dwLink as DWORD, byval dwUpdateOpt as DWORD) as HRESULT
	GetLinkUpdateOptions as function(byval This as IOleUILinkInfoW ptr, byval dwLink as DWORD, byval lpdwUpdateOpt as DWORD ptr) as HRESULT
	SetLinkSource as function(byval This as IOleUILinkInfoW ptr, byval dwLink as DWORD, byval lpszDisplayName as LPWSTR, byval lenFileName as ULONG_, byval pchEaten as ULONG_ ptr, byval fValidateSource as WINBOOL) as HRESULT
	GetLinkSource as function(byval This as IOleUILinkInfoW ptr, byval dwLink as DWORD, byval lplpszDisplayName as LPWSTR ptr, byval lplenFileName as ULONG_ ptr, byval lplpszFullLinkType as LPWSTR ptr, byval lplpszShortLinkType as LPWSTR ptr, byval lpfSourceAvailable as WINBOOL ptr, byval lpfIsSelected as WINBOOL ptr) as HRESULT
	OpenLinkSource as function(byval This as IOleUILinkInfoW ptr, byval dwLink as DWORD) as HRESULT
	UpdateLink as function(byval This as IOleUILinkInfoW ptr, byval dwLink as DWORD, byval fErrorMessage as WINBOOL, byval fReserved as WINBOOL) as HRESULT
	CancelLink as function(byval This as IOleUILinkInfoW ptr, byval dwLink as DWORD) as HRESULT
	GetLastUpdate as function(byval This as IOleUILinkInfoW ptr, byval dwLink as DWORD, byval lpLastUpdate as FILETIME ptr) as HRESULT
end type

type LPOLEUILINKINFOW as IOleUILinkInfoW ptr

type IOleUILinkInfoA field = 8
	lpVtbl as IOleUILinkInfoAVtbl ptr
end type

type IOleUILinkInfoAVtbl_ field = 8
	QueryInterface as function(byval This as IOleUILinkInfoA ptr, byval riid as const IID const ptr, byval ppvObj as LPVOID ptr) as HRESULT
	AddRef as function(byval This as IOleUILinkInfoA ptr) as ULONG_
	Release as function(byval This as IOleUILinkInfoA ptr) as ULONG_
	GetNextLink as function(byval This as IOleUILinkInfoA ptr, byval dwLink as DWORD) as DWORD
	SetLinkUpdateOptions as function(byval This as IOleUILinkInfoA ptr, byval dwLink as DWORD, byval dwUpdateOpt as DWORD) as HRESULT
	GetLinkUpdateOptions as function(byval This as IOleUILinkInfoA ptr, byval dwLink as DWORD, byval lpdwUpdateOpt as DWORD ptr) as HRESULT
	SetLinkSource as function(byval This as IOleUILinkInfoA ptr, byval dwLink as DWORD, byval lpszDisplayName as LPSTR, byval lenFileName as ULONG_, byval pchEaten as ULONG_ ptr, byval fValidateSource as WINBOOL) as HRESULT
	GetLinkSource as function(byval This as IOleUILinkInfoA ptr, byval dwLink as DWORD, byval lplpszDisplayName as LPSTR ptr, byval lplenFileName as ULONG_ ptr, byval lplpszFullLinkType as LPSTR ptr, byval lplpszShortLinkType as LPSTR ptr, byval lpfSourceAvailable as WINBOOL ptr, byval lpfIsSelected as WINBOOL ptr) as HRESULT
	OpenLinkSource as function(byval This as IOleUILinkInfoA ptr, byval dwLink as DWORD) as HRESULT
	UpdateLink as function(byval This as IOleUILinkInfoA ptr, byval dwLink as DWORD, byval fErrorMessage as WINBOOL, byval fReserved as WINBOOL) as HRESULT
	CancelLink as function(byval This as IOleUILinkInfoA ptr, byval dwLink as DWORD) as HRESULT
	GetLastUpdate as function(byval This as IOleUILinkInfoA ptr, byval dwLink as DWORD, byval lpLastUpdate as FILETIME ptr) as HRESULT
end type

type LPOLEUILINKINFOA as IOleUILinkInfoA ptr

#define IOleUILinkInfo __MINGW_NAME_AW(IOleUILinkInfo)
#define LPOLEUILINKINFO __MINGW_NAME_AW(LPOLEUILINKINFO)
#define IOleUILinkInfoVtbl __MINGW_NAME_AW_EXT(IOleUILinkInfo, Vtbl)

type tagOLEUIGNRLPROPSW field = 8
	cbStruct as DWORD
	dwFlags as DWORD
	dwReserved1(0 to 1) as DWORD
	lpfnHook as LPFNOLEUIHOOK
	lCustData as LPARAM
	dwReserved2(0 to 2) as DWORD
	lpOP as tagOLEUIOBJECTPROPSW ptr
end type

type OLEUIGNRLPROPSW as tagOLEUIGNRLPROPSW
type POLEUIGNRLPROPSW as tagOLEUIGNRLPROPSW ptr
type LPOLEUIGNRLPROPSW as tagOLEUIGNRLPROPSW ptr

type tagOLEUIGNRLPROPSA field = 8
	cbStruct as DWORD
	dwFlags as DWORD
	dwReserved1(0 to 1) as DWORD
	lpfnHook as LPFNOLEUIHOOK
	lCustData as LPARAM
	dwReserved2(0 to 2) as DWORD
	lpOP as tagOLEUIOBJECTPROPSA ptr
end type

type OLEUIGNRLPROPSA as tagOLEUIGNRLPROPSA
type POLEUIGNRLPROPSA as tagOLEUIGNRLPROPSA ptr
type LPOLEUIGNRLPROPSA as tagOLEUIGNRLPROPSA ptr

#define tagOLEUIGNRLPROPS __MINGW_NAME_AW(tagOLEUIGNRLPROPS)
#define OLEUIGNRLPROPS __MINGW_NAME_AW(OLEUIGNRLPROPS)
#define POLEUIGNRLPROPS __MINGW_NAME_AW(POLEUIGNRLPROPS)
#define LPOLEUIGNRLPROPS __MINGW_NAME_AW(LPOLEUIGNRLPROPS)

type tagOLEUIVIEWPROPSW field = 8
	cbStruct as DWORD
	dwFlags as DWORD
	dwReserved1(0 to 1) as DWORD
	lpfnHook as LPFNOLEUIHOOK
	lCustData as LPARAM
	dwReserved2(0 to 2) as DWORD
	lpOP as tagOLEUIOBJECTPROPSW ptr
	nScaleMin as long
	nScaleMax as long
end type

type OLEUIVIEWPROPSW as tagOLEUIVIEWPROPSW
type POLEUIVIEWPROPSW as tagOLEUIVIEWPROPSW ptr
type LPOLEUIVIEWPROPSW as tagOLEUIVIEWPROPSW ptr

type tagOLEUIVIEWPROPSA field = 8
	cbStruct as DWORD
	dwFlags as DWORD
	dwReserved1(0 to 1) as DWORD
	lpfnHook as LPFNOLEUIHOOK
	lCustData as LPARAM
	dwReserved2(0 to 2) as DWORD
	lpOP as tagOLEUIOBJECTPROPSA ptr
	nScaleMin as long
	nScaleMax as long
end type

type OLEUIVIEWPROPSA as tagOLEUIVIEWPROPSA
type POLEUIVIEWPROPSA as tagOLEUIVIEWPROPSA ptr
type LPOLEUIVIEWPROPSA as tagOLEUIVIEWPROPSA ptr

#define tagOLEUIVIEWPROPS __MINGW_NAME_AW(tagOLEUIVIEWPROPS)
#define OLEUIVIEWPROPS __MINGW_NAME_AW(OLEUIVIEWPROPS)
#define POLEUIVIEWPROPS __MINGW_NAME_AW(POLEUIVIEWPROPS)
#define LPOLEUIVIEWPROPS __MINGW_NAME_AW(LPOLEUIVIEWPROPS)
#define VPF_SELECTRELATIVE __MSABI_LONG(&h00000001)
#define VPF_DISABLERELATIVE __MSABI_LONG(&h00000002)
#define VPF_DISABLESCALE __MSABI_LONG(&h00000004)

type tagOLEUILINKPROPSW field = 8
	cbStruct as DWORD
	dwFlags as DWORD
	dwReserved1(0 to 1) as DWORD
	lpfnHook as LPFNOLEUIHOOK
	lCustData as LPARAM
	dwReserved2(0 to 2) as DWORD
	lpOP as tagOLEUIOBJECTPROPSW ptr
end type

type OLEUILINKPROPSW as tagOLEUILINKPROPSW
type POLEUILINKPROPSW as tagOLEUILINKPROPSW ptr
type LPOLEUILINKPROPSW as tagOLEUILINKPROPSW ptr

type tagOLEUILINKPROPSA field = 8
	cbStruct as DWORD
	dwFlags as DWORD
	dwReserved1(0 to 1) as DWORD
	lpfnHook as LPFNOLEUIHOOK
	lCustData as LPARAM
	dwReserved2(0 to 2) as DWORD
	lpOP as tagOLEUIOBJECTPROPSA ptr
end type

type OLEUILINKPROPSA as tagOLEUILINKPROPSA
type POLEUILINKPROPSA as tagOLEUILINKPROPSA ptr
type LPOLEUILINKPROPSA as tagOLEUILINKPROPSA ptr

#define tagOLEUILINKPROPS __MINGW_NAME_AW(tagOLEUILINKPROPS)
#define OLEUILINKPROPS __MINGW_NAME_AW(OLEUILINKPROPS)
#define POLEUILINKPROPS __MINGW_NAME_AW(POLEUILINKPROPS)
#define LPOLEUILINKPROPS __MINGW_NAME_AW(LPOLEUILINKPROPS)
#define LPPROPSHEETHEADER __MINGW_NAME_AW(LPPROPSHEETHEADER)

type tagOLEUIOBJECTPROPSW_ field = 8
	cbStruct as DWORD
	dwFlags as DWORD
	lpPS as LPPROPSHEETHEADERW
	dwObject as DWORD
	lpObjInfo as LPOLEUIOBJINFOW
	dwLink as DWORD
	lpLinkInfo as LPOLEUILINKINFOW
	lpGP as LPOLEUIGNRLPROPSW
	lpVP as LPOLEUIVIEWPROPSW
	lpLP as LPOLEUILINKPROPSW
end type

type OLEUIOBJECTPROPSW as tagOLEUIOBJECTPROPSW
type POLEUIOBJECTPROPSW as tagOLEUIOBJECTPROPSW ptr
type LPOLEUIOBJECTPROPSW as tagOLEUIOBJECTPROPSW ptr

type tagOLEUIOBJECTPROPSA_ field = 8
	cbStruct as DWORD
	dwFlags as DWORD
	lpPS as LPPROPSHEETHEADERA
	dwObject as DWORD
	lpObjInfo as LPOLEUIOBJINFOA
	dwLink as DWORD
	lpLinkInfo as LPOLEUILINKINFOA
	lpGP as LPOLEUIGNRLPROPSA
	lpVP as LPOLEUIVIEWPROPSA
	lpLP as LPOLEUILINKPROPSA
end type

type OLEUIOBJECTPROPSA as tagOLEUIOBJECTPROPSA
type POLEUIOBJECTPROPSA as tagOLEUIOBJECTPROPSA ptr
type LPOLEUIOBJECTPROPSA as tagOLEUIOBJECTPROPSA ptr

declare function OleUIObjectPropertiesW(byval as LPOLEUIOBJECTPROPSW) as UINT
declare function OleUIObjectPropertiesA(byval as LPOLEUIOBJECTPROPSA) as UINT

#define tagOLEUIOBJECTPROPS __MINGW_NAME_AW(tagOLEUIOBJECTPROPS)
#define OLEUIOBJECTPROPS __MINGW_NAME_AW(OLEUIOBJECTPROPS)
#define POLEUIOBJECTPROPS __MINGW_NAME_AW(POLEUIOBJECTPROPS)
#define LPOLEUIOBJECTPROPS __MINGW_NAME_AW(LPOLEUIOBJECTPROPS)
#define OleUIObjectProperties __MINGW_NAME_AW(OleUIObjectProperties)
#define OPF_OBJECTISLINK __MSABI_LONG(&h00000001)
#define OPF_NOFILLDEFAULT __MSABI_LONG(&h00000002)
#define OPF_SHOWHELP __MSABI_LONG(&h00000004)
#define OPF_DISABLECONVERT __MSABI_LONG(&h00000008)
#define OLEUI_OPERR_SUBPROPNULL (OLEUI_ERR_STANDARDMAX + 0)
#define OLEUI_OPERR_SUBPROPINVALID (OLEUI_ERR_STANDARDMAX + 1)
#define OLEUI_OPERR_PROPSHEETNULL (OLEUI_ERR_STANDARDMAX + 2)
#define OLEUI_OPERR_PROPSHEETINVALID (OLEUI_ERR_STANDARDMAX + 3)
#define OLEUI_OPERR_SUPPROP (OLEUI_ERR_STANDARDMAX + 4)
#define OLEUI_OPERR_PROPSINVALID (OLEUI_ERR_STANDARDMAX + 5)
#define OLEUI_OPERR_PAGESINCORRECT (OLEUI_ERR_STANDARDMAX + 6)
#define OLEUI_OPERR_INVALIDPAGES (OLEUI_ERR_STANDARDMAX + 7)
#define OLEUI_OPERR_NOTSUPPORTED (OLEUI_ERR_STANDARDMAX + 8)
#define OLEUI_OPERR_DLGPROCNOTNULL (OLEUI_ERR_STANDARDMAX + 9)
#define OLEUI_OPERR_LPARAMNOTZERO (OLEUI_ERR_STANDARDMAX + 10)
#define OLEUI_GPERR_STRINGINVALID (OLEUI_ERR_STANDARDMAX + 11)
#define OLEUI_GPERR_CLASSIDINVALID (OLEUI_ERR_STANDARDMAX + 12)
#define OLEUI_GPERR_LPCLSIDEXCLUDEINVALID (OLEUI_ERR_STANDARDMAX + 13)
#define OLEUI_GPERR_CBFORMATINVALID (OLEUI_ERR_STANDARDMAX + 14)
#define OLEUI_VPERR_METAPICTINVALID (OLEUI_ERR_STANDARDMAX + 15)
#define OLEUI_VPERR_DVASPECTINVALID (OLEUI_ERR_STANDARDMAX + 16)
#define OLEUI_LPERR_LINKCNTRNULL (OLEUI_ERR_STANDARDMAX + 17)
#define OLEUI_LPERR_LINKCNTRINVALID (OLEUI_ERR_STANDARDMAX + 18)
#define OLEUI_OPERR_PROPERTYSHEET (OLEUI_ERR_STANDARDMAX + 19)
#define OLEUI_OPERR_OBJINFOINVALID (OLEUI_ERR_STANDARDMAX + 20)
#define OLEUI_OPERR_LINKINFOINVALID (OLEUI_ERR_STANDARDMAX + 21)
#define OLEUI_QUERY_GETCLASSID &hFF00
#define OLEUI_QUERY_LINKBROKEN &hFF01

declare function OleUIPromptUserW cdecl(byval nTemplate as long, byval hwndParent as HWND, ...) as long
declare function OleUIPromptUserA cdecl(byval nTemplate as long, byval hwndParent as HWND, ...) as long

#define OleUIPromptUser __MINGW_NAME_AW(OleUIPromptUser)

declare function OleUIUpdateLinksW(byval lpOleUILinkCntr as LPOLEUILINKCONTAINERW, byval hwndParent as HWND, byval lpszTitle as LPWSTR, byval cLinks as long) as WINBOOL
declare function OleUIUpdateLinksA(byval lpOleUILinkCntr as LPOLEUILINKCONTAINERA, byval hwndParent as HWND, byval lpszTitle as LPSTR, byval cLinks as long) as WINBOOL

#define OleUIUpdateLinks __MINGW_NAME_AW(OleUIUpdateLinks)

end extern