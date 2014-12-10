#pragma once

#include once "crt/long.bi"
#include once "rpc.bi"
#include once "rpcndr.bi"
#include once "ole2.bi"
#include once "wtypesbase.bi"

'' The following symbols have been renamed:
''     typedef DATE => DATE_

extern "C"

#define __REQUIRED_RPCNDR_H_VERSION__ 475
#define __wtypes_h__
#define __IWinTypes_INTERFACE_DEFINED__

extern IWinTypes_v0_1_c_ifspec as RPC_IF_HANDLE
extern IWinTypes_v0_1_s_ifspec as RPC_IF_HANDLE

type tagRemHGLOBAL field = 8
	fNullHGlobal as LONG_
	cbData as ULONG_
	data(0 to 0) as byte__
end type

type RemHGLOBAL as tagRemHGLOBAL

type tagRemHMETAFILEPICT field = 8
	mm as LONG_
	xExt as LONG_
	yExt as LONG_
	cbData as ULONG_
	data(0 to 0) as byte__
end type

type RemHMETAFILEPICT as tagRemHMETAFILEPICT

type tagRemHENHMETAFILE field = 8
	cbData as ULONG_
	data(0 to 0) as byte__
end type

type RemHENHMETAFILE as tagRemHENHMETAFILE

type tagRemHBITMAP field = 8
	cbData as ULONG_
	data(0 to 0) as byte__
end type

type RemHBITMAP as tagRemHBITMAP

type tagRemHPALETTE field = 8
	cbData as ULONG_
	data(0 to 0) as byte__
end type

type RemHPALETTE as tagRemHPALETTE

type tagRemBRUSH field = 8
	cbData as ULONG_
	data(0 to 0) as byte__
end type

type RemHBRUSH as tagRemBRUSH

#define _ROTFLAGS_DEFINED
#define ROTFLAGS_REGISTRATIONKEEPSALIVE &h1
#define ROTFLAGS_ALLOWANYCLIENT &h2
#define _ROT_COMPARE_MAX_DEFINED
#define ROT_COMPARE_MAX 2048

type tagDVASPECT as long
enum
	DVASPECT_CONTENT = 1
	DVASPECT_THUMBNAIL = 2
	DVASPECT_ICON = 4
	DVASPECT_DOCPRINT = 8
end enum

type DVASPECT as tagDVASPECT

type tagSTGC as long
enum
	STGC_DEFAULT = 0
	STGC_OVERWRITE = 1
	STGC_ONLYIFCURRENT = 2
	STGC_DANGEROUSLYCOMMITMERELYTODISKCACHE = 4
	STGC_CONSOLIDATE = 8
end enum

type STGC as tagSTGC

type tagSTGMOVE as long
enum
	STGMOVE_MOVE = 0
	STGMOVE_COPY = 1
	STGMOVE_SHALLOWCOPY = 2
end enum

type STGMOVE as tagSTGMOVE

type tagSTATFLAG as long
enum
	STATFLAG_DEFAULT = 0
	STATFLAG_NONAME = 1
	STATFLAG_NOOPEN = 2
end enum

type STATFLAG as tagSTATFLAG
type HCONTEXT as any ptr

#define WDT_INPROC_CALL &h48746457
#define WDT_REMOTE_CALL &h52746457
#define WDT_INPROC64_CALL &h50746457

union ___userCLIPFORMAT_u field = 8
	dwValue as DWORD
	pwszName as wstring ptr
end union

type _userCLIPFORMAT field = 8
	fContext as LONG_
	u as ___userCLIPFORMAT_u
end type

type userCLIPFORMAT as _userCLIPFORMAT
type wireCLIPFORMAT as userCLIPFORMAT ptr
type CLIPFORMAT as WORD

union ___GDI_NONREMOTE_u field = 8
	hInproc as LONG_
	hRemote as DWORD_BLOB ptr
end union

type _GDI_NONREMOTE field = 8
	fContext as LONG_
	u as ___GDI_NONREMOTE_u
end type

type GDI_NONREMOTE as _GDI_NONREMOTE

union ___userHGLOBAL_u field = 8
	hInproc as LONG_
	hRemote as FLAGGED_BYTE_BLOB ptr
	hInproc64 as INT64
end union

type _userHGLOBAL field = 8
	fContext as LONG_
	u as ___userHGLOBAL_u
end type

type userHGLOBAL as _userHGLOBAL
type wireHGLOBAL as userHGLOBAL ptr

union ___userHMETAFILE_u field = 8
	hInproc as LONG_
	hRemote as BYTE_BLOB ptr
	hInproc64 as INT64
