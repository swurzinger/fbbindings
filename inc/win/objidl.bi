#pragma once

#include once "rpc.bi"
#include once "rpcndr.bi"
#include once "ole2.bi"
#include once "unknwn.bi"
#include once "wtypes.bi"

#ifdef __FB_64BIT__
	extern "C"
#else
	extern "Windows"
#endif

type IMallocSpy as IMallocSpy_
type IBindCtx as IBindCtx_
type IEnumMoniker as IEnumMoniker_
type IRunnableObject as IRunnableObject_
type IRunningObjectTable as IRunningObjectTable_
type IPersist as IPersist_
type IPersistStream as IPersistStream_
type IMoniker as IMoniker_
type IROTData as IROTData_
type IEnumSTATSTG as IEnumSTATSTG_
type IStorage as IStorage_
type IPersistFile as IPersistFile_
type IPersistStorage as IPersistStorage_
type ILockBytes as ILockBytes_
type IEnumFORMATETC as IEnumFORMATETC_
type IEnumSTATDATA as IEnumSTATDATA_
type IRootStorage as IRootStorage_
type IAdviseSink as IAdviseSink_
type AsyncIAdviseSink as AsyncIAdviseSink_
type IAdviseSink2 as IAdviseSink2_
type AsyncIAdviseSink2 as AsyncIAdviseSink2_
type IDataObject as IDataObject_
type IDataAdviseHolder as IDataAdviseHolder_
type IMessageFilter as IMessageFilter_
type IClassActivator as IClassActivator_
type IFillLockBytes as IFillLockBytes_
type IProgressNotify as IProgressNotify_
type ILayoutStorage as ILayoutStorage_
type IBlockingLock as IBlockingLock_
type ITimeAndNoticeControl as ITimeAndNoticeControl_
type IOplockStorage as IOplockStorage_
type IDirectWriterLock as IDirectWriterLock_
type IUrlMon as IUrlMon_
type IForegroundTransfer as IForegroundTransfer_
type IThumbnailExtractor as IThumbnailExtractor_
type IDummyHICONIncluder as IDummyHICONIncluder_
type IProcessLock as IProcessLock_
type ISurrogateService as ISurrogateService_
type IInitializeSpy as IInitializeSpy_
type IApartmentShutdown as IApartmentShutdown_

#define __REQUIRED_RPCNDR_H_VERSION__ 475
#define __objidl_h__
#define __IMallocSpy_FWD_DEFINED__
#define __IBindCtx_FWD_DEFINED__
#define __IEnumMoniker_FWD_DEFINED__
#define __IRunnableObject_FWD_DEFINED__
#define __IRunningObjectTable_FWD_DEFINED__
#define __IPersist_FWD_DEFINED__
#define __IPersistStream_FWD_DEFINED__
#define __IMoniker_FWD_DEFINED__
#define __IROTData_FWD_DEFINED__
#define __IEnumSTATSTG_FWD_DEFINED__
#define __IStorage_FWD_DEFINED__
#define __IPersistFile_FWD_DEFINED__
#define __IPersistStorage_FWD_DEFINED__
#define __ILockBytes_FWD_DEFINED__
#define __IEnumFORMATETC_FWD_DEFINED__
#define __IEnumSTATDATA_FWD_DEFINED__
#define __IRootStorage_FWD_DEFINED__
#define __IAdviseSink_FWD_DEFINED__
#define __AsyncIAdviseSink_FWD_DEFINED__
#define __IAdviseSink2_FWD_DEFINED__
#define __AsyncIAdviseSink2_FWD_DEFINED__
#define __IDataObject_FWD_DEFINED__
#define __IDataAdviseHolder_FWD_DEFINED__
#define __IMessageFilter_FWD_DEFINED__
#define __IClassActivator_FWD_DEFINED__
#define __IFillLockBytes_FWD_DEFINED__
#define __IProgressNotify_FWD_DEFINED__
#define __ILayoutStorage_FWD_DEFINED__
#define __IBlockingLock_FWD_DEFINED__
#define __ITimeAndNoticeControl_FWD_DEFINED__
#define __IOplockStorage_FWD_DEFINED__
#define __IDirectWriterLock_FWD_DEFINED__
#define __IUrlMon_FWD_DEFINED__
#define __IForegroundTransfer_FWD_DEFINED__
#define __IThumbnailExtractor_FWD_DEFINED__
#define __IDummyHICONIncluder_FWD_DEFINED__
#define __IProcessLock_FWD_DEFINED__
#define __ISurrogateService_FWD_DEFINED__
#define __IInitializeSpy_FWD_DEFINED__
#define __IApartmentShutdown_FWD_DEFINED__
#define __IMallocSpy_INTERFACE_DEFINED__

type LPMALLOCSPY as IMallocSpy ptr

extern IID_IMallocSpy as const GUID

type IMallocSpyVtbl field = 8
	QueryInterface as function(byval This as IMallocSpy ptr, byval riid as const IID const ptr, byval ppvObject as any ptr ptr) as HRESULT
	AddRef as function(byval This as IMallocSpy ptr) as ULONG_
	Release as function(byval This as IMallocSpy ptr) as ULONG_
	PreAlloc as function(byval This as IMallocSpy ptr, byval cbRequest as SIZE_T_) as SIZE_T_
	PostAlloc as function(byval This as IMallocSpy ptr, byval pActual as any ptr) as any ptr
	PreFree as function(byval This as IMallocSpy ptr, byval pRequest as any ptr, byval fSpyed as WINBOOL) as any ptr
	PostFree as sub(byval This as IMallocSpy ptr, byval fSpyed as WINBOOL)
	PreRealloc as function(byval This as IMallocSpy ptr, byval pRequest as any ptr, byval cbRequest as SIZE_T_, byval ppNewRequest as any ptr ptr, byval fSpyed as WINBOOL) as SIZE_T_
	PostRealloc as function(byval This as IMallocSpy ptr, byval pActual as any ptr, byval fSpyed as WINBOOL) as any ptr
	PreGetSize as function(byval This as IMallocSpy ptr, byval pRequest as any ptr, byval fSpyed as WINBOOL) as any ptr
	PostGetSize as function(byval This as IMallocSpy ptr, byval cbActual as SIZE_T_, byval fSpyed as WINBOOL) as SIZE_T_
	PreDidAlloc as function(byval This as IMallocSpy ptr, byval pRequest as any ptr, byval fSpyed as WINBOOL) as any ptr
	PostDidAlloc as function(byval This as IMallocSpy ptr, byval pRequest as any ptr, byval fSpyed as WINBOOL, byval fActual as long) as long
	PreHeapMinimize as sub(byval This as IMallocSpy ptr)
	PostHeapMinimize as sub(byval This as IMallocSpy ptr)
end type

type IMallocSpy_ field = 8
	lpVtbl as IMallocSpyVtbl ptr
end type

declare function IMallocSpy_PreAlloc_Proxy(byval This as IMallocSpy ptr, byval cbRequest as SIZE_T_) as SIZE_T_
declare sub IMallocSpy_PreAlloc_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IMallocSpy_PostAlloc_Proxy(byval This as IMallocSpy ptr, byval pActual as any ptr) as any ptr
declare sub IMallocSpy_PostAlloc_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IMallocSpy_PreFree_Proxy(byval This as IMallocSpy ptr, byval pRequest as any ptr, byval fSpyed as WINBOOL) as any ptr
declare sub IMallocSpy_PreFree_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare sub IMallocSpy_PostFree_Proxy(byval This as IMallocSpy ptr, byval fSpyed as WINBOOL)
declare sub IMallocSpy_PostFree_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IMallocSpy_PreRealloc_Proxy(byval This as IMallocSpy ptr, byval pRequest as any ptr, byval cbRequest as SIZE_T_, byval ppNewRequest as any ptr ptr, byval fSpyed as WINBOOL) as SIZE_T_
declare sub IMallocSpy_PreRealloc_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IMallocSpy_PostRealloc_Proxy(byval This as IMallocSpy ptr, byval pActual as any ptr, byval fSpyed as WINBOOL) as any ptr
declare sub IMallocSpy_PostRealloc_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IMallocSpy_PreGetSize_Proxy(byval This as IMallocSpy ptr, byval pRequest as any ptr, byval fSpyed as WINBOOL) as any ptr
declare sub IMallocSpy_PreGetSize_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IMallocSpy_PostGetSize_Proxy(byval This as IMallocSpy ptr, byval cbActual as SIZE_T_, byval fSpyed as WINBOOL) as SIZE_T_
declare sub IMallocSpy_PostGetSize_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IMallocSpy_PreDidAlloc_Proxy(byval This as IMallocSpy ptr, byval pRequest as any ptr, byval fSpyed as WINBOOL) as any ptr
declare sub IMallocSpy_PreDidAlloc_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IMallocSpy_PostDidAlloc_Proxy(byval This as IMallocSpy ptr, byval pRequest as any ptr, byval fSpyed as WINBOOL, byval fActual as long) as long
declare sub IMallocSpy_PostDidAlloc_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare sub IMallocSpy_PreHeapMinimize_Proxy(byval This as IMallocSpy ptr)
declare sub IMallocSpy_PreHeapMinimize_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare sub IMallocSpy_PostHeapMinimize_Proxy(byval This as IMallocSpy ptr)
declare sub IMallocSpy_PostHeapMinimize_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)

#define __IBindCtx_INTERFACE_DEFINED__

type LPBC as IBindCtx ptr
type LPBINDCTX as IBindCtx ptr

type tagBIND_OPTS field = 8
	cbStruct as DWORD
	grfFlags as DWORD
	grfMode as DWORD
	dwTickCountDeadline as DWORD
end type

type BIND_OPTS as tagBIND_OPTS
type LPBIND_OPTS as tagBIND_OPTS ptr

type tagBIND_OPTS2 field = 8
	cbStruct as DWORD
	grfFlags as DWORD
	grfMode as DWORD
	dwTickCountDeadline as DWORD
	dwTrackFlags as DWORD
	dwClassContext as DWORD
	locale as LCID
	pServerInfo as COSERVERINFO ptr
end type

type BIND_OPTS2 as tagBIND_OPTS2
type LPBIND_OPTS2 as tagBIND_OPTS2 ptr

type tagBIND_OPTS3 field = 8
	cbStruct as DWORD
	grfFlags as DWORD
	grfMode as DWORD
	dwTickCountDeadline as DWORD
	dwTrackFlags as DWORD
	dwClassContext as DWORD
	locale as LCID
	pServerInfo as COSERVERINFO ptr
	hwnd as HWND
end type

type BIND_OPTS3 as tagBIND_OPTS3
type LPBIND_OPTS3 as tagBIND_OPTS3 ptr

type tagBIND_FLAGS as long
enum
	BIND_MAYBOTHERUSER = 1
	BIND_JUSTTESTEXISTENCE = 2
end enum

type BIND_FLAGS as tagBIND_FLAGS

extern IID_IBindCtx as const GUID

type IBindCtxVtbl field = 8
	QueryInterface as function(byval This as IBindCtx ptr, byval riid as const IID const ptr, byval ppvObject as any ptr ptr) as HRESULT
	AddRef as function(byval This as IBindCtx ptr) as ULONG_
	Release as function(byval This as IBindCtx ptr) as ULONG_
	RegisterObjectBound as function(byval This as IBindCtx ptr, byval punk as IUnknown ptr) as HRESULT
	RevokeObjectBound as function(byval This as IBindCtx ptr, byval punk as IUnknown ptr) as HRESULT
	ReleaseBoundObjects as function(byval This as IBindCtx ptr) as HRESULT
	SetBindOptions as function(byval This as IBindCtx ptr, byval pbindopts as BIND_OPTS ptr) as HRESULT
	GetBindOptions as function(byval This as IBindCtx ptr, byval pbindopts as BIND_OPTS ptr) as HRESULT
	GetRunningObjectTable as function(byval This as IBindCtx ptr, byval pprot as IRunningObjectTable ptr ptr) as HRESULT
	RegisterObjectParam as function(byval This as IBindCtx ptr, byval pszKey as LPOLESTR, byval punk as IUnknown ptr) as HRESULT
	GetObjectParam as function(byval This as IBindCtx ptr, byval pszKey as LPOLESTR, byval ppunk as IUnknown ptr ptr) as HRESULT
	EnumObjectParam as function(byval This as IBindCtx ptr, byval ppenum as IEnumString ptr ptr) as HRESULT
	RevokeObjectParam as function(byval This as IBindCtx ptr, byval pszKey as LPOLESTR) as HRESULT
end type

type IBindCtx_ field = 8
	lpVtbl as IBindCtxVtbl ptr
end type

declare function IBindCtx_RegisterObjectBound_Proxy(byval This as IBindCtx ptr, byval punk as IUnknown ptr) as HRESULT
declare sub IBindCtx_RegisterObjectBound_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IBindCtx_RevokeObjectBound_Proxy(byval This as IBindCtx ptr, byval punk as IUnknown ptr) as HRESULT
declare sub IBindCtx_RevokeObjectBound_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IBindCtx_ReleaseBoundObjects_Proxy(byval This as IBindCtx ptr) as HRESULT
declare sub IBindCtx_ReleaseBoundObjects_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IBindCtx_RemoteSetBindOptions_Proxy(byval This as IBindCtx ptr, byval pbindopts as BIND_OPTS2 ptr) as HRESULT
declare sub IBindCtx_RemoteSetBindOptions_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IBindCtx_RemoteGetBindOptions_Proxy(byval This as IBindCtx ptr, byval pbindopts as BIND_OPTS2 ptr) as HRESULT
declare sub IBindCtx_RemoteGetBindOptions_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IBindCtx_GetRunningObjectTable_Proxy(byval This as IBindCtx ptr, byval pprot as IRunningObjectTable ptr ptr) as HRESULT
declare sub IBindCtx_GetRunningObjectTable_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IBindCtx_RegisterObjectParam_Proxy(byval This as IBindCtx ptr, byval pszKey as LPOLESTR, byval punk as IUnknown ptr) as HRESULT
declare sub IBindCtx_RegisterObjectParam_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IBindCtx_GetObjectParam_Proxy(byval This as IBindCtx ptr, byval pszKey as LPOLESTR, byval ppunk as IUnknown ptr ptr) as HRESULT
declare sub IBindCtx_GetObjectParam_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IBindCtx_EnumObjectParam_Proxy(byval This as IBindCtx ptr, byval ppenum as IEnumString ptr ptr) as HRESULT
declare sub IBindCtx_EnumObjectParam_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IBindCtx_RevokeObjectParam_Proxy(byval This as IBindCtx ptr, byval pszKey as LPOLESTR) as HRESULT
declare sub IBindCtx_RevokeObjectParam_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IBindCtx_SetBindOptions_Proxy(byval This as IBindCtx ptr, byval pbindopts as BIND_OPTS ptr) as HRESULT
declare function IBindCtx_SetBindOptions_Stub(byval This as IBindCtx ptr, byval pbindopts as BIND_OPTS2 ptr) as HRESULT
declare function IBindCtx_GetBindOptions_Proxy(byval This as IBindCtx ptr, byval pbindopts as BIND_OPTS ptr) as HRESULT
declare function IBindCtx_GetBindOptions_Stub(byval This as IBindCtx ptr, byval pbindopts as BIND_OPTS2 ptr) as HRESULT

#define __IEnumMoniker_INTERFACE_DEFINED__

type LPENUMMONIKER as IEnumMoniker ptr

extern IID_IEnumMoniker as const GUID

