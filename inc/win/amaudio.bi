#pragma once

#include once "crt/wchar.bi"
#include once "dsound.bi"

#ifdef __FB_64BIT__
	extern "C"
#else
	extern "Windows"
#endif

type IAMDirectSoundVtbl as IAMDirectSoundVtbl_

#define __AMAUDIO__

type IAMDirectSound
	lpVtbl as IAMDirectSoundVtbl ptr
end type

type IAMDirectSoundVtbl_
	QueryInterface as function(byval This_ as IAMDirectSound ptr, byval riid as const IID const ptr, byval ppvObject as any ptr ptr) as HRESULT
	AddRef as function(byval This_ as IAMDirectSound ptr) as ULONG_
	Release as function(byval This_ as IAMDirectSound ptr) as ULONG_
	GetDirectSoundInterface as function(byval This_ as IAMDirectSound ptr, byval ds as IDirectSound ptr ptr) as HRESULT
	GetPrimaryBufferInterface as function(byval This_ as IAMDirectSound ptr, byval buf as IDirectSoundBuffer ptr ptr) as HRESULT
	GetSecondaryBufferInterface as function(byval This_ as IAMDirectSound ptr, byval buf as IDirectSoundBuffer ptr ptr) as HRESULT
	ReleaseDirectSoundInterface as function(byval This_ as IAMDirectSound ptr, byval ds as IDirectSound ptr) as HRESULT
	ReleasePrimaryBufferInterface as function(byval This_ as IAMDirectSound ptr, byval buf as IDirectSoundBuffer ptr) as HRESULT
	ReleaseSecondaryBufferInterface as function(byval This_ as IAMDirectSound ptr, byval buf as IDirectSoundBuffer ptr) as HRESULT
	SetFocusWindow as function(byval This_ as IAMDirectSound ptr, byval hwnd as HWND, byval bgaudible as WINBOOL) as HRESULT
	GetFocusWindow as function(byval This_ as IAMDirectSound ptr, byval hwnd as HWND ptr, byval bgaudible as WINBOOL ptr) as HRESULT
end type

end extern