end union

type _userHMETAFILE field = 8
	fContext as LONG_
	u as ___userHMETAFILE_u
end type

type userHMETAFILE as _userHMETAFILE

type _remoteMETAFILEPICT field = 8
	mm as LONG_
	xExt as LONG_
	yExt as LONG_
	hMF as userHMETAFILE ptr
end type

type remoteMETAFILEPICT as _remoteMETAFILEPICT

union ___userHMETAFILEPICT_u field = 8
	hInproc as LONG_
	hRemote as remoteMETAFILEPICT ptr
	hInproc64 as INT64
end union

type _userHMETAFILEPICT field = 8
	fContext as LONG_
	u as ___userHMETAFILEPICT_u
end type

type userHMETAFILEPICT as _userHMETAFILEPICT

union ___userHENHMETAFILE_u field = 8
	hInproc as LONG_
	hRemote as BYTE_BLOB ptr
	hInproc64 as INT64
end union

type _userHENHMETAFILE field = 8
	fContext as LONG_
	u as ___userHENHMETAFILE_u
end type

type userHENHMETAFILE as _userHENHMETAFILE

type _userBITMAP field = 8
	bmType as LONG_
	bmWidth as LONG_
	bmHeight as LONG_
	bmWidthBytes as LONG_
	bmPlanes as WORD
	bmBitsPixel as WORD
	cbSize as ULONG_
	pBuffer(0 to 0) as byte__
end type

type userBITMAP as _userBITMAP

union ___userHBITMAP_u field = 8
	hInproc as LONG_
	hRemote as userBITMAP ptr
	hInproc64 as INT64
end union

type _userHBITMAP field = 8
	fContext as LONG_
	u as ___userHBITMAP_u
end type

type userHBITMAP as _userHBITMAP

union ___userHPALETTE_u field = 8
	hInproc as LONG_
	hRemote as LOGPALETTE ptr
	hInproc64 as INT64
end union

type _userHPALETTE field = 8
	fContext as LONG_
	u as ___userHPALETTE_u
end type

type userHPALETTE as _userHPALETTE

union ___RemotableHandle_u field = 8
	hInproc as LONG_
	hRemote as LONG_
end union

type _RemotableHandle field = 8
	fContext as LONG_
	u as ___RemotableHandle_u
end type

type RemotableHandle as _RemotableHandle
type wireHWND as RemotableHandle ptr
type wireHMENU as RemotableHandle ptr
type wireHACCEL as RemotableHandle ptr
type wireHBRUSH as RemotableHandle ptr
type wireHFONT as RemotableHandle ptr
type wireHDC as RemotableHandle ptr
type wireHICON as RemotableHandle ptr
type wireHRGN as RemotableHandle ptr
type wireHMONITOR as RemotableHandle ptr
type wireHBITMAP as userHBITMAP ptr
type wireHPALETTE as userHPALETTE ptr
type wireHENHMETAFILE as userHENHMETAFILE ptr
type wireHMETAFILE as userHMETAFILE ptr
type wireHMETAFILEPICT as userHMETAFILEPICT ptr
type HMETAFILEPICT as any ptr
type DATE_ as double

#define _tagCY_DEFINED
#define _CY_DEFINED

union tagCY field = 8
	type field = 8
		Lo as culong
		Hi as clong
	end type

	int64 as LONGLONG
end union

type CY as tagCY
type LPCY as CY ptr

type tagDEC field = 8
	wReserved as USHORT_

	union field = 8
		type field = 8
			scale as BYTE_
			sign as BYTE_
		end type

		signscale as USHORT_
	end union

	Hi32 as ULONG_

	union field = 8
		type field = 8
			Lo32 as ULONG_
			Mid32 as ULONG_
		end type

		Lo64 as ULONGLONG
	end union
end type

type DECIMAL as tagDEC

#define DECIMAL_NEG cast(BYTE_, &h80)
#macro DECIMAL_SETZERO(dec)
	scope
		(dec).Lo64
		'' TODO: (dec).Lo64 = 0;
		(dec).Hi32
		'' TODO: (dec).Hi32 = 0;
		(dec).signscale
		'' TODO: (dec).signscale = 0;
	end scope
#endmacro

type LPDECIMAL as DECIMAL ptr
type wireBSTR as FLAGGED_WORD_BLOB ptr
type BSTR as OLECHAR ptr
type LPBSTR as BSTR ptr
type VARIANT_BOOL as short

'' TODO: #define _VARIANT_BOOL /##/

#define _tagBSTRBLOB_DEFINED

type tagBSTRBLOB field = 8
	cbSize as ULONG_
	pData as BYTE_ ptr