type IEnumMonikerVtbl field = 8
	QueryInterface as function(byval This as IEnumMoniker ptr, byval riid as const IID const ptr, byval ppvObject as any ptr ptr) as HRESULT
	AddRef as function(byval This as IEnumMoniker ptr) as ULONG_
	Release as function(byval This as IEnumMoniker ptr) as ULONG_
	Next as function(byval This as IEnumMoniker ptr, byval celt as ULONG_, byval rgelt as IMoniker ptr ptr, byval pceltFetched as ULONG_ ptr) as HRESULT
	Skip as function(byval This as IEnumMoniker ptr, byval celt as ULONG_) as HRESULT
	Reset as function(byval This as IEnumMoniker ptr) as HRESULT
	Clone as function(byval This as IEnumMoniker ptr, byval ppenum as IEnumMoniker ptr ptr) as HRESULT
end type

type IEnumMoniker_ field = 8
	lpVtbl as IEnumMonikerVtbl ptr
end type

declare function IEnumMoniker_RemoteNext_Proxy(byval This as IEnumMoniker ptr, byval celt as ULONG_, byval rgelt as IMoniker ptr ptr, byval pceltFetched as ULONG_ ptr) as HRESULT
declare sub IEnumMoniker_RemoteNext_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IEnumMoniker_Skip_Proxy(byval This as IEnumMoniker ptr, byval celt as ULONG_) as HRESULT
declare sub IEnumMoniker_Skip_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IEnumMoniker_Reset_Proxy(byval This as IEnumMoniker ptr) as HRESULT
declare sub IEnumMoniker_Reset_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IEnumMoniker_Clone_Proxy(byval This as IEnumMoniker ptr, byval ppenum as IEnumMoniker ptr ptr) as HRESULT
declare sub IEnumMoniker_Clone_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IEnumMoniker_Next_Proxy(byval This as IEnumMoniker ptr, byval celt as ULONG_, byval rgelt as IMoniker ptr ptr, byval pceltFetched as ULONG_ ptr) as HRESULT
declare function IEnumMoniker_Next_Stub(byval This as IEnumMoniker ptr, byval celt as ULONG_, byval rgelt as IMoniker ptr ptr, byval pceltFetched as ULONG_ ptr) as HRESULT

#define __IRunnableObject_INTERFACE_DEFINED__

type LPRUNNABLEOBJECT as IRunnableObject ptr

extern IID_IRunnableObject as const GUID

type IRunnableObjectVtbl field = 8
	QueryInterface as function(byval This as IRunnableObject ptr, byval riid as const IID const ptr, byval ppvObject as any ptr ptr) as HRESULT
	AddRef as function(byval This as IRunnableObject ptr) as ULONG_
	Release as function(byval This as IRunnableObject ptr) as ULONG_
	GetRunningClass as function(byval This as IRunnableObject ptr, byval lpClsid as LPCLSID) as HRESULT
	Run as function(byval This as IRunnableObject ptr, byval pbc as LPBINDCTX) as HRESULT
	IsRunning as function(byval This as IRunnableObject ptr) as WINBOOL
	LockRunning as function(byval This as IRunnableObject ptr, byval fLock as WINBOOL, byval fLastUnlockCloses as WINBOOL) as HRESULT
	SetContainedObject as function(byval This as IRunnableObject ptr, byval fContained as WINBOOL) as HRESULT
end type

type IRunnableObject_ field = 8
	lpVtbl as IRunnableObjectVtbl ptr
end type

declare function IRunnableObject_GetRunningClass_Proxy(byval This as IRunnableObject ptr, byval lpClsid as LPCLSID) as HRESULT
declare sub IRunnableObject_GetRunningClass_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IRunnableObject_Run_Proxy(byval This as IRunnableObject ptr, byval pbc as LPBINDCTX) as HRESULT
declare sub IRunnableObject_Run_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IRunnableObject_RemoteIsRunning_Proxy(byval This as IRunnableObject ptr) as HRESULT
declare sub IRunnableObject_RemoteIsRunning_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IRunnableObject_LockRunning_Proxy(byval This as IRunnableObject ptr, byval fLock as WINBOOL, byval fLastUnlockCloses as WINBOOL) as HRESULT
declare sub IRunnableObject_LockRunning_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IRunnableObject_SetContainedObject_Proxy(byval This as IRunnableObject ptr, byval fContained as WINBOOL) as HRESULT
declare sub IRunnableObject_SetContainedObject_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IRunnableObject_IsRunning_Proxy(byval This as IRunnableObject ptr) as WINBOOL
declare function IRunnableObject_IsRunning_Stub(byval This as IRunnableObject ptr) as HRESULT

#define __IRunningObjectTable_INTERFACE_DEFINED__

type LPRUNNINGOBJECTTABLE as IRunningObjectTable ptr

extern IID_IRunningObjectTable as const GUID

type IRunningObjectTableVtbl field = 8
	QueryInterface as function(byval This as IRunningObjectTable ptr, byval riid as const IID const ptr, byval ppvObject as any ptr ptr) as HRESULT
	AddRef as function(byval This as IRunningObjectTable ptr) as ULONG_
	Release as function(byval This as IRunningObjectTable ptr) as ULONG_
	Register as function(byval This as IRunningObjectTable ptr, byval grfFlags as DWORD, byval punkObject as IUnknown ptr, byval pmkObjectName as IMoniker ptr, byval pdwRegister as DWORD ptr) as HRESULT
	Revoke as function(byval This as IRunningObjectTable ptr, byval dwRegister as DWORD) as HRESULT
	IsRunning as function(byval This as IRunningObjectTable ptr, byval pmkObjectName as IMoniker ptr) as HRESULT

	#ifdef UNICODE
		GetObjectW as function(byval This as IRunningObjectTable ptr, byval pmkObjectName as IMoniker ptr, byval ppunkObject as IUnknown ptr ptr) as HRESULT
	#else
		GetObjectA as function(byval This as IRunningObjectTable ptr, byval pmkObjectName as IMoniker ptr, byval ppunkObject as IUnknown ptr ptr) as HRESULT
	#endif

	NoteChangeTime as function(byval This as IRunningObjectTable ptr, byval dwRegister as DWORD, byval pfiletime as FILETIME ptr) as HRESULT
	GetTimeOfLastChange as function(byval This as IRunningObjectTable ptr, byval pmkObjectName as IMoniker ptr, byval pfiletime as FILETIME ptr) as HRESULT
	EnumRunning as function(byval This as IRunningObjectTable ptr, byval ppenumMoniker as IEnumMoniker ptr ptr) as HRESULT
end type

type IRunningObjectTable_ field = 8
	lpVtbl as IRunningObjectTableVtbl ptr
end type

declare function IRunningObjectTable_Register_Proxy(byval This as IRunningObjectTable ptr, byval grfFlags as DWORD, byval punkObject as IUnknown ptr, byval pmkObjectName as IMoniker ptr, byval pdwRegister as DWORD ptr) as HRESULT
declare sub IRunningObjectTable_Register_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IRunningObjectTable_Revoke_Proxy(byval This as IRunningObjectTable ptr, byval dwRegister as DWORD) as HRESULT
declare sub IRunningObjectTable_Revoke_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IRunningObjectTable_IsRunning_Proxy(byval This as IRunningObjectTable ptr, byval pmkObjectName as IMoniker ptr) as HRESULT
declare sub IRunningObjectTable_IsRunning_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IRunningObjectTable_GetObject_Proxy(byval This as IRunningObjectTable ptr, byval pmkObjectName as IMoniker ptr, byval ppunkObject as IUnknown ptr ptr) as HRESULT
declare sub IRunningObjectTable_GetObject_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IRunningObjectTable_NoteChangeTime_Proxy(byval This as IRunningObjectTable ptr, byval dwRegister as DWORD, byval pfiletime as FILETIME ptr) as HRESULT
declare sub IRunningObjectTable_NoteChangeTime_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IRunningObjectTable_GetTimeOfLastChange_Proxy(byval This as IRunningObjectTable ptr, byval pmkObjectName as IMoniker ptr, byval pfiletime as FILETIME ptr) as HRESULT
declare sub IRunningObjectTable_GetTimeOfLastChange_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IRunningObjectTable_EnumRunning_Proxy(byval This as IRunningObjectTable ptr, byval ppenumMoniker as IEnumMoniker ptr ptr) as HRESULT
declare sub IRunningObjectTable_EnumRunning_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)

#define __IPersist_INTERFACE_DEFINED__

type LPPERSIST as IPersist ptr

extern IID_IPersist as const GUID

type IPersistVtbl field = 8
	QueryInterface as function(byval This as IPersist ptr, byval riid as const IID const ptr, byval ppvObject as any ptr ptr) as HRESULT
	AddRef as function(byval This as IPersist ptr) as ULONG_
	Release as function(byval This as IPersist ptr) as ULONG_
	GetClassID as function(byval This as IPersist ptr, byval pClassID as CLSID ptr) as HRESULT
end type

type IPersist_ field = 8
	lpVtbl as IPersistVtbl ptr
end type

declare function IPersist_GetClassID_Proxy(byval This as IPersist ptr, byval pClassID as CLSID ptr) as HRESULT
declare sub IPersist_GetClassID_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)

#define __IPersistStream_INTERFACE_DEFINED__

type LPPERSISTSTREAM as IPersistStream ptr

extern IID_IPersistStream as const GUID

type IPersistStreamVtbl field = 8
	QueryInterface as function(byval This as IPersistStream ptr, byval riid as const IID const ptr, byval ppvObject as any ptr ptr) as HRESULT
	AddRef as function(byval This as IPersistStream ptr) as ULONG_
	Release as function(byval This as IPersistStream ptr) as ULONG_
	GetClassID as function(byval This as IPersistStream ptr, byval pClassID as CLSID ptr) as HRESULT
	IsDirty as function(byval This as IPersistStream ptr) as HRESULT
	Load as function(byval This as IPersistStream ptr, byval pStm as IStream ptr) as HRESULT
	Save as function(byval This as IPersistStream ptr, byval pStm as IStream ptr, byval fClearDirty as WINBOOL) as HRESULT
	GetSizeMax as function(byval This as IPersistStream ptr, byval pcbSize as ULARGE_INTEGER ptr) as HRESULT
end type

type IPersistStream_ field = 8
	lpVtbl as IPersistStreamVtbl ptr
end type

declare function IPersistStream_IsDirty_Proxy(byval This as IPersistStream ptr) as HRESULT
declare sub IPersistStream_IsDirty_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IPersistStream_Load_Proxy(byval This as IPersistStream ptr, byval pStm as IStream ptr) as HRESULT
declare sub IPersistStream_Load_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IPersistStream_Save_Proxy(byval This as IPersistStream ptr, byval pStm as IStream ptr, byval fClearDirty as WINBOOL) as HRESULT
declare sub IPersistStream_Save_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IPersistStream_GetSizeMax_Proxy(byval This as IPersistStream ptr, byval pcbSize as ULARGE_INTEGER ptr) as HRESULT
declare sub IPersistStream_GetSizeMax_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)

#define __IMoniker_INTERFACE_DEFINED__

type LPMONIKER as IMoniker ptr

type tagMKSYS as long
enum
	MKSYS_NONE = 0
	MKSYS_GENERICCOMPOSITE = 1
	MKSYS_FILEMONIKER = 2
	MKSYS_ANTIMONIKER = 3
	MKSYS_ITEMMONIKER = 4
	MKSYS_POINTERMONIKER = 5
	MKSYS_CLASSMONIKER = 7
	MKSYS_OBJREFMONIKER = 8
	MKSYS_SESSIONMONIKER = 9
	MKSYS_LUAMONIKER = 10
end enum

type MKSYS as tagMKSYS

type tagMKREDUCE as long
enum
	MKRREDUCE_ONE = 3 shl 16
	MKRREDUCE_TOUSER = 2 shl 16
	MKRREDUCE_THROUGHUSER = 1 shl 16
	MKRREDUCE_ALL = 0
end enum

type MKRREDUCE as tagMKREDUCE

extern IID_IMoniker as const GUID

type IMonikerVtbl field = 8
	QueryInterface as function(byval This as IMoniker ptr, byval riid as const IID const ptr, byval ppvObject as any ptr ptr) as HRESULT
	AddRef as function(byval This as IMoniker ptr) as ULONG_
	Release as function(byval This as IMoniker ptr) as ULONG_
	GetClassID as function(byval This as IMoniker ptr, byval pClassID as CLSID ptr) as HRESULT
	IsDirty as function(byval This as IMoniker ptr) as HRESULT
	Load as function(byval This as IMoniker ptr, byval pStm as IStream ptr) as HRESULT
	Save as function(byval This as IMoniker ptr, byval pStm as IStream ptr, byval fClearDirty as WINBOOL) as HRESULT
	GetSizeMax as function(byval This as IMoniker ptr, byval pcbSize as ULARGE_INTEGER ptr) as HRESULT
	BindToObject as function(byval This as IMoniker ptr, byval pbc as IBindCtx ptr, byval pmkToLeft as IMoniker ptr, byval riidResult as const IID const ptr, byval ppvResult as any ptr ptr) as HRESULT
	BindToStorage as function(byval This as IMoniker ptr, byval pbc as IBindCtx ptr, byval pmkToLeft as IMoniker ptr, byval riid as const IID const ptr, byval ppvObj as any ptr ptr) as HRESULT
	Reduce as function(byval This as IMoniker ptr, byval pbc as IBindCtx ptr, byval dwReduceHowFar as DWORD, byval ppmkToLeft as IMoniker ptr ptr, byval ppmkReduced as IMoniker ptr ptr) as HRESULT
	ComposeWith as function(byval This as IMoniker ptr, byval pmkRight as IMoniker ptr, byval fOnlyIfNotGeneric as WINBOOL, byval ppmkComposite as IMoniker ptr ptr) as HRESULT
	as function(byval This as IMoniker ptr, byval fForward as WINBOOL, byval ppenumMoniker as IEnumMoniker ptr ptr) as HRESULT Enum
	IsEqual as function(byval This as IMoniker ptr, byval pmkOtherMoniker as IMoniker ptr) as HRESULT
	Hash as function(byval This as IMoniker ptr, byval pdwHash as DWORD ptr) as HRESULT
	IsRunning as function(byval This as IMoniker ptr, byval pbc as IBindCtx ptr, byval pmkToLeft as IMoniker ptr, byval pmkNewlyRunning as IMoniker ptr) as HRESULT
	GetTimeOfLastChange as function(byval This as IMoniker ptr, byval pbc as IBindCtx ptr, byval pmkToLeft as IMoniker ptr, byval pFileTime as FILETIME ptr) as HRESULT
	Inverse as function(byval This as IMoniker ptr, byval ppmk as IMoniker ptr ptr) as HRESULT
	CommonPrefixWith as function(byval This as IMoniker ptr, byval pmkOther as IMoniker ptr, byval ppmkPrefix as IMoniker ptr ptr) as HRESULT
	RelativePathTo as function(byval This as IMoniker ptr, byval pmkOther as IMoniker ptr, byval ppmkRelPath as IMoniker ptr ptr) as HRESULT
	GetDisplayName as function(byval This as IMoniker ptr, byval pbc as IBindCtx ptr, byval pmkToLeft as IMoniker ptr, byval ppszDisplayName as LPOLESTR ptr) as HRESULT
	ParseDisplayName as function(byval This as IMoniker ptr, byval pbc as IBindCtx ptr, byval pmkToLeft as IMoniker ptr, byval pszDisplayName as LPOLESTR, byval pchEaten as ULONG_ ptr, byval ppmkOut as IMoniker ptr ptr) as HRESULT
	IsSystemMoniker as function(byval This as IMoniker ptr, byval pdwMksys as DWORD ptr) as HRESULT
end type

type IMoniker_ field = 8
	lpVtbl as IMonikerVtbl ptr
end type

declare function IMoniker_RemoteBindToObject_Proxy(byval This as IMoniker ptr, byval pbc as IBindCtx ptr, byval pmkToLeft as IMoniker ptr, byval riidResult as const IID const ptr, byval ppvResult as IUnknown ptr ptr) as HRESULT
declare sub IMoniker_RemoteBindToObject_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IMoniker_RemoteBindToStorage_Proxy(byval This as IMoniker ptr, byval pbc as IBindCtx ptr, byval pmkToLeft as IMoniker ptr, byval riid as const IID const ptr, byval ppvObj as IUnknown ptr ptr) as HRESULT
declare sub IMoniker_RemoteBindToStorage_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IMoniker_Reduce_Proxy(byval This as IMoniker ptr, byval pbc as IBindCtx ptr, byval dwReduceHowFar as DWORD, byval ppmkToLeft as IMoniker ptr ptr, byval ppmkReduced as IMoniker ptr ptr) as HRESULT
declare sub IMoniker_Reduce_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IMoniker_ComposeWith_Proxy(byval This as IMoniker ptr, byval pmkRight as IMoniker ptr, byval fOnlyIfNotGeneric as WINBOOL, byval ppmkComposite as IMoniker ptr ptr) as HRESULT
declare sub IMoniker_ComposeWith_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IMoniker_Enum_Proxy(byval This as IMoniker ptr, byval fForward as WINBOOL, byval ppenumMoniker as IEnumMoniker ptr ptr) as HRESULT
declare sub IMoniker_Enum_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IMoniker_IsEqual_Proxy(byval This as IMoniker ptr, byval pmkOtherMoniker as IMoniker ptr) as HRESULT
declare sub IMoniker_IsEqual_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IMoniker_Hash_Proxy(byval This as IMoniker ptr, byval pdwHash as DWORD ptr) as HRESULT
declare sub IMoniker_Hash_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IMoniker_IsRunning_Proxy(byval This as IMoniker ptr, byval pbc as IBindCtx ptr, byval pmkToLeft as IMoniker ptr, byval pmkNewlyRunning as IMoniker ptr) as HRESULT
declare sub IMoniker_IsRunning_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IMoniker_GetTimeOfLastChange_Proxy(byval This as IMoniker ptr, byval pbc as IBindCtx ptr, byval pmkToLeft as IMoniker ptr, byval pFileTime as FILETIME ptr) as HRESULT
declare sub IMoniker_GetTimeOfLastChange_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IMoniker_Inverse_Proxy(byval This as IMoniker ptr, byval ppmk as IMoniker ptr ptr) as HRESULT
declare sub IMoniker_Inverse_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IMoniker_CommonPrefixWith_Proxy(byval This as IMoniker ptr, byval pmkOther as IMoniker ptr, byval ppmkPrefix as IMoniker ptr ptr) as HRESULT
declare sub IMoniker_CommonPrefixWith_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IMoniker_RelativePathTo_Proxy(byval This as IMoniker ptr, byval pmkOther as IMoniker ptr, byval ppmkRelPath as IMoniker ptr ptr) as HRESULT
declare sub IMoniker_RelativePathTo_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IMoniker_GetDisplayName_Proxy(byval This as IMoniker ptr, byval pbc as IBindCtx ptr, byval pmkToLeft as IMoniker ptr, byval ppszDisplayName as LPOLESTR ptr) as HRESULT
declare sub IMoniker_GetDisplayName_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IMoniker_ParseDisplayName_Proxy(byval This as IMoniker ptr, byval pbc as IBindCtx ptr, byval pmkToLeft as IMoniker ptr, byval pszDisplayName as LPOLESTR, byval pchEaten as ULONG_ ptr, byval ppmkOut as IMoniker ptr ptr) as HRESULT
declare sub IMoniker_ParseDisplayName_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IMoniker_IsSystemMoniker_Proxy(byval This as IMoniker ptr, byval pdwMksys as DWORD ptr) as HRESULT
declare sub IMoniker_IsSystemMoniker_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IMoniker_BindToObject_Proxy(byval This as IMoniker ptr, byval pbc as IBindCtx ptr, byval pmkToLeft as IMoniker ptr, byval riidResult as const IID const ptr, byval ppvResult as any ptr ptr) as HRESULT
declare function IMoniker_BindToObject_Stub(byval This as IMoniker ptr, byval pbc as IBindCtx ptr, byval pmkToLeft as IMoniker ptr, byval riidResult as const IID const ptr, byval ppvResult as IUnknown ptr ptr) as HRESULT
declare function IMoniker_BindToStorage_Proxy(byval This as IMoniker ptr, byval pbc as IBindCtx ptr, byval pmkToLeft as IMoniker ptr, byval riid as const IID const ptr, byval ppvObj as any ptr ptr) as HRESULT
declare function IMoniker_BindToStorage_Stub(byval This as IMoniker ptr, byval pbc as IBindCtx ptr, byval pmkToLeft as IMoniker ptr, byval riid as const IID const ptr, byval ppvObj as IUnknown ptr ptr) as HRESULT

#define __IROTData_INTERFACE_DEFINED__

extern IID_IROTData as const GUID

type IROTDataVtbl field = 8
	QueryInterface as function(byval This as IROTData ptr, byval riid as const IID const ptr, byval ppvObject as any ptr ptr) as HRESULT
	AddRef as function(byval This as IROTData ptr) as ULONG_
	Release as function(byval This as IROTData ptr) as ULONG_
	GetComparisonData as function(byval This as IROTData ptr, byval pbData as byte__ ptr, byval cbMax as ULONG_, byval pcbData as ULONG_ ptr) as HRESULT
end type

type IROTData_ field = 8
	lpVtbl as IROTDataVtbl ptr
end type

declare function IROTData_GetComparisonData_Proxy(byval This as IROTData ptr, byval pbData as byte__ ptr, byval cbMax as ULONG_, byval pcbData as ULONG_ ptr) as HRESULT
declare sub IROTData_GetComparisonData_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)

#define __IEnumSTATSTG_INTERFACE_DEFINED__

type LPENUMSTATSTG as IEnumSTATSTG ptr

extern IID_IEnumSTATSTG as const GUID

type IEnumSTATSTGVtbl field = 8
	QueryInterface as function(byval This as IEnumSTATSTG ptr, byval riid as const IID const ptr, byval ppvObject as any ptr ptr) as HRESULT
	AddRef as function(byval This as IEnumSTATSTG ptr) as ULONG_
	Release as function(byval This as IEnumSTATSTG ptr) as ULONG_
	Next as function(byval This as IEnumSTATSTG ptr, byval celt as ULONG_, byval rgelt as STATSTG ptr, byval pceltFetched as ULONG_ ptr) as HRESULT
	Skip as function(byval This as IEnumSTATSTG ptr, byval celt as ULONG_) as HRESULT
	Reset as function(byval This as IEnumSTATSTG ptr) as HRESULT
	Clone as function(byval This as IEnumSTATSTG ptr, byval ppenum as IEnumSTATSTG ptr ptr) as HRESULT
end type

type IEnumSTATSTG_ field = 8
	lpVtbl as IEnumSTATSTGVtbl ptr
end type

declare function IEnumSTATSTG_RemoteNext_Proxy(byval This as IEnumSTATSTG ptr, byval celt as ULONG_, byval rgelt as STATSTG ptr, byval pceltFetched as ULONG_ ptr) as HRESULT
declare sub IEnumSTATSTG_RemoteNext_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IEnumSTATSTG_Skip_Proxy(byval This as IEnumSTATSTG ptr, byval celt as ULONG_) as HRESULT
declare sub IEnumSTATSTG_Skip_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IEnumSTATSTG_Reset_Proxy(byval This as IEnumSTATSTG ptr) as HRESULT
declare sub IEnumSTATSTG_Reset_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IEnumSTATSTG_Clone_Proxy(byval This as IEnumSTATSTG ptr, byval ppenum as IEnumSTATSTG ptr ptr) as HRESULT
declare sub IEnumSTATSTG_Clone_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IEnumSTATSTG_Next_Proxy(byval This as IEnumSTATSTG ptr, byval celt as ULONG_, byval rgelt as STATSTG ptr, byval pceltFetched as ULONG_ ptr) as HRESULT
declare function IEnumSTATSTG_Next_Stub(byval This as IEnumSTATSTG ptr, byval celt as ULONG_, byval rgelt as STATSTG ptr, byval pceltFetched as ULONG_ ptr) as HRESULT

#define __IStorage_INTERFACE_DEFINED__

type LPSTORAGE as IStorage ptr

type tagRemSNB field = 8
	ulCntStr as ULONG_
	ulCntChar as ULONG_
	rgString(0 to 0) as OLECHAR
end type

type RemSNB as tagRemSNB
type wireSNB as RemSNB ptr
type SNB as LPOLESTR ptr

extern IID_IStorage as const GUID

type IStorageVtbl field = 8
	QueryInterface as function(byval This as IStorage ptr, byval riid as const IID const ptr, byval ppvObject as any ptr ptr) as HRESULT
	AddRef as function(byval This as IStorage ptr) as ULONG_
	Release as function(byval This as IStorage ptr) as ULONG_
	CreateStream as function(byval This as IStorage ptr, byval pwcsName as const OLECHAR ptr, byval grfMode as DWORD, byval reserved1 as DWORD, byval reserved2 as DWORD, byval ppstm as IStream ptr ptr) as HRESULT
	OpenStream as function(byval This as IStorage ptr, byval pwcsName as const OLECHAR ptr, byval reserved1 as any ptr, byval grfMode as DWORD, byval reserved2 as DWORD, byval ppstm as IStream ptr ptr) as HRESULT
	CreateStorage as function(byval This as IStorage ptr, byval pwcsName as const OLECHAR ptr, byval grfMode as DWORD, byval reserved1 as DWORD, byval reserved2 as DWORD, byval ppstg as IStorage ptr ptr) as HRESULT
	OpenStorage as function(byval This as IStorage ptr, byval pwcsName as const OLECHAR ptr, byval pstgPriority as IStorage ptr, byval grfMode as DWORD, byval snbExclude as SNB, byval reserved as DWORD, byval ppstg as IStorage ptr ptr) as HRESULT
	CopyTo as function(byval This as IStorage ptr, byval ciidExclude as DWORD, byval rgiidExclude as const IID ptr, byval snbExclude as SNB, byval pstgDest as IStorage ptr) as HRESULT
	MoveElementTo as function(byval This as IStorage ptr, byval pwcsName as const OLECHAR ptr, byval pstgDest as IStorage ptr, byval pwcsNewName as const OLECHAR ptr, byval grfFlags as DWORD) as HRESULT
	Commit as function(byval This as IStorage ptr, byval grfCommitFlags as DWORD) as HRESULT
	Revert as function(byval This as IStorage ptr) as HRESULT
	EnumElements as function(byval This as IStorage ptr, byval reserved1 as DWORD, byval reserved2 as any ptr, byval reserved3 as DWORD, byval ppenum as IEnumSTATSTG ptr ptr) as HRESULT
	DestroyElement as function(byval This as IStorage ptr, byval pwcsName as const OLECHAR ptr) as HRESULT
	RenameElement as function(byval This as IStorage ptr, byval pwcsOldName as const OLECHAR ptr, byval pwcsNewName as const OLECHAR ptr) as HRESULT
	SetElementTimes as function(byval This as IStorage ptr, byval pwcsName as const OLECHAR ptr, byval pctime as const FILETIME ptr, byval patime as const FILETIME ptr, byval pmtime as const FILETIME ptr) as HRESULT
	SetClass as function(byval This as IStorage ptr, byval clsid as const IID const ptr) as HRESULT
	SetStateBits as function(byval This as IStorage ptr, byval grfStateBits as DWORD, byval grfMask as DWORD) as HRESULT
	Stat as function(byval This as IStorage ptr, byval pstatstg as STATSTG ptr, byval grfStatFlag as DWORD) as HRESULT
end type

type IStorage_ field = 8
	lpVtbl as IStorageVtbl ptr
end type

declare function IStorage_CreateStream_Proxy(byval This as IStorage ptr, byval pwcsName as const OLECHAR ptr, byval grfMode as DWORD, byval reserved1 as DWORD, byval reserved2 as DWORD, byval ppstm as IStream ptr ptr) as HRESULT
declare sub IStorage_CreateStream_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IStorage_RemoteOpenStream_Proxy(byval This as IStorage ptr, byval pwcsName as const OLECHAR ptr, byval cbReserved1 as ULONG_, byval reserved1 as byte__ ptr, byval grfMode as DWORD, byval reserved2 as DWORD, byval ppstm as IStream ptr ptr) as HRESULT
declare sub IStorage_RemoteOpenStream_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IStorage_CreateStorage_Proxy(byval This as IStorage ptr, byval pwcsName as const OLECHAR ptr, byval grfMode as DWORD, byval reserved1 as DWORD, byval reserved2 as DWORD, byval ppstg as IStorage ptr ptr) as HRESULT
declare sub IStorage_CreateStorage_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IStorage_OpenStorage_Proxy(byval This as IStorage ptr, byval pwcsName as const OLECHAR ptr, byval pstgPriority as IStorage ptr, byval grfMode as DWORD, byval snbExclude as SNB, byval reserved as DWORD, byval ppstg as IStorage ptr ptr) as HRESULT
declare sub IStorage_OpenStorage_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IStorage_RemoteCopyTo_Proxy(byval This as IStorage ptr, byval ciidExclude as DWORD, byval rgiidExclude as const IID ptr, byval snbExclude as SNB, byval pstgDest as IStorage ptr) as HRESULT
declare sub IStorage_RemoteCopyTo_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IStorage_MoveElementTo_Proxy(byval This as IStorage ptr, byval pwcsName as const OLECHAR ptr, byval pstgDest as IStorage ptr, byval pwcsNewName as const OLECHAR ptr, byval grfFlags as DWORD) as HRESULT
declare sub IStorage_MoveElementTo_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IStorage_Commit_Proxy(byval This as IStorage ptr, byval grfCommitFlags as DWORD) as HRESULT
declare sub IStorage_Commit_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IStorage_Revert_Proxy(byval This as IStorage ptr) as HRESULT
declare sub IStorage_Revert_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IStorage_RemoteEnumElements_Proxy(byval This as IStorage ptr, byval reserved1 as DWORD, byval cbReserved2 as ULONG_, byval reserved2 as byte__ ptr, byval reserved3 as DWORD, byval ppenum as IEnumSTATSTG ptr ptr) as HRESULT
declare sub IStorage_RemoteEnumElements_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IStorage_DestroyElement_Proxy(byval This as IStorage ptr, byval pwcsName as const OLECHAR ptr) as HRESULT
declare sub IStorage_DestroyElement_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IStorage_RenameElement_Proxy(byval This as IStorage ptr, byval pwcsOldName as const OLECHAR ptr, byval pwcsNewName as const OLECHAR ptr) as HRESULT
declare sub IStorage_RenameElement_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IStorage_SetElementTimes_Proxy(byval This as IStorage ptr, byval pwcsName as const OLECHAR ptr, byval pctime as const FILETIME ptr, byval patime as const FILETIME ptr, byval pmtime as const FILETIME ptr) as HRESULT
declare sub IStorage_SetElementTimes_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IStorage_SetClass_Proxy(byval This as IStorage ptr, byval clsid as const IID const ptr) as HRESULT
declare sub IStorage_SetClass_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IStorage_SetStateBits_Proxy(byval This as IStorage ptr, byval grfStateBits as DWORD, byval grfMask as DWORD) as HRESULT
declare sub IStorage_SetStateBits_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IStorage_Stat_Proxy(byval This as IStorage ptr, byval pstatstg as STATSTG ptr, byval grfStatFlag as DWORD) as HRESULT
declare sub IStorage_Stat_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IStorage_OpenStream_Proxy(byval This as IStorage ptr, byval pwcsName as const OLECHAR ptr, byval reserved1 as any ptr, byval grfMode as DWORD, byval reserved2 as DWORD, byval ppstm as IStream ptr ptr) as HRESULT
declare function IStorage_OpenStream_Stub(byval This as IStorage ptr, byval pwcsName as const OLECHAR ptr, byval cbReserved1 as ULONG_, byval reserved1 as byte__ ptr, byval grfMode as DWORD, byval reserved2 as DWORD, byval ppstm as IStream ptr ptr) as HRESULT
declare function IStorage_CopyTo_Proxy(byval This as IStorage ptr, byval ciidExclude as DWORD, byval rgiidExclude as const IID ptr, byval snbExclude as SNB, byval pstgDest as IStorage ptr) as HRESULT
declare function IStorage_CopyTo_Stub(byval This as IStorage ptr, byval ciidExclude as DWORD, byval rgiidExclude as const IID ptr, byval snbExclude as SNB, byval pstgDest as IStorage ptr) as HRESULT
declare function IStorage_EnumElements_Proxy(byval This as IStorage ptr, byval reserved1 as DWORD, byval reserved2 as any ptr, byval reserved3 as DWORD, byval ppenum as IEnumSTATSTG ptr ptr) as HRESULT
declare function IStorage_EnumElements_Stub(byval This as IStorage ptr, byval reserved1 as DWORD, byval cbReserved2 as ULONG_, byval reserved2 as byte__ ptr, byval reserved3 as DWORD, byval ppenum as IEnumSTATSTG ptr ptr) as HRESULT