end type

type BSTRBLOB as tagBSTRBLOB
type LPBSTRBLOB as tagBSTRBLOB ptr

#define VARIANT_TRUE cast(VARIANT_BOOL, -1)
#define VARIANT_FALSE cast(VARIANT_BOOL, 0)

type tagCLIPDATA field = 8
	cbSize as ULONG_
	ulClipFmt as LONG_
	pClipData as BYTE_ ptr
end type

type CLIPDATA as tagCLIPDATA

#define CBPCLIPDATA(clipdata) ((clipdata).cbSize - sizeof((clipdata).ulClipFmt))

type VARTYPE as ushort

type VARENUM as long
enum
	VT_EMPTY = 0
	VT_NULL = 1
	VT_I2 = 2
	VT_I4 = 3
	VT_R4 = 4
	VT_R8 = 5
	VT_CY = 6
	VT_DATE = 7
	VT_BSTR = 8
	VT_DISPATCH = 9
	VT_ERROR = 10
	VT_BOOL = 11
	VT_VARIANT = 12
	VT_UNKNOWN = 13
	VT_DECIMAL = 14
	VT_I1 = 16
	VT_UI1 = 17
	VT_UI2 = 18
	VT_UI4 = 19
	VT_I8 = 20
	VT_UI8 = 21
	VT_INT = 22
	VT_UINT = 23
	VT_VOID = 24
	VT_HRESULT = 25
	VT_PTR = 26
	VT_SAFEARRAY = 27
	VT_CARRAY = 28
	VT_USERDEFINED = 29
	VT_LPSTR = 30
	VT_LPWSTR = 31
	VT_RECORD = 36
	VT_INT_PTR = 37
	VT_UINT_PTR = 38
	VT_FILETIME = 64
	VT_BLOB = 65
	VT_STREAM = 66
	VT_STORAGE = 67
	VT_STREAMED_OBJECT = 68
	VT_STORED_OBJECT = 69
	VT_BLOB_OBJECT = 70
	VT_CF = 71
	VT_CLSID = 72
	VT_VERSIONED_STREAM = 73
	VT_BSTR_BLOB = &hfff
	VT_VECTOR = &h1000
	VT_ARRAY = &h2000
	VT_BYREF = &h4000
	VT_RESERVED = &h8000
	VT_ILLEGAL = &hffff
	VT_ILLEGALMASKED = &hfff
	VT_TYPEMASK = &hfff
end enum

type PROPID as ULONG_

#define PROPERTYKEY_DEFINED

type _tagpropertykey field = 8
	fmtid as GUID
	pid as DWORD
end type

type PROPERTYKEY as _tagpropertykey

type tagCSPLATFORM field = 8
	dwPlatformId as DWORD
	dwVersionHi as DWORD
	dwVersionLo as DWORD
	dwProcessorArch as DWORD
end type

type CSPLATFORM as tagCSPLATFORM

type tagQUERYCONTEXT field = 8
	dwContext as DWORD
	Platform as CSPLATFORM
	Locale as LCID
	dwVersionHi as DWORD
	dwVersionLo as DWORD
end type

type QUERYCONTEXT as tagQUERYCONTEXT

type tagTYSPEC as long
enum
	TYSPEC_CLSID = 0
	TYSPEC_FILEEXT = 1
	TYSPEC_MIMETYPE = 2
	TYSPEC_FILENAME = 3
	TYSPEC_PROGID = 4
	TYSPEC_PACKAGENAME = 5
	TYSPEC_OBJECTID = 6
end enum

type TYSPEC as tagTYSPEC

type ____WIDL_wtypes_generated_name_00000000_ByName field = 8
	pPackageName as LPOLESTR
	PolicyId as GUID
end type

type ____WIDL_wtypes_generated_name_00000000_ByObjectId field = 8
	ObjectId as GUID
	PolicyId as GUID
end type

union ____WIDL_wtypes_generated_name_00000000_tagged_union field = 8
	clsid as CLSID
	pFileExt as LPOLESTR
	pMimeType as LPOLESTR
	pProgId as LPOLESTR
	pFileName as LPOLESTR
	ByName as ____WIDL_wtypes_generated_name_00000000_ByName
	ByObjectId as ____WIDL_wtypes_generated_name_00000000_ByObjectId
end union

type __WIDL_wtypes_generated_name_00000000 field = 8
	tyspec as DWORD
	tagged_union as ____WIDL_wtypes_generated_name_00000000_tagged_union
end type

type uCLSSPEC as __WIDL_wtypes_generated_name_00000000

end extern