#define __IPersistFile_INTERFACE_DEFINED__

type LPPERSISTFILE as IPersistFile ptr

extern IID_IPersistFile as const GUID

type IPersistFileVtbl field = 8
	QueryInterface as function(byval This as IPersistFile ptr, byval riid as const IID const ptr, byval ppvObject as any ptr ptr) as HRESULT
	AddRef as function(byval This as IPersistFile ptr) as ULONG_
	Release as function(byval This as IPersistFile ptr) as ULONG_
	GetClassID as function(byval This as IPersistFile ptr, byval pClassID as CLSID ptr) as HRESULT
	IsDirty as function(byval This as IPersistFile ptr) as HRESULT
	Load as function(byval This as IPersistFile ptr, byval pszFileName as LPCOLESTR, byval dwMode as DWORD) as HRESULT
	Save as function(byval This as IPersistFile ptr, byval pszFileName as LPCOLESTR, byval fRemember as WINBOOL) as HRESULT
	SaveCompleted as function(byval This as IPersistFile ptr, byval pszFileName as LPCOLESTR) as HRESULT
	GetCurFile as function(byval This as IPersistFile ptr, byval ppszFileName as LPOLESTR ptr) as HRESULT
end type

type IPersistFile_ field = 8
	lpVtbl as IPersistFileVtbl ptr
end type

declare function IPersistFile_IsDirty_Proxy(byval This as IPersistFile ptr) as HRESULT
declare sub IPersistFile_IsDirty_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IPersistFile_Load_Proxy(byval This as IPersistFile ptr, byval pszFileName as LPCOLESTR, byval dwMode as DWORD) as HRESULT
declare sub IPersistFile_Load_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IPersistFile_Save_Proxy(byval This as IPersistFile ptr, byval pszFileName as LPCOLESTR, byval fRemember as WINBOOL) as HRESULT
declare sub IPersistFile_Save_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IPersistFile_SaveCompleted_Proxy(byval This as IPersistFile ptr, byval pszFileName as LPCOLESTR) as HRESULT
declare sub IPersistFile_SaveCompleted_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IPersistFile_GetCurFile_Proxy(byval This as IPersistFile ptr, byval ppszFileName as LPOLESTR ptr) as HRESULT
declare sub IPersistFile_GetCurFile_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)

#define __IPersistStorage_INTERFACE_DEFINED__

type LPPERSISTSTORAGE as IPersistStorage ptr

extern IID_IPersistStorage as const GUID

type IPersistStorageVtbl field = 8
	QueryInterface as function(byval This as IPersistStorage ptr, byval riid as const IID const ptr, byval ppvObject as any ptr ptr) as HRESULT
	AddRef as function(byval This as IPersistStorage ptr) as ULONG_
	Release as function(byval This as IPersistStorage ptr) as ULONG_
	GetClassID as function(byval This as IPersistStorage ptr, byval pClassID as CLSID ptr) as HRESULT
	IsDirty as function(byval This as IPersistStorage ptr) as HRESULT
	InitNew as function(byval This as IPersistStorage ptr, byval pStg as IStorage ptr) as HRESULT
	Load as function(byval This as IPersistStorage ptr, byval pStg as IStorage ptr) as HRESULT
	Save as function(byval This as IPersistStorage ptr, byval pStgSave as IStorage ptr, byval fSameAsLoad as WINBOOL) as HRESULT
	SaveCompleted as function(byval This as IPersistStorage ptr, byval pStgNew as IStorage ptr) as HRESULT
	HandsOffStorage as function(byval This as IPersistStorage ptr) as HRESULT
end type

type IPersistStorage_ field = 8
	lpVtbl as IPersistStorageVtbl ptr
end type

declare function IPersistStorage_IsDirty_Proxy(byval This as IPersistStorage ptr) as HRESULT
declare sub IPersistStorage_IsDirty_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IPersistStorage_InitNew_Proxy(byval This as IPersistStorage ptr, byval pStg as IStorage ptr) as HRESULT
declare sub IPersistStorage_InitNew_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IPersistStorage_Load_Proxy(byval This as IPersistStorage ptr, byval pStg as IStorage ptr) as HRESULT
declare sub IPersistStorage_Load_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IPersistStorage_Save_Proxy(byval This as IPersistStorage ptr, byval pStgSave as IStorage ptr, byval fSameAsLoad as WINBOOL) as HRESULT
declare sub IPersistStorage_Save_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IPersistStorage_SaveCompleted_Proxy(byval This as IPersistStorage ptr, byval pStgNew as IStorage ptr) as HRESULT
declare sub IPersistStorage_SaveCompleted_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IPersistStorage_HandsOffStorage_Proxy(byval This as IPersistStorage ptr) as HRESULT
declare sub IPersistStorage_HandsOffStorage_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)

#define __ILockBytes_INTERFACE_DEFINED__

type LPLOCKBYTES as ILockBytes ptr

extern IID_ILockBytes as const GUID

type ILockBytesVtbl field = 8
	QueryInterface as function(byval This as ILockBytes ptr, byval riid as const IID const ptr, byval ppvObject as any ptr ptr) as HRESULT
	AddRef as function(byval This as ILockBytes ptr) as ULONG_
	Release as function(byval This as ILockBytes ptr) as ULONG_
	ReadAt as function(byval This as ILockBytes ptr, byval ulOffset as ULARGE_INTEGER, byval pv as any ptr, byval cb as ULONG_, byval pcbRead as ULONG_ ptr) as HRESULT
	WriteAt as function(byval This as ILockBytes ptr, byval ulOffset as ULARGE_INTEGER, byval pv as const any ptr, byval cb as ULONG_, byval pcbWritten as ULONG_ ptr) as HRESULT
	Flush as function(byval This as ILockBytes ptr) as HRESULT
	SetSize as function(byval This as ILockBytes ptr, byval cb as ULARGE_INTEGER) as HRESULT
	LockRegion as function(byval This as ILockBytes ptr, byval libOffset as ULARGE_INTEGER, byval cb as ULARGE_INTEGER, byval dwLockType as DWORD) as HRESULT
	UnlockRegion as function(byval This as ILockBytes ptr, byval libOffset as ULARGE_INTEGER, byval cb as ULARGE_INTEGER, byval dwLockType as DWORD) as HRESULT
	Stat as function(byval This as ILockBytes ptr, byval pstatstg as STATSTG ptr, byval grfStatFlag as DWORD) as HRESULT
end type

type ILockBytes_ field = 8
	lpVtbl as ILockBytesVtbl ptr
end type

declare function ILockBytes_RemoteReadAt_Proxy(byval This as ILockBytes ptr, byval ulOffset as ULARGE_INTEGER, byval pv as byte__ ptr, byval cb as ULONG_, byval pcbRead as ULONG_ ptr) as HRESULT
declare sub ILockBytes_RemoteReadAt_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function ILockBytes_RemoteWriteAt_Proxy(byval This as ILockBytes ptr, byval ulOffset as ULARGE_INTEGER, byval pv as const byte__ ptr, byval cb as ULONG_, byval pcbWritten as ULONG_ ptr) as HRESULT
declare sub ILockBytes_RemoteWriteAt_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function ILockBytes_Flush_Proxy(byval This as ILockBytes ptr) as HRESULT
declare sub ILockBytes_Flush_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function ILockBytes_SetSize_Proxy(byval This as ILockBytes ptr, byval cb as ULARGE_INTEGER) as HRESULT
declare sub ILockBytes_SetSize_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function ILockBytes_LockRegion_Proxy(byval This as ILockBytes ptr, byval libOffset as ULARGE_INTEGER, byval cb as ULARGE_INTEGER, byval dwLockType as DWORD) as HRESULT
declare sub ILockBytes_LockRegion_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function ILockBytes_UnlockRegion_Proxy(byval This as ILockBytes ptr, byval libOffset as ULARGE_INTEGER, byval cb as ULARGE_INTEGER, byval dwLockType as DWORD) as HRESULT
declare sub ILockBytes_UnlockRegion_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function ILockBytes_Stat_Proxy(byval This as ILockBytes ptr, byval pstatstg as STATSTG ptr, byval grfStatFlag as DWORD) as HRESULT
declare sub ILockBytes_Stat_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function ILockBytes_ReadAt_Proxy(byval This as ILockBytes ptr, byval ulOffset as ULARGE_INTEGER, byval pv as any ptr, byval cb as ULONG_, byval pcbRead as ULONG_ ptr) as HRESULT
declare function ILockBytes_ReadAt_Stub(byval This as ILockBytes ptr, byval ulOffset as ULARGE_INTEGER, byval pv as byte__ ptr, byval cb as ULONG_, byval pcbRead as ULONG_ ptr) as HRESULT
declare function ILockBytes_WriteAt_Proxy(byval This as ILockBytes ptr, byval ulOffset as ULARGE_INTEGER, byval pv as const any ptr, byval cb as ULONG_, byval pcbWritten as ULONG_ ptr) as HRESULT
declare function ILockBytes_WriteAt_Stub(byval This as ILockBytes ptr, byval ulOffset as ULARGE_INTEGER, byval pv as const byte__ ptr, byval cb as ULONG_, byval pcbWritten as ULONG_ ptr) as HRESULT

#define __IEnumFORMATETC_INTERFACE_DEFINED__

type LPENUMFORMATETC as IEnumFORMATETC ptr

type tagDVTARGETDEVICE field = 8
	tdSize as DWORD
	tdDriverNameOffset as WORD
	tdDeviceNameOffset as WORD
	tdPortNameOffset as WORD
	tdExtDevmodeOffset as WORD
	tdData(0 to 0) as BYTE_
end type

type DVTARGETDEVICE as tagDVTARGETDEVICE
type LPCLIPFORMAT as CLIPFORMAT ptr

type tagFORMATETC field = 8
	cfFormat as CLIPFORMAT
	ptd as DVTARGETDEVICE ptr
	dwAspect as DWORD
	lindex as LONG_
	tymed as DWORD
end type

type FORMATETC as tagFORMATETC
type LPFORMATETC as tagFORMATETC ptr

extern IID_IEnumFORMATETC as const GUID

type IEnumFORMATETCVtbl field = 8
	QueryInterface as function(byval This as IEnumFORMATETC ptr, byval riid as const IID const ptr, byval ppvObject as any ptr ptr) as HRESULT
	AddRef as function(byval This as IEnumFORMATETC ptr) as ULONG_
	Release as function(byval This as IEnumFORMATETC ptr) as ULONG_
	Next as function(byval This as IEnumFORMATETC ptr, byval celt as ULONG_, byval rgelt as FORMATETC ptr, byval pceltFetched as ULONG_ ptr) as HRESULT
	Skip as function(byval This as IEnumFORMATETC ptr, byval celt as ULONG_) as HRESULT
	Reset as function(byval This as IEnumFORMATETC ptr) as HRESULT
	Clone as function(byval This as IEnumFORMATETC ptr, byval ppenum as IEnumFORMATETC ptr ptr) as HRESULT
end type

type IEnumFORMATETC_ field = 8
	lpVtbl as IEnumFORMATETCVtbl ptr
end type

declare function IEnumFORMATETC_RemoteNext_Proxy(byval This as IEnumFORMATETC ptr, byval celt as ULONG_, byval rgelt as FORMATETC ptr, byval pceltFetched as ULONG_ ptr) as HRESULT
declare sub IEnumFORMATETC_RemoteNext_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IEnumFORMATETC_Skip_Proxy(byval This as IEnumFORMATETC ptr, byval celt as ULONG_) as HRESULT
declare sub IEnumFORMATETC_Skip_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IEnumFORMATETC_Reset_Proxy(byval This as IEnumFORMATETC ptr) as HRESULT
declare sub IEnumFORMATETC_Reset_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IEnumFORMATETC_Clone_Proxy(byval This as IEnumFORMATETC ptr, byval ppenum as IEnumFORMATETC ptr ptr) as HRESULT
declare sub IEnumFORMATETC_Clone_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IEnumFORMATETC_Next_Proxy(byval This as IEnumFORMATETC ptr, byval celt as ULONG_, byval rgelt as FORMATETC ptr, byval pceltFetched as ULONG_ ptr) as HRESULT
declare function IEnumFORMATETC_Next_Stub(byval This as IEnumFORMATETC ptr, byval celt as ULONG_, byval rgelt as FORMATETC ptr, byval pceltFetched as ULONG_ ptr) as HRESULT

#define __IEnumSTATDATA_INTERFACE_DEFINED__

type LPENUMSTATDATA as IEnumSTATDATA ptr

type tagADVF as long
enum
	ADVF_NODATA = 1
	ADVF_PRIMEFIRST = 2
	ADVF_ONLYONCE = 4
	ADVF_DATAONSTOP = 64
	ADVFCACHE_NOHANDLER = 8
	ADVFCACHE_FORCEBUILTIN = 16
	ADVFCACHE_ONSAVE = 32
end enum

type ADVF as tagADVF

type tagSTATDATA field = 8
	formatetc as FORMATETC
	advf as DWORD
	pAdvSink as IAdviseSink ptr
	dwConnection as DWORD
end type

type STATDATA as tagSTATDATA
type LPSTATDATA as STATDATA ptr

extern IID_IEnumSTATDATA as const GUID

type IEnumSTATDATAVtbl field = 8
	QueryInterface as function(byval This as IEnumSTATDATA ptr, byval riid as const IID const ptr, byval ppvObject as any ptr ptr) as HRESULT
	AddRef as function(byval This as IEnumSTATDATA ptr) as ULONG_
	Release as function(byval This as IEnumSTATDATA ptr) as ULONG_
	Next as function(byval This as IEnumSTATDATA ptr, byval celt as ULONG_, byval rgelt as STATDATA ptr, byval pceltFetched as ULONG_ ptr) as HRESULT
	Skip as function(byval This as IEnumSTATDATA ptr, byval celt as ULONG_) as HRESULT
	Reset as function(byval This as IEnumSTATDATA ptr) as HRESULT
	Clone as function(byval This as IEnumSTATDATA ptr, byval ppenum as IEnumSTATDATA ptr ptr) as HRESULT
end type

type IEnumSTATDATA_ field = 8
	lpVtbl as IEnumSTATDATAVtbl ptr
end type

declare function IEnumSTATDATA_RemoteNext_Proxy(byval This as IEnumSTATDATA ptr, byval celt as ULONG_, byval rgelt as STATDATA ptr, byval pceltFetched as ULONG_ ptr) as HRESULT
declare sub IEnumSTATDATA_RemoteNext_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IEnumSTATDATA_Skip_Proxy(byval This as IEnumSTATDATA ptr, byval celt as ULONG_) as HRESULT
declare sub IEnumSTATDATA_Skip_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IEnumSTATDATA_Reset_Proxy(byval This as IEnumSTATDATA ptr) as HRESULT
declare sub IEnumSTATDATA_Reset_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IEnumSTATDATA_Clone_Proxy(byval This as IEnumSTATDATA ptr, byval ppenum as IEnumSTATDATA ptr ptr) as HRESULT
declare sub IEnumSTATDATA_Clone_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IEnumSTATDATA_Next_Proxy(byval This as IEnumSTATDATA ptr, byval celt as ULONG_, byval rgelt as STATDATA ptr, byval pceltFetched as ULONG_ ptr) as HRESULT
declare function IEnumSTATDATA_Next_Stub(byval This as IEnumSTATDATA ptr, byval celt as ULONG_, byval rgelt as STATDATA ptr, byval pceltFetched as ULONG_ ptr) as HRESULT

#define __IRootStorage_INTERFACE_DEFINED__

type LPROOTSTORAGE as IRootStorage ptr

extern IID_IRootStorage as const GUID

type IRootStorageVtbl field = 8
	QueryInterface as function(byval This as IRootStorage ptr, byval riid as const IID const ptr, byval ppvObject as any ptr ptr) as HRESULT
	AddRef as function(byval This as IRootStorage ptr) as ULONG_
	Release as function(byval This as IRootStorage ptr) as ULONG_
	SwitchToFile as function(byval This as IRootStorage ptr, byval pszFile as LPOLESTR) as HRESULT
end type

type IRootStorage_ field = 8
	lpVtbl as IRootStorageVtbl ptr
end type

declare function IRootStorage_SwitchToFile_Proxy(byval This as IRootStorage ptr, byval pszFile as LPOLESTR) as HRESULT
declare sub IRootStorage_SwitchToFile_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)

#define __IAdviseSink_INTERFACE_DEFINED__

type LPADVISESINK as IAdviseSink ptr

type tagTYMED as long
enum
	TYMED_HGLOBAL = 1
	TYMED_FILE = 2
	TYMED_ISTREAM = 4
	TYMED_ISTORAGE = 8
	TYMED_GDI = 16
	TYMED_MFPICT = 32
	TYMED_ENHMF = 64
	TYMED_NULL = 0
end enum

type TYMED as tagTYMED

type tagRemSTGMEDIUM field = 8
	tymed as DWORD
	dwHandleType as DWORD
	pData as ULONG_
	pUnkForRelease as ULONG_
	cbData as ULONG_
	data(0 to 0) as byte__
end type

type RemSTGMEDIUM as tagRemSTGMEDIUM

type tagSTGMEDIUM field = 8
	tymed as DWORD

	union field = 8
		hBitmap as HBITMAP
		hMetaFilePict as HMETAFILEPICT
		hEnhMetaFile as HENHMETAFILE
		hGlobal as HGLOBAL
		lpszFileName as LPOLESTR
		pstm as IStream ptr
		pstg as IStorage ptr
	end union

	pUnkForRelease as IUnknown ptr
end type

type uSTGMEDIUM as tagSTGMEDIUM

union ___GDI_OBJECT_u field = 8
	hBitmap as wireHBITMAP
	hPalette as wireHPALETTE
	hGeneric as wireHGLOBAL
end union

type _GDI_OBJECT field = 8
	ObjectType as DWORD
	u as ___GDI_OBJECT_u
end type

type GDI_OBJECT as _GDI_OBJECT

union ___userSTGMEDIUM__STGMEDIUM_UNION_u field = 8
	hMetaFilePict as wireHMETAFILEPICT
	hHEnhMetaFile as wireHENHMETAFILE
	hGdiHandle as GDI_OBJECT ptr
	hGlobal as wireHGLOBAL
	lpszFileName as LPOLESTR
	pstm as BYTE_BLOB ptr
	pstg as BYTE_BLOB ptr
end union

type _STGMEDIUM_UNION field = 8
	tymed as DWORD
	u as ___userSTGMEDIUM__STGMEDIUM_UNION_u
end type

type _userSTGMEDIUM field = 8
	pUnkForRelease as IUnknown ptr
end type

type userSTGMEDIUM as _userSTGMEDIUM
type wireSTGMEDIUM as userSTGMEDIUM ptr
type STGMEDIUM as uSTGMEDIUM
type wireASYNC_STGMEDIUM as userSTGMEDIUM ptr
type ASYNC_STGMEDIUM as STGMEDIUM
type LPSTGMEDIUM as STGMEDIUM ptr

type _userFLAG_STGMEDIUM field = 8
	ContextFlags as LONG_
	fPassOwnership as LONG_
	Stgmed as userSTGMEDIUM
end type

type userFLAG_STGMEDIUM as _userFLAG_STGMEDIUM
type wireFLAG_STGMEDIUM as userFLAG_STGMEDIUM ptr

type _FLAG_STGMEDIUM field = 8
	ContextFlags as LONG_
	fPassOwnership as LONG_
	Stgmed as STGMEDIUM
end type

type FLAG_STGMEDIUM as _FLAG_STGMEDIUM

extern IID_IAdviseSink as const GUID

type IAdviseSinkVtbl field = 8
	QueryInterface as function(byval This as IAdviseSink ptr, byval riid as const IID const ptr, byval ppvObject as any ptr ptr) as HRESULT
	AddRef as function(byval This as IAdviseSink ptr) as ULONG_
	Release as function(byval This as IAdviseSink ptr) as ULONG_
	OnDataChange as sub(byval This as IAdviseSink ptr, byval pFormatetc as FORMATETC ptr, byval pStgmed as STGMEDIUM ptr)
	OnViewChange as sub(byval This as IAdviseSink ptr, byval dwAspect as DWORD, byval lindex as LONG_)
	OnRename as sub(byval This as IAdviseSink ptr, byval pmk as IMoniker ptr)
	OnSave as sub(byval This as IAdviseSink ptr)
	OnClose as sub(byval This as IAdviseSink ptr)
end type

type IAdviseSink_ field = 8
	lpVtbl as IAdviseSinkVtbl ptr
end type

declare function IAdviseSink_RemoteOnDataChange_Proxy(byval This as IAdviseSink ptr, byval pFormatetc as FORMATETC ptr, byval pStgmed as ASYNC_STGMEDIUM ptr) as HRESULT
declare sub IAdviseSink_RemoteOnDataChange_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IAdviseSink_RemoteOnViewChange_Proxy(byval This as IAdviseSink ptr, byval dwAspect as DWORD, byval lindex as LONG_) as HRESULT
declare sub IAdviseSink_RemoteOnViewChange_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IAdviseSink_RemoteOnRename_Proxy(byval This as IAdviseSink ptr, byval pmk as IMoniker ptr) as HRESULT
declare sub IAdviseSink_RemoteOnRename_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IAdviseSink_RemoteOnSave_Proxy(byval This as IAdviseSink ptr) as HRESULT
declare sub IAdviseSink_RemoteOnSave_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IAdviseSink_RemoteOnClose_Proxy(byval This as IAdviseSink ptr) as HRESULT
declare sub IAdviseSink_RemoteOnClose_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare sub IAdviseSink_OnDataChange_Proxy(byval This as IAdviseSink ptr, byval pFormatetc as FORMATETC ptr, byval pStgmed as STGMEDIUM ptr)
declare function IAdviseSink_OnDataChange_Stub(byval This as IAdviseSink ptr, byval pFormatetc as FORMATETC ptr, byval pStgmed as ASYNC_STGMEDIUM ptr) as HRESULT
declare sub IAdviseSink_OnViewChange_Proxy(byval This as IAdviseSink ptr, byval dwAspect as DWORD, byval lindex as LONG_)
declare function IAdviseSink_OnViewChange_Stub(byval This as IAdviseSink ptr, byval dwAspect as DWORD, byval lindex as LONG_) as HRESULT
declare sub IAdviseSink_OnRename_Proxy(byval This as IAdviseSink ptr, byval pmk as IMoniker ptr)
declare function IAdviseSink_OnRename_Stub(byval This as IAdviseSink ptr, byval pmk as IMoniker ptr) as HRESULT
declare sub IAdviseSink_OnSave_Proxy(byval This as IAdviseSink ptr)
declare function IAdviseSink_OnSave_Stub(byval This as IAdviseSink ptr) as HRESULT
declare sub IAdviseSink_OnClose_Proxy(byval This as IAdviseSink ptr)
declare function IAdviseSink_OnClose_Stub(byval This as IAdviseSink ptr) as HRESULT

#define __AsyncIAdviseSink_INTERFACE_DEFINED__

extern IID_AsyncIAdviseSink as const GUID

type AsyncIAdviseSinkVtbl field = 8
	QueryInterface as function(byval This as AsyncIAdviseSink ptr, byval riid as const IID const ptr, byval ppvObject as any ptr ptr) as HRESULT
	AddRef as function(byval This as AsyncIAdviseSink ptr) as ULONG_
	Release as function(byval This as AsyncIAdviseSink ptr) as ULONG_
	Begin_OnDataChange as sub(byval This as AsyncIAdviseSink ptr, byval pFormatetc as FORMATETC ptr, byval pStgmed as STGMEDIUM ptr)
	Finish_OnDataChange as sub(byval This as AsyncIAdviseSink ptr)
	Begin_OnViewChange as sub(byval This as AsyncIAdviseSink ptr, byval dwAspect as DWORD, byval lindex as LONG_)
	Finish_OnViewChange as sub(byval This as AsyncIAdviseSink ptr)
	Begin_OnRename as sub(byval This as AsyncIAdviseSink ptr, byval pmk as IMoniker ptr)
	Finish_OnRename as sub(byval This as AsyncIAdviseSink ptr)
	Begin_OnSave as sub(byval This as AsyncIAdviseSink ptr)
	Finish_OnSave as sub(byval This as AsyncIAdviseSink ptr)
	Begin_OnClose as sub(byval This as AsyncIAdviseSink ptr)
	Finish_OnClose as sub(byval This as AsyncIAdviseSink ptr)
end type

type AsyncIAdviseSink_ field = 8
	lpVtbl as AsyncIAdviseSinkVtbl ptr
end type

declare function AsyncIAdviseSink_Begin_RemoteOnDataChange_Proxy(byval This as IAdviseSink ptr, byval pFormatetc as FORMATETC ptr, byval pStgmed as ASYNC_STGMEDIUM ptr) as HRESULT
declare sub AsyncIAdviseSink_Begin_RemoteOnDataChange_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function AsyncIAdviseSink_Finish_RemoteOnDataChange_Proxy(byval This as IAdviseSink ptr, byval pFormatetc as FORMATETC ptr, byval pStgmed as ASYNC_STGMEDIUM ptr) as HRESULT
declare sub AsyncIAdviseSink_Finish_RemoteOnDataChange_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function AsyncIAdviseSink_Begin_RemoteOnViewChange_Proxy(byval This as IAdviseSink ptr, byval dwAspect as DWORD, byval lindex as LONG_) as HRESULT
declare sub AsyncIAdviseSink_Begin_RemoteOnViewChange_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function AsyncIAdviseSink_Finish_RemoteOnViewChange_Proxy(byval This as IAdviseSink ptr, byval dwAspect as DWORD, byval lindex as LONG_) as HRESULT
declare sub AsyncIAdviseSink_Finish_RemoteOnViewChange_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function AsyncIAdviseSink_Begin_RemoteOnRename_Proxy(byval This as IAdviseSink ptr, byval pmk as IMoniker ptr) as HRESULT
declare sub AsyncIAdviseSink_Begin_RemoteOnRename_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function AsyncIAdviseSink_Finish_RemoteOnRename_Proxy(byval This as IAdviseSink ptr, byval pmk as IMoniker ptr) as HRESULT
declare sub AsyncIAdviseSink_Finish_RemoteOnRename_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function AsyncIAdviseSink_Begin_RemoteOnSave_Proxy(byval This as IAdviseSink ptr) as HRESULT
declare sub AsyncIAdviseSink_Begin_RemoteOnSave_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function AsyncIAdviseSink_Finish_RemoteOnSave_Proxy(byval This as IAdviseSink ptr) as HRESULT
declare sub AsyncIAdviseSink_Finish_RemoteOnSave_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function AsyncIAdviseSink_Begin_RemoteOnClose_Proxy(byval This as IAdviseSink ptr) as HRESULT
declare sub AsyncIAdviseSink_Begin_RemoteOnClose_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function AsyncIAdviseSink_Finish_RemoteOnClose_Proxy(byval This as IAdviseSink ptr) as HRESULT
declare sub AsyncIAdviseSink_Finish_RemoteOnClose_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare sub AsyncIAdviseSink_Begin_OnDataChange_Proxy(byval This as IAdviseSink ptr, byval pFormatetc as FORMATETC ptr, byval pStgmed as STGMEDIUM ptr)
declare function AsyncIAdviseSink_Begin_OnDataChange_Stub(byval This as IAdviseSink ptr, byval pFormatetc as FORMATETC ptr, byval pStgmed as ASYNC_STGMEDIUM ptr) as HRESULT
declare sub AsyncIAdviseSink_Finish_OnDataChange_Proxy(byval This as IAdviseSink ptr)
declare function AsyncIAdviseSink_Finish_OnDataChange_Stub(byval This as IAdviseSink ptr, byval pFormatetc as FORMATETC ptr, byval pStgmed as ASYNC_STGMEDIUM ptr) as HRESULT
declare sub AsyncIAdviseSink_Begin_OnViewChange_Proxy(byval This as IAdviseSink ptr, byval dwAspect as DWORD, byval lindex as LONG_)
declare function AsyncIAdviseSink_Begin_OnViewChange_Stub(byval This as IAdviseSink ptr, byval dwAspect as DWORD, byval lindex as LONG_) as HRESULT
declare sub AsyncIAdviseSink_Finish_OnViewChange_Proxy(byval This as IAdviseSink ptr)
declare function AsyncIAdviseSink_Finish_OnViewChange_Stub(byval This as IAdviseSink ptr, byval dwAspect as DWORD, byval lindex as LONG_) as HRESULT
declare sub AsyncIAdviseSink_Begin_OnRename_Proxy(byval This as IAdviseSink ptr, byval pmk as IMoniker ptr)
declare function AsyncIAdviseSink_Begin_OnRename_Stub(byval This as IAdviseSink ptr, byval pmk as IMoniker ptr) as HRESULT
declare sub AsyncIAdviseSink_Finish_OnRename_Proxy(byval This as IAdviseSink ptr)
declare function AsyncIAdviseSink_Finish_OnRename_Stub(byval This as IAdviseSink ptr, byval pmk as IMoniker ptr) as HRESULT
declare sub AsyncIAdviseSink_Begin_OnSave_Proxy(byval This as IAdviseSink ptr)
declare function AsyncIAdviseSink_Begin_OnSave_Stub(byval This as IAdviseSink ptr) as HRESULT
declare sub AsyncIAdviseSink_Finish_OnSave_Proxy(byval This as IAdviseSink ptr)
declare function AsyncIAdviseSink_Finish_OnSave_Stub(byval This as IAdviseSink ptr) as HRESULT
declare sub AsyncIAdviseSink_Begin_OnClose_Proxy(byval This as IAdviseSink ptr)
declare function AsyncIAdviseSink_Begin_OnClose_Stub(byval This as IAdviseSink ptr) as HRESULT
declare sub AsyncIAdviseSink_Finish_OnClose_Proxy(byval This as IAdviseSink ptr)
declare function AsyncIAdviseSink_Finish_OnClose_Stub(byval This as IAdviseSink ptr) as HRESULT

#define __IAdviseSink2_INTERFACE_DEFINED__

type LPADVISESINK2 as IAdviseSink2 ptr

extern IID_IAdviseSink2 as const GUID

type IAdviseSink2Vtbl field = 8
	QueryInterface as function(byval This as IAdviseSink2 ptr, byval riid as const IID const ptr, byval ppvObject as any ptr ptr) as HRESULT
	AddRef as function(byval This as IAdviseSink2 ptr) as ULONG_
	Release as function(byval This as IAdviseSink2 ptr) as ULONG_
	OnDataChange as sub(byval This as IAdviseSink2 ptr, byval pFormatetc as FORMATETC ptr, byval pStgmed as STGMEDIUM ptr)
	OnViewChange as sub(byval This as IAdviseSink2 ptr, byval dwAspect as DWORD, byval lindex as LONG_)
	OnRename as sub(byval This as IAdviseSink2 ptr, byval pmk as IMoniker ptr)
	OnSave as sub(byval This as IAdviseSink2 ptr)
	OnClose as sub(byval This as IAdviseSink2 ptr)
	OnLinkSrcChange as sub(byval This as IAdviseSink2 ptr, byval pmk as IMoniker ptr)
end type

type IAdviseSink2_ field = 8
	lpVtbl as IAdviseSink2Vtbl ptr
end type

declare function IAdviseSink2_RemoteOnLinkSrcChange_Proxy(byval This as IAdviseSink2 ptr, byval pmk as IMoniker ptr) as HRESULT
declare sub IAdviseSink2_RemoteOnLinkSrcChange_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare sub IAdviseSink2_OnLinkSrcChange_Proxy(byval This as IAdviseSink2 ptr, byval pmk as IMoniker ptr)
declare function IAdviseSink2_OnLinkSrcChange_Stub(byval This as IAdviseSink2 ptr, byval pmk as IMoniker ptr) as HRESULT

#define __AsyncIAdviseSink2_INTERFACE_DEFINED__

extern IID_AsyncIAdviseSink2 as const GUID

type AsyncIAdviseSink2Vtbl field = 8
	QueryInterface as function(byval This as AsyncIAdviseSink2 ptr, byval riid as const IID const ptr, byval ppvObject as any ptr ptr) as HRESULT
	AddRef as function(byval This as AsyncIAdviseSink2 ptr) as ULONG_
	Release as function(byval This as AsyncIAdviseSink2 ptr) as ULONG_
	Begin_OnDataChange as sub(byval This as AsyncIAdviseSink2 ptr, byval pFormatetc as FORMATETC ptr, byval pStgmed as STGMEDIUM ptr)
	Finish_OnDataChange as sub(byval This as AsyncIAdviseSink2 ptr)
	Begin_OnViewChange as sub(byval This as AsyncIAdviseSink2 ptr, byval dwAspect as DWORD, byval lindex as LONG_)
	Finish_OnViewChange as sub(byval This as AsyncIAdviseSink2 ptr)
	Begin_OnRename as sub(byval This as AsyncIAdviseSink2 ptr, byval pmk as IMoniker ptr)
	Finish_OnRename as sub(byval This as AsyncIAdviseSink2 ptr)
	Begin_OnSave as sub(byval This as AsyncIAdviseSink2 ptr)
	Finish_OnSave as sub(byval This as AsyncIAdviseSink2 ptr)
	Begin_OnClose as sub(byval This as AsyncIAdviseSink2 ptr)
	Finish_OnClose as sub(byval This as AsyncIAdviseSink2 ptr)
	Begin_OnLinkSrcChange as sub(byval This as AsyncIAdviseSink2 ptr, byval pmk as IMoniker ptr)
	Finish_OnLinkSrcChange as sub(byval This as AsyncIAdviseSink2 ptr)
end type

type AsyncIAdviseSink2_ field = 8
	lpVtbl as AsyncIAdviseSink2Vtbl ptr
end type

declare function AsyncIAdviseSink2_Begin_RemoteOnLinkSrcChange_Proxy(byval This as IAdviseSink2 ptr, byval pmk as IMoniker ptr) as HRESULT
declare sub AsyncIAdviseSink2_Begin_RemoteOnLinkSrcChange_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function AsyncIAdviseSink2_Finish_RemoteOnLinkSrcChange_Proxy(byval This as IAdviseSink2 ptr, byval pmk as IMoniker ptr) as HRESULT
declare sub AsyncIAdviseSink2_Finish_RemoteOnLinkSrcChange_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare sub AsyncIAdviseSink2_Begin_OnLinkSrcChange_Proxy(byval This as IAdviseSink2 ptr, byval pmk as IMoniker ptr)
declare function AsyncIAdviseSink2_Begin_OnLinkSrcChange_Stub(byval This as IAdviseSink2 ptr, byval pmk as IMoniker ptr) as HRESULT
declare sub AsyncIAdviseSink2_Finish_OnLinkSrcChange_Proxy(byval This as IAdviseSink2 ptr)
declare function AsyncIAdviseSink2_Finish_OnLinkSrcChange_Stub(byval This as IAdviseSink2 ptr, byval pmk as IMoniker ptr) as HRESULT

#define __IDataObject_INTERFACE_DEFINED__

type LPDATAOBJECT as IDataObject ptr

type tagDATADIR as long
enum
	DATADIR_GET = 1
	DATADIR_SET = 2
end enum

type DATADIR as tagDATADIR

extern IID_IDataObject as const GUID

type IDataObjectVtbl field = 8
	QueryInterface as function(byval This as IDataObject ptr, byval riid as const IID const ptr, byval ppvObject as any ptr ptr) as HRESULT
	AddRef as function(byval This as IDataObject ptr) as ULONG_
	Release as function(byval This as IDataObject ptr) as ULONG_
	GetData as function(byval This as IDataObject ptr, byval pformatetcIn as FORMATETC ptr, byval pmedium as STGMEDIUM ptr) as HRESULT
	GetDataHere as function(byval This as IDataObject ptr, byval pformatetc as FORMATETC ptr, byval pmedium as STGMEDIUM ptr) as HRESULT
	QueryGetData as function(byval This as IDataObject ptr, byval pformatetc as FORMATETC ptr) as HRESULT
	GetCanonicalFormatEtc as function(byval This as IDataObject ptr, byval pformatectIn as FORMATETC ptr, byval pformatetcOut as FORMATETC ptr) as HRESULT
	SetData as function(byval This as IDataObject ptr, byval pformatetc as FORMATETC ptr, byval pmedium as STGMEDIUM ptr, byval fRelease as WINBOOL) as HRESULT
	EnumFormatEtc as function(byval This as IDataObject ptr, byval dwDirection as DWORD, byval ppenumFormatEtc as IEnumFORMATETC ptr ptr) as HRESULT
	DAdvise as function(byval This as IDataObject ptr, byval pformatetc as FORMATETC ptr, byval advf as DWORD, byval pAdvSink as IAdviseSink ptr, byval pdwConnection as DWORD ptr) as HRESULT
	DUnadvise as function(byval This as IDataObject ptr, byval dwConnection as DWORD) as HRESULT
	EnumDAdvise as function(byval This as IDataObject ptr, byval ppenumAdvise as IEnumSTATDATA ptr ptr) as HRESULT
end type

type IDataObject_ field = 8
	lpVtbl as IDataObjectVtbl ptr
end type

declare function IDataObject_RemoteGetData_Proxy(byval This as IDataObject ptr, byval pformatetcIn as FORMATETC ptr, byval pRemoteMedium as STGMEDIUM ptr) as HRESULT
declare sub IDataObject_RemoteGetData_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IDataObject_RemoteGetDataHere_Proxy(byval This as IDataObject ptr, byval pformatetc as FORMATETC ptr, byval pRemoteMedium as STGMEDIUM ptr) as HRESULT
declare sub IDataObject_RemoteGetDataHere_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IDataObject_QueryGetData_Proxy(byval This as IDataObject ptr, byval pformatetc as FORMATETC ptr) as HRESULT
declare sub IDataObject_QueryGetData_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IDataObject_GetCanonicalFormatEtc_Proxy(byval This as IDataObject ptr, byval pformatectIn as FORMATETC ptr, byval pformatetcOut as FORMATETC ptr) as HRESULT
declare sub IDataObject_GetCanonicalFormatEtc_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IDataObject_RemoteSetData_Proxy(byval This as IDataObject ptr, byval pformatetc as FORMATETC ptr, byval pmedium as FLAG_STGMEDIUM ptr, byval fRelease as WINBOOL) as HRESULT
declare sub IDataObject_RemoteSetData_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IDataObject_EnumFormatEtc_Proxy(byval This as IDataObject ptr, byval dwDirection as DWORD, byval ppenumFormatEtc as IEnumFORMATETC ptr ptr) as HRESULT
declare sub IDataObject_EnumFormatEtc_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IDataObject_DAdvise_Proxy(byval This as IDataObject ptr, byval pformatetc as FORMATETC ptr, byval advf as DWORD, byval pAdvSink as IAdviseSink ptr, byval pdwConnection as DWORD ptr) as HRESULT
declare sub IDataObject_DAdvise_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IDataObject_DUnadvise_Proxy(byval This as IDataObject ptr, byval dwConnection as DWORD) as HRESULT
declare sub IDataObject_DUnadvise_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IDataObject_EnumDAdvise_Proxy(byval This as IDataObject ptr, byval ppenumAdvise as IEnumSTATDATA ptr ptr) as HRESULT
declare sub IDataObject_EnumDAdvise_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IDataObject_GetData_Proxy(byval This as IDataObject ptr, byval pformatetcIn as FORMATETC ptr, byval pmedium as STGMEDIUM ptr) as HRESULT
declare function IDataObject_GetData_Stub(byval This as IDataObject ptr, byval pformatetcIn as FORMATETC ptr, byval pRemoteMedium as STGMEDIUM ptr) as HRESULT
declare function IDataObject_GetDataHere_Proxy(byval This as IDataObject ptr, byval pformatetc as FORMATETC ptr, byval pmedium as STGMEDIUM ptr) as HRESULT
declare function IDataObject_GetDataHere_Stub(byval This as IDataObject ptr, byval pformatetc as FORMATETC ptr, byval pRemoteMedium as STGMEDIUM ptr) as HRESULT
declare function IDataObject_SetData_Proxy(byval This as IDataObject ptr, byval pformatetc as FORMATETC ptr, byval pmedium as STGMEDIUM ptr, byval fRelease as WINBOOL) as HRESULT
declare function IDataObject_SetData_Stub(byval This as IDataObject ptr, byval pformatetc as FORMATETC ptr, byval pmedium as FLAG_STGMEDIUM ptr, byval fRelease as WINBOOL) as HRESULT

#define __IDataAdviseHolder_INTERFACE_DEFINED__

type LPDATAADVISEHOLDER as IDataAdviseHolder ptr

extern IID_IDataAdviseHolder as const GUID

type IDataAdviseHolderVtbl field = 8
	QueryInterface as function(byval This as IDataAdviseHolder ptr, byval riid as const IID const ptr, byval ppvObject as any ptr ptr) as HRESULT
	AddRef as function(byval This as IDataAdviseHolder ptr) as ULONG_
	Release as function(byval This as IDataAdviseHolder ptr) as ULONG_
	Advise as function(byval This as IDataAdviseHolder ptr, byval pDataObject as IDataObject ptr, byval pFetc as FORMATETC ptr, byval advf as DWORD, byval pAdvise as IAdviseSink ptr, byval pdwConnection as DWORD ptr) as HRESULT
	Unadvise as function(byval This as IDataAdviseHolder ptr, byval dwConnection as DWORD) as HRESULT
	EnumAdvise as function(byval This as IDataAdviseHolder ptr, byval ppenumAdvise as IEnumSTATDATA ptr ptr) as HRESULT
	SendOnDataChange as function(byval This as IDataAdviseHolder ptr, byval pDataObject as IDataObject ptr, byval dwReserved as DWORD, byval advf as DWORD) as HRESULT
end type

type IDataAdviseHolder_ field = 8
	lpVtbl as IDataAdviseHolderVtbl ptr
end type

declare function IDataAdviseHolder_Advise_Proxy(byval This as IDataAdviseHolder ptr, byval pDataObject as IDataObject ptr, byval pFetc as FORMATETC ptr, byval advf as DWORD, byval pAdvise as IAdviseSink ptr, byval pdwConnection as DWORD ptr) as HRESULT
declare sub IDataAdviseHolder_Advise_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IDataAdviseHolder_Unadvise_Proxy(byval This as IDataAdviseHolder ptr, byval dwConnection as DWORD) as HRESULT
declare sub IDataAdviseHolder_Unadvise_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IDataAdviseHolder_EnumAdvise_Proxy(byval This as IDataAdviseHolder ptr, byval ppenumAdvise as IEnumSTATDATA ptr ptr) as HRESULT
declare sub IDataAdviseHolder_EnumAdvise_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IDataAdviseHolder_SendOnDataChange_Proxy(byval This as IDataAdviseHolder ptr, byval pDataObject as IDataObject ptr, byval dwReserved as DWORD, byval advf as DWORD) as HRESULT
declare sub IDataAdviseHolder_SendOnDataChange_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)

#define __IMessageFilter_INTERFACE_DEFINED__

type LPMESSAGEFILTER as IMessageFilter ptr

type tagCALLTYPE as long
enum
	CALLTYPE_TOPLEVEL = 1
	CALLTYPE_NESTED = 2
	CALLTYPE_ASYNC = 3
	CALLTYPE_TOPLEVEL_CALLPENDING = 4
	CALLTYPE_ASYNC_CALLPENDING = 5
end enum

type CALLTYPE as tagCALLTYPE

type tagSERVERCALL as long
enum
	SERVERCALL_ISHANDLED = 0
	SERVERCALL_REJECTED = 1
	SERVERCALL_RETRYLATER = 2
end enum

type SERVERCALL as tagSERVERCALL

type tagPENDINGTYPE as long
enum
	PENDINGTYPE_TOPLEVEL = 1
	PENDINGTYPE_NESTED = 2
end enum

type PENDINGTYPE as tagPENDINGTYPE

type tagPENDINGMSG as long
enum
	PENDINGMSG_CANCELCALL = 0
	PENDINGMSG_WAITNOPROCESS = 1
	PENDINGMSG_WAITDEFPROCESS = 2
end enum

type PENDINGMSG as tagPENDINGMSG

type tagINTERFACEINFO field = 8
	pUnk as IUnknown ptr
	iid as IID
	wMethod as WORD
end type

type INTERFACEINFO as tagINTERFACEINFO
type LPINTERFACEINFO as tagINTERFACEINFO ptr

extern IID_IMessageFilter as const GUID

type IMessageFilterVtbl field = 8
	QueryInterface as function(byval This as IMessageFilter ptr, byval riid as const IID const ptr, byval ppvObject as any ptr ptr) as HRESULT
	AddRef as function(byval This as IMessageFilter ptr) as ULONG_
	Release as function(byval This as IMessageFilter ptr) as ULONG_
	HandleInComingCall as function(byval This as IMessageFilter ptr, byval dwCallType as DWORD, byval htaskCaller as HTASK, byval dwTickCount as DWORD, byval lpInterfaceInfo as LPINTERFACEINFO) as DWORD
	RetryRejectedCall as function(byval This as IMessageFilter ptr, byval htaskCallee as HTASK, byval dwTickCount as DWORD, byval dwRejectType as DWORD) as DWORD
	MessagePending as function(byval This as IMessageFilter ptr, byval htaskCallee as HTASK, byval dwTickCount as DWORD, byval dwPendingType as DWORD) as DWORD
end type

type IMessageFilter_ field = 8
	lpVtbl as IMessageFilterVtbl ptr
end type

declare function IMessageFilter_HandleInComingCall_Proxy(byval This as IMessageFilter ptr, byval dwCallType as DWORD, byval htaskCaller as HTASK, byval dwTickCount as DWORD, byval lpInterfaceInfo as LPINTERFACEINFO) as DWORD
declare sub IMessageFilter_HandleInComingCall_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IMessageFilter_RetryRejectedCall_Proxy(byval This as IMessageFilter ptr, byval htaskCallee as HTASK, byval dwTickCount as DWORD, byval dwRejectType as DWORD) as DWORD
declare sub IMessageFilter_RetryRejectedCall_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IMessageFilter_MessagePending_Proxy(byval This as IMessageFilter ptr, byval htaskCallee as HTASK, byval dwTickCount as DWORD, byval dwPendingType as DWORD) as DWORD
declare sub IMessageFilter_MessagePending_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)

extern FMTID_SummaryInformation as const FMTID
extern FMTID_DocSummaryInformation as const FMTID
extern FMTID_UserDefinedProperties as const FMTID
extern FMTID_DiscardableInformation as const FMTID
extern FMTID_ImageSummaryInformation as const FMTID
extern FMTID_AudioSummaryInformation as const FMTID
extern FMTID_VideoSummaryInformation as const FMTID
extern FMTID_MediaFileSummaryInformation as const FMTID

#define __IClassActivator_INTERFACE_DEFINED__

extern IID_IClassActivator as const GUID

type IClassActivatorVtbl field = 8
	QueryInterface as function(byval This as IClassActivator ptr, byval riid as const IID const ptr, byval ppvObject as any ptr ptr) as HRESULT
	AddRef as function(byval This as IClassActivator ptr) as ULONG_
	Release as function(byval This as IClassActivator ptr) as ULONG_
	GetClassObject as function(byval This as IClassActivator ptr, byval rclsid as const IID const ptr, byval dwClassContext as DWORD, byval locale as LCID, byval riid as const IID const ptr, byval ppv as any ptr ptr) as HRESULT
end type

type IClassActivator_ field = 8
	lpVtbl as IClassActivatorVtbl ptr
end type

declare function IClassActivator_GetClassObject_Proxy(byval This as IClassActivator ptr, byval rclsid as const IID const ptr, byval dwClassContext as DWORD, byval locale as LCID, byval riid as const IID const ptr, byval ppv as any ptr ptr) as HRESULT
declare sub IClassActivator_GetClassObject_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)

#define __IFillLockBytes_INTERFACE_DEFINED__

extern IID_IFillLockBytes as const GUID

type IFillLockBytesVtbl field = 8
	QueryInterface as function(byval This as IFillLockBytes ptr, byval riid as const IID const ptr, byval ppvObject as any ptr ptr) as HRESULT
	AddRef as function(byval This as IFillLockBytes ptr) as ULONG_
	Release as function(byval This as IFillLockBytes ptr) as ULONG_
	FillAppend as function(byval This as IFillLockBytes ptr, byval pv as const any ptr, byval cb as ULONG_, byval pcbWritten as ULONG_ ptr) as HRESULT
	FillAt as function(byval This as IFillLockBytes ptr, byval ulOffset as ULARGE_INTEGER, byval pv as const any ptr, byval cb as ULONG_, byval pcbWritten as ULONG_ ptr) as HRESULT
	SetFillSize as function(byval This as IFillLockBytes ptr, byval ulSize as ULARGE_INTEGER) as HRESULT
	Terminate as function(byval This as IFillLockBytes ptr, byval bCanceled as WINBOOL) as HRESULT
end type

type IFillLockBytes_ field = 8
	lpVtbl as IFillLockBytesVtbl ptr
end type

declare function IFillLockBytes_RemoteFillAppend_Proxy(byval This as IFillLockBytes ptr, byval pv as const byte__ ptr, byval cb as ULONG_, byval pcbWritten as ULONG_ ptr) as HRESULT
declare sub IFillLockBytes_RemoteFillAppend_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IFillLockBytes_RemoteFillAt_Proxy(byval This as IFillLockBytes ptr, byval ulOffset as ULARGE_INTEGER, byval pv as const byte__ ptr, byval cb as ULONG_, byval pcbWritten as ULONG_ ptr) as HRESULT
declare sub IFillLockBytes_RemoteFillAt_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IFillLockBytes_SetFillSize_Proxy(byval This as IFillLockBytes ptr, byval ulSize as ULARGE_INTEGER) as HRESULT
declare sub IFillLockBytes_SetFillSize_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IFillLockBytes_Terminate_Proxy(byval This as IFillLockBytes ptr, byval bCanceled as WINBOOL) as HRESULT
declare sub IFillLockBytes_Terminate_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IFillLockBytes_FillAppend_Proxy(byval This as IFillLockBytes ptr, byval pv as const any ptr, byval cb as ULONG_, byval pcbWritten as ULONG_ ptr) as HRESULT
declare function IFillLockBytes_FillAppend_Stub(byval This as IFillLockBytes ptr, byval pv as const byte__ ptr, byval cb as ULONG_, byval pcbWritten as ULONG_ ptr) as HRESULT
declare function IFillLockBytes_FillAt_Proxy(byval This as IFillLockBytes ptr, byval ulOffset as ULARGE_INTEGER, byval pv as const any ptr, byval cb as ULONG_, byval pcbWritten as ULONG_ ptr) as HRESULT
declare function IFillLockBytes_FillAt_Stub(byval This as IFillLockBytes ptr, byval ulOffset as ULARGE_INTEGER, byval pv as const byte__ ptr, byval cb as ULONG_, byval pcbWritten as ULONG_ ptr) as HRESULT

#define __IProgressNotify_INTERFACE_DEFINED__

extern IID_IProgressNotify as const GUID

type IProgressNotifyVtbl field = 8
	QueryInterface as function(byval This as IProgressNotify ptr, byval riid as const IID const ptr, byval ppvObject as any ptr ptr) as HRESULT
	AddRef as function(byval This as IProgressNotify ptr) as ULONG_
	Release as function(byval This as IProgressNotify ptr) as ULONG_
	OnProgress as function(byval This as IProgressNotify ptr, byval dwProgressCurrent as DWORD, byval dwProgressMaximum as DWORD, byval fAccurate as WINBOOL, byval fOwner as WINBOOL) as HRESULT
end type

type IProgressNotify_ field = 8
	lpVtbl as IProgressNotifyVtbl ptr
end type

declare function IProgressNotify_OnProgress_Proxy(byval This as IProgressNotify ptr, byval dwProgressCurrent as DWORD, byval dwProgressMaximum as DWORD, byval fAccurate as WINBOOL, byval fOwner as WINBOOL) as HRESULT
declare sub IProgressNotify_OnProgress_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)

#define __ILayoutStorage_INTERFACE_DEFINED__

type tagStorageLayout field = 8
	LayoutType as DWORD
	pwcsElementName as OLECHAR ptr
	cOffset as LARGE_INTEGER
	cBytes as LARGE_INTEGER
end type

type StorageLayout as tagStorageLayout

extern IID_ILayoutStorage as const GUID

type ILayoutStorageVtbl field = 8
	QueryInterface as function(byval This as ILayoutStorage ptr, byval riid as const IID const ptr, byval ppvObject as any ptr ptr) as HRESULT
	AddRef as function(byval This as ILayoutStorage ptr) as ULONG_
	Release as function(byval This as ILayoutStorage ptr) as ULONG_
	LayoutScript as function(byval This as ILayoutStorage ptr, byval pStorageLayout as StorageLayout ptr, byval nEntries as DWORD, byval glfInterleavedFlag as DWORD) as HRESULT
	BeginMonitor as function(byval This as ILayoutStorage ptr) as HRESULT
	EndMonitor as function(byval This as ILayoutStorage ptr) as HRESULT
	ReLayoutDocfile as function(byval This as ILayoutStorage ptr, byval pwcsNewDfName as OLECHAR ptr) as HRESULT
	ReLayoutDocfileOnILockBytes as function(byval This as ILayoutStorage ptr, byval pILockBytes as ILockBytes ptr) as HRESULT
end type

type ILayoutStorage_ field = 8
	lpVtbl as ILayoutStorageVtbl ptr
end type

declare function ILayoutStorage_LayoutScript_Proxy(byval This as ILayoutStorage ptr, byval pStorageLayout as StorageLayout ptr, byval nEntries as DWORD, byval glfInterleavedFlag as DWORD) as HRESULT
declare sub ILayoutStorage_LayoutScript_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function ILayoutStorage_BeginMonitor_Proxy(byval This as ILayoutStorage ptr) as HRESULT
declare sub ILayoutStorage_BeginMonitor_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function ILayoutStorage_EndMonitor_Proxy(byval This as ILayoutStorage ptr) as HRESULT
declare sub ILayoutStorage_EndMonitor_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function ILayoutStorage_ReLayoutDocfile_Proxy(byval This as ILayoutStorage ptr, byval pwcsNewDfName as OLECHAR ptr) as HRESULT
declare sub ILayoutStorage_ReLayoutDocfile_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function ILayoutStorage_ReLayoutDocfileOnILockBytes_Proxy(byval This as ILayoutStorage ptr, byval pILockBytes as ILockBytes ptr) as HRESULT
declare sub ILayoutStorage_ReLayoutDocfileOnILockBytes_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)

#define __IBlockingLock_INTERFACE_DEFINED__

extern IID_IBlockingLock as const GUID

type IBlockingLockVtbl field = 8
	QueryInterface as function(byval This as IBlockingLock ptr, byval riid as const IID const ptr, byval ppvObject as any ptr ptr) as HRESULT
	AddRef as function(byval This as IBlockingLock ptr) as ULONG_
	Release as function(byval This as IBlockingLock ptr) as ULONG_
	Lock as function(byval This as IBlockingLock ptr, byval dwTimeout as DWORD) as HRESULT
	Unlock as function(byval This as IBlockingLock ptr) as HRESULT
end type

type IBlockingLock_ field = 8
	lpVtbl as IBlockingLockVtbl ptr
end type

declare function IBlockingLock_Lock_Proxy(byval This as IBlockingLock ptr, byval dwTimeout as DWORD) as HRESULT
declare sub IBlockingLock_Lock_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IBlockingLock_Unlock_Proxy(byval This as IBlockingLock ptr) as HRESULT
declare sub IBlockingLock_Unlock_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)

#define __ITimeAndNoticeControl_INTERFACE_DEFINED__

extern IID_ITimeAndNoticeControl as const GUID

type ITimeAndNoticeControlVtbl field = 8
	QueryInterface as function(byval This as ITimeAndNoticeControl ptr, byval riid as const IID const ptr, byval ppvObject as any ptr ptr) as HRESULT
	AddRef as function(byval This as ITimeAndNoticeControl ptr) as ULONG_
	Release as function(byval This as ITimeAndNoticeControl ptr) as ULONG_
	SuppressChanges as function(byval This as ITimeAndNoticeControl ptr, byval res1 as DWORD, byval res2 as DWORD) as HRESULT
end type

type ITimeAndNoticeControl_ field = 8
	lpVtbl as ITimeAndNoticeControlVtbl ptr
end type

declare function ITimeAndNoticeControl_SuppressChanges_Proxy(byval This as ITimeAndNoticeControl ptr, byval res1 as DWORD, byval res2 as DWORD) as HRESULT
declare sub ITimeAndNoticeControl_SuppressChanges_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)

#define __IOplockStorage_INTERFACE_DEFINED__

extern IID_IOplockStorage as const GUID

type IOplockStorageVtbl field = 8
	QueryInterface as function(byval This as IOplockStorage ptr, byval riid as const IID const ptr, byval ppvObject as any ptr ptr) as HRESULT
	AddRef as function(byval This as IOplockStorage ptr) as ULONG_
	Release as function(byval This as IOplockStorage ptr) as ULONG_
	CreateStorageEx as function(byval This as IOplockStorage ptr, byval pwcsName as LPCWSTR, byval grfMode as DWORD, byval stgfmt as DWORD, byval grfAttrs as DWORD, byval riid as const IID const ptr, byval ppstgOpen as any ptr ptr) as HRESULT
	OpenStorageEx as function(byval This as IOplockStorage ptr, byval pwcsName as LPCWSTR, byval grfMode as DWORD, byval stgfmt as DWORD, byval grfAttrs as DWORD, byval riid as const IID const ptr, byval ppstgOpen as any ptr ptr) as HRESULT
end type

type IOplockStorage_ field = 8
	lpVtbl as IOplockStorageVtbl ptr
end type

declare function IOplockStorage_CreateStorageEx_Proxy(byval This as IOplockStorage ptr, byval pwcsName as LPCWSTR, byval grfMode as DWORD, byval stgfmt as DWORD, byval grfAttrs as DWORD, byval riid as const IID const ptr, byval ppstgOpen as any ptr ptr) as HRESULT
declare sub IOplockStorage_CreateStorageEx_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IOplockStorage_OpenStorageEx_Proxy(byval This as IOplockStorage ptr, byval pwcsName as LPCWSTR, byval grfMode as DWORD, byval stgfmt as DWORD, byval grfAttrs as DWORD, byval riid as const IID const ptr, byval ppstgOpen as any ptr ptr) as HRESULT
declare sub IOplockStorage_OpenStorageEx_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)

#define __IDirectWriterLock_INTERFACE_DEFINED__

extern IID_IDirectWriterLock as const GUID

type IDirectWriterLockVtbl field = 8
	QueryInterface as function(byval This as IDirectWriterLock ptr, byval riid as const IID const ptr, byval ppvObject as any ptr ptr) as HRESULT
	AddRef as function(byval This as IDirectWriterLock ptr) as ULONG_
	Release as function(byval This as IDirectWriterLock ptr) as ULONG_
	WaitForWriteAccess as function(byval This as IDirectWriterLock ptr, byval dwTimeout as DWORD) as HRESULT
	ReleaseWriteAccess as function(byval This as IDirectWriterLock ptr) as HRESULT
	HaveWriteAccess as function(byval This as IDirectWriterLock ptr) as HRESULT
end type

type IDirectWriterLock_ field = 8
	lpVtbl as IDirectWriterLockVtbl ptr
end type

declare function IDirectWriterLock_WaitForWriteAccess_Proxy(byval This as IDirectWriterLock ptr, byval dwTimeout as DWORD) as HRESULT
declare sub IDirectWriterLock_WaitForWriteAccess_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IDirectWriterLock_ReleaseWriteAccess_Proxy(byval This as IDirectWriterLock ptr) as HRESULT
declare sub IDirectWriterLock_ReleaseWriteAccess_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IDirectWriterLock_HaveWriteAccess_Proxy(byval This as IDirectWriterLock ptr) as HRESULT
declare sub IDirectWriterLock_HaveWriteAccess_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)

#define __IUrlMon_INTERFACE_DEFINED__

extern IID_IUrlMon as const GUID

type IUrlMonVtbl field = 8
	QueryInterface as function(byval This as IUrlMon ptr, byval riid as const IID const ptr, byval ppvObject as any ptr ptr) as HRESULT
	AddRef as function(byval This as IUrlMon ptr) as ULONG_
	Release as function(byval This as IUrlMon ptr) as ULONG_
	AsyncGetClassBits as function(byval This as IUrlMon ptr, byval rclsid as const IID const ptr, byval pszTYPE as LPCWSTR, byval pszExt as LPCWSTR, byval dwFileVersionMS as DWORD, byval dwFileVersionLS as DWORD, byval pszCodeBase as LPCWSTR, byval pbc as IBindCtx ptr, byval dwClassContext as DWORD, byval riid as const IID const ptr, byval flags as DWORD) as HRESULT
end type

type IUrlMon_ field = 8
	lpVtbl as IUrlMonVtbl ptr
end type

declare function IUrlMon_AsyncGetClassBits_Proxy(byval This as IUrlMon ptr, byval rclsid as const IID const ptr, byval pszTYPE as LPCWSTR, byval pszExt as LPCWSTR, byval dwFileVersionMS as DWORD, byval dwFileVersionLS as DWORD, byval pszCodeBase as LPCWSTR, byval pbc as IBindCtx ptr, byval dwClassContext as DWORD, byval riid as const IID const ptr, byval flags as DWORD) as HRESULT
declare sub IUrlMon_AsyncGetClassBits_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)

#define __IForegroundTransfer_INTERFACE_DEFINED__

extern IID_IForegroundTransfer as const GUID

type IForegroundTransferVtbl field = 8
	QueryInterface as function(byval This as IForegroundTransfer ptr, byval riid as const IID const ptr, byval ppvObject as any ptr ptr) as HRESULT
	AddRef as function(byval This as IForegroundTransfer ptr) as ULONG_
	Release as function(byval This as IForegroundTransfer ptr) as ULONG_
	AllowForegroundTransfer as function(byval This as IForegroundTransfer ptr, byval lpvReserved as any ptr) as HRESULT
end type

type IForegroundTransfer_ field = 8
	lpVtbl as IForegroundTransferVtbl ptr
end type

declare function IForegroundTransfer_AllowForegroundTransfer_Proxy(byval This as IForegroundTransfer ptr, byval lpvReserved as any ptr) as HRESULT
declare sub IForegroundTransfer_AllowForegroundTransfer_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)

#define __IThumbnailExtractor_INTERFACE_DEFINED__

extern IID_IThumbnailExtractor as const GUID

type IThumbnailExtractorVtbl field = 8
	QueryInterface as function(byval This as IThumbnailExtractor ptr, byval riid as const IID const ptr, byval ppvObject as any ptr ptr) as HRESULT
	AddRef as function(byval This as IThumbnailExtractor ptr) as ULONG_
	Release as function(byval This as IThumbnailExtractor ptr) as ULONG_
	ExtractThumbnail as function(byval This as IThumbnailExtractor ptr, byval pStg as IStorage ptr, byval ulLength as ULONG_, byval ulHeight as ULONG_, byval pulOutputLength as ULONG_ ptr, byval pulOutputHeight as ULONG_ ptr, byval phOutputBitmap as HBITMAP ptr) as HRESULT
	OnFileUpdated as function(byval This as IThumbnailExtractor ptr, byval pStg as IStorage ptr) as HRESULT
end type

type IThumbnailExtractor_ field = 8
	lpVtbl as IThumbnailExtractorVtbl ptr
end type

declare function IThumbnailExtractor_ExtractThumbnail_Proxy(byval This as IThumbnailExtractor ptr, byval pStg as IStorage ptr, byval ulLength as ULONG_, byval ulHeight as ULONG_, byval pulOutputLength as ULONG_ ptr, byval pulOutputHeight as ULONG_ ptr, byval phOutputBitmap as HBITMAP ptr) as HRESULT
declare sub IThumbnailExtractor_ExtractThumbnail_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IThumbnailExtractor_OnFileUpdated_Proxy(byval This as IThumbnailExtractor ptr, byval pStg as IStorage ptr) as HRESULT
declare sub IThumbnailExtractor_OnFileUpdated_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)

#define __IDummyHICONIncluder_INTERFACE_DEFINED__

extern IID_IDummyHICONIncluder as const GUID

type IDummyHICONIncluderVtbl field = 8
	QueryInterface as function(byval This as IDummyHICONIncluder ptr, byval riid as const IID const ptr, byval ppvObject as any ptr ptr) as HRESULT
	AddRef as function(byval This as IDummyHICONIncluder ptr) as ULONG_
	Release as function(byval This as IDummyHICONIncluder ptr) as ULONG_
	Dummy as function(byval This as IDummyHICONIncluder ptr, byval h1 as HICON, byval h2 as HDC) as HRESULT
end type

type IDummyHICONIncluder_ field = 8
	lpVtbl as IDummyHICONIncluderVtbl ptr
end type

declare function IDummyHICONIncluder_Dummy_Proxy(byval This as IDummyHICONIncluder ptr, byval h1 as HICON, byval h2 as HDC) as HRESULT
declare sub IDummyHICONIncluder_Dummy_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)

type tagApplicationType as long
enum
	ServerApplication = 0
	LibraryApplication = 1
end enum

type ApplicationType as tagApplicationType

type tagShutdownType as long
enum
	IdleShutdown = 0
	ForcedShutdown = 1
end enum

type ShutdownType as tagShutdownType

#define __IProcessLock_INTERFACE_DEFINED__

extern IID_IProcessLock as const GUID

type IProcessLockVtbl field = 8
	QueryInterface as function(byval This as IProcessLock ptr, byval riid as const IID const ptr, byval ppvObject as any ptr ptr) as HRESULT
	AddRef as function(byval This as IProcessLock ptr) as ULONG_
	Release as function(byval This as IProcessLock ptr) as ULONG_
	AddRefOnProcess as function(byval This as IProcessLock ptr) as ULONG_
	ReleaseRefOnProcess as function(byval This as IProcessLock ptr) as ULONG_
end type

type IProcessLock_ field = 8
	lpVtbl as IProcessLockVtbl ptr
end type

declare function IProcessLock_AddRefOnProcess_Proxy(byval This as IProcessLock ptr) as ULONG_
declare sub IProcessLock_AddRefOnProcess_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IProcessLock_ReleaseRefOnProcess_Proxy(byval This as IProcessLock ptr) as ULONG_
declare sub IProcessLock_ReleaseRefOnProcess_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)

#define __ISurrogateService_INTERFACE_DEFINED__

extern IID_ISurrogateService as const GUID

type ISurrogateServiceVtbl field = 8
	QueryInterface as function(byval This as ISurrogateService ptr, byval riid as const IID const ptr, byval ppvObject as any ptr ptr) as HRESULT
	AddRef as function(byval This as ISurrogateService ptr) as ULONG_
	Release as function(byval This as ISurrogateService ptr) as ULONG_
	Init as function(byval This as ISurrogateService ptr, byval rguidProcessID as const GUID const ptr, byval pProcessLock as IProcessLock ptr, byval pfApplicationAware as WINBOOL ptr) as HRESULT
	ApplicationLaunch as function(byval This as ISurrogateService ptr, byval rguidApplID as const GUID const ptr, byval appType as ApplicationType) as HRESULT
	ApplicationFree as function(byval This as ISurrogateService ptr, byval rguidApplID as const GUID const ptr) as HRESULT
	CatalogRefresh as function(byval This as ISurrogateService ptr, byval ulReserved as ULONG_) as HRESULT
	ProcessShutdown as function(byval This as ISurrogateService ptr, byval shutdownType as ShutdownType) as HRESULT
end type

type ISurrogateService_ field = 8
	lpVtbl as ISurrogateServiceVtbl ptr
end type

declare function ISurrogateService_Init_Proxy(byval This as ISurrogateService ptr, byval rguidProcessID as const GUID const ptr, byval pProcessLock as IProcessLock ptr, byval pfApplicationAware as WINBOOL ptr) as HRESULT
declare sub ISurrogateService_Init_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function ISurrogateService_ApplicationLaunch_Proxy(byval This as ISurrogateService ptr, byval rguidApplID as const GUID const ptr, byval appType as ApplicationType) as HRESULT
declare sub ISurrogateService_ApplicationLaunch_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function ISurrogateService_ApplicationFree_Proxy(byval This as ISurrogateService ptr, byval rguidApplID as const GUID const ptr) as HRESULT
declare sub ISurrogateService_ApplicationFree_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function ISurrogateService_CatalogRefresh_Proxy(byval This as ISurrogateService ptr, byval ulReserved as ULONG_) as HRESULT
declare sub ISurrogateService_CatalogRefresh_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function ISurrogateService_ProcessShutdown_Proxy(byval This as ISurrogateService ptr, byval shutdownType as ShutdownType) as HRESULT
declare sub ISurrogateService_ProcessShutdown_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)

#define __IInitializeSpy_INTERFACE_DEFINED__

type LPINITIALIZESPY as IInitializeSpy ptr

extern IID_IInitializeSpy as const GUID

type IInitializeSpyVtbl field = 8
	QueryInterface as function(byval This as IInitializeSpy ptr, byval riid as const IID const ptr, byval ppvObject as any ptr ptr) as HRESULT
	AddRef as function(byval This as IInitializeSpy ptr) as ULONG_
	Release as function(byval This as IInitializeSpy ptr) as ULONG_
	PreInitialize as function(byval This as IInitializeSpy ptr, byval dwCoInit as DWORD, byval dwCurThreadAptRefs as DWORD) as HRESULT
	PostInitialize as function(byval This as IInitializeSpy ptr, byval hrCoInit as HRESULT, byval dwCoInit as DWORD, byval dwNewThreadAptRefs as DWORD) as HRESULT
	PreUninitialize as function(byval This as IInitializeSpy ptr, byval dwCurThreadAptRefs as DWORD) as HRESULT
	PostUninitialize as function(byval This as IInitializeSpy ptr, byval dwNewThreadAptRefs as DWORD) as HRESULT
end type

type IInitializeSpy_ field = 8
	lpVtbl as IInitializeSpyVtbl ptr
end type

declare function IInitializeSpy_PreInitialize_Proxy(byval This as IInitializeSpy ptr, byval dwCoInit as DWORD, byval dwCurThreadAptRefs as DWORD) as HRESULT
declare sub IInitializeSpy_PreInitialize_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IInitializeSpy_PostInitialize_Proxy(byval This as IInitializeSpy ptr, byval hrCoInit as HRESULT, byval dwCoInit as DWORD, byval dwNewThreadAptRefs as DWORD) as HRESULT
declare sub IInitializeSpy_PostInitialize_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IInitializeSpy_PreUninitialize_Proxy(byval This as IInitializeSpy ptr, byval dwCurThreadAptRefs as DWORD) as HRESULT
declare sub IInitializeSpy_PreUninitialize_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function IInitializeSpy_PostUninitialize_Proxy(byval This as IInitializeSpy ptr, byval dwNewThreadAptRefs as DWORD) as HRESULT
declare sub IInitializeSpy_PostUninitialize_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)

#define __IApartmentShutdown_INTERFACE_DEFINED__

extern IID_IApartmentShutdown as const GUID

type IApartmentShutdownVtbl field = 8
	QueryInterface as function(byval This as IApartmentShutdown ptr, byval riid as const IID const ptr, byval ppvObject as any ptr ptr) as HRESULT
	AddRef as function(byval This as IApartmentShutdown ptr) as ULONG_
	Release as function(byval This as IApartmentShutdown ptr) as ULONG_
	OnUninitialize as sub(byval This as IApartmentShutdown ptr, byval ui64ApartmentIdentifier as UINT64)
end type

type IApartmentShutdown_ field = 8
	lpVtbl as IApartmentShutdownVtbl ptr
end type

declare sub IApartmentShutdown_OnUninitialize_Proxy(byval This as IApartmentShutdown ptr, byval ui64ApartmentIdentifier as UINT64)
declare sub IApartmentShutdown_OnUninitialize_Stub(byval This as IRpcStubBuffer ptr, byval pRpcChannelBuffer as IRpcChannelBuffer ptr, byval pRpcMessage as PRPC_MESSAGE, byval pdwStubPhase as DWORD ptr)
declare function SNB_UserSize(byval as ULONG_ ptr, byval as ULONG_, byval as SNB ptr) as ULONG_
declare function SNB_UserMarshal(byval as ULONG_ ptr, byval as ubyte ptr, byval as SNB ptr) as ubyte ptr
declare function SNB_UserUnmarshal(byval as ULONG_ ptr, byval as ubyte ptr, byval as SNB ptr) as ubyte ptr
declare sub SNB_UserFree(byval as ULONG_ ptr, byval as SNB ptr)
declare function CLIPFORMAT_UserSize(byval as ULONG_ ptr, byval as ULONG_, byval as CLIPFORMAT ptr) as ULONG_
declare function CLIPFORMAT_UserMarshal(byval as ULONG_ ptr, byval as ubyte ptr, byval as CLIPFORMAT ptr) as ubyte ptr
declare function CLIPFORMAT_UserUnmarshal(byval as ULONG_ ptr, byval as ubyte ptr, byval as CLIPFORMAT ptr) as ubyte ptr
declare sub CLIPFORMAT_UserFree(byval as ULONG_ ptr, byval as CLIPFORMAT ptr)
declare function STGMEDIUM_UserSize(byval as ULONG_ ptr, byval as ULONG_, byval as STGMEDIUM ptr) as ULONG_
declare function STGMEDIUM_UserMarshal(byval as ULONG_ ptr, byval as ubyte ptr, byval as STGMEDIUM ptr) as ubyte ptr
declare function STGMEDIUM_UserUnmarshal(byval as ULONG_ ptr, byval as ubyte ptr, byval as STGMEDIUM ptr) as ubyte ptr
declare sub STGMEDIUM_UserFree(byval as ULONG_ ptr, byval as STGMEDIUM ptr)
declare function ASYNC_STGMEDIUM_UserSize(byval as ULONG_ ptr, byval as ULONG_, byval as ASYNC_STGMEDIUM ptr) as ULONG_
declare function ASYNC_STGMEDIUM_UserMarshal(byval as ULONG_ ptr, byval as ubyte ptr, byval as ASYNC_STGMEDIUM ptr) as ubyte ptr
declare function ASYNC_STGMEDIUM_UserUnmarshal(byval as ULONG_ ptr, byval as ubyte ptr, byval as ASYNC_STGMEDIUM ptr) as ubyte ptr
declare sub ASYNC_STGMEDIUM_UserFree(byval as ULONG_ ptr, byval as ASYNC_STGMEDIUM ptr)
declare function FLAG_STGMEDIUM_UserSize(byval as ULONG_ ptr, byval as ULONG_, byval as FLAG_STGMEDIUM ptr) as ULONG_
declare function FLAG_STGMEDIUM_UserMarshal(byval as ULONG_ ptr, byval as ubyte ptr, byval as FLAG_STGMEDIUM ptr) as ubyte ptr
declare function FLAG_STGMEDIUM_UserUnmarshal(byval as ULONG_ ptr, byval as ubyte ptr, byval as FLAG_STGMEDIUM ptr) as ubyte ptr
declare sub FLAG_STGMEDIUM_UserFree(byval as ULONG_ ptr, byval as FLAG_STGMEDIUM ptr)
declare function HBITMAP_UserSize(byval as ULONG_ ptr, byval as ULONG_, byval as HBITMAP ptr) as ULONG_
declare function HBITMAP_UserMarshal(byval as ULONG_ ptr, byval as ubyte ptr, byval as HBITMAP ptr) as ubyte ptr
declare function HBITMAP_UserUnmarshal(byval as ULONG_ ptr, byval as ubyte ptr, byval as HBITMAP ptr) as ubyte ptr
declare sub HBITMAP_UserFree(byval as ULONG_ ptr, byval as HBITMAP ptr)
declare function HICON_UserSize(byval as ULONG_ ptr, byval as ULONG_, byval as HICON ptr) as ULONG_
declare function HICON_UserMarshal(byval as ULONG_ ptr, byval as ubyte ptr, byval as HICON ptr) as ubyte ptr
declare function HICON_UserUnmarshal(byval as ULONG_ ptr, byval as ubyte ptr, byval as HICON ptr) as ubyte ptr
declare sub HICON_UserFree(byval as ULONG_ ptr, byval as HICON ptr)
declare function HDC_UserSize(byval as ULONG_ ptr, byval as ULONG_, byval as HDC ptr) as ULONG_
declare function HDC_UserMarshal(byval as ULONG_ ptr, byval as ubyte ptr, byval as HDC ptr) as ubyte ptr
declare function HDC_UserUnmarshal(byval as ULONG_ ptr, byval as ubyte ptr, byval as HDC ptr) as ubyte ptr
declare sub HDC_UserFree(byval as ULONG_ ptr, byval as HDC ptr)

end extern