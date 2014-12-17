#pragma once

#include once "_mingw.bi"

'' The following symbols have been renamed:
''     #define HandleToUlong => HandleToUlong_
''     #define UlongToHandle => UlongToHandle_
''     #define UlongToPtr => UlongToPtr_
''     #define UintToPtr => UintToPtr_
''     typedef SIZE_T => SIZE_T_
''     typedef SSIZE_T => SSIZE_T_

extern "C"

#ifdef __FB_64BIT__
	type POINTER_64_INT as ulongint
#else
	type POINTER_64_INT as ulong
#endif

#define _BASETSD_H_
#define POINTER_32
#define POINTER_64
#define FIRMWARE_PTR
#define POINTER_SIGNED
#define POINTER_UNSIGNED
#define SPOINTER_32 '' TODO: POINTER_SIGNED POINTER_32
#define UPOINTER_32 '' TODO: POINTER_UNSIGNED POINTER_32

type INT8 as byte
type PINT8 as byte ptr
type INT16 as short
type PINT16 as short ptr
type INT32 as long
type PINT32 as long ptr
type INT64 as longint
type PINT64 as longint ptr
type UINT8 as ubyte
type PUINT8 as ubyte ptr
type UINT16 as ushort
type PUINT16 as ushort ptr
type UINT32 as ulong
type PUINT32 as ulong ptr
type UINT64 as ulongint
type PUINT64 as ulongint ptr
type LONG32 as long
type PLONG32 as long ptr
type ULONG32 as ulong
type PULONG32 as ulong ptr
type DWORD32 as ulong
type PDWORD32 as ulong ptr

#ifdef __FB_64BIT__
	type INT_PTR as longint
	type PINT_PTR as longint ptr
	type UINT_PTR as ulongint
	type PUINT_PTR as ulongint ptr
	type LONG_PTR as longint
	type PLONG_PTR as longint ptr
	type ULONG_PTR as ulongint
	type PULONG_PTR as ulongint ptr

	#define __int3264 longint
	#define ADDRESS_TAG_BIT &h40000000000ull

	type SHANDLE_PTR as longint
	type HANDLE_PTR as ulongint
	type UHALF_PTR as ulong
	type PUHALF_PTR as ulong ptr
	type HALF_PTR as long
	type PHALF_PTR as long ptr

	private function HandleToULong(byval h as const any ptr) as ulong
		return culng(cast(ULONG_PTR, h))
	end function

	private function HandleToLong(byval h as const any ptr) as long
		return clng(cast(LONG_PTR, h))
	end function

	private function ULongToHandle(byval h as const ulong) as any ptr
		return cptr(any ptr, cast(UINT_PTR, h))
	end function

	private function LongToHandle(byval h as const long) as any ptr
		return cptr(any ptr, cast(INT_PTR, h))
	end function

	private function PtrToUlong(byval p as const any ptr) as ulong
		return culng(cast(ULONG_PTR, p))
	end function

	private function PtrToUint(byval p as const any ptr) as ulong
		return culng(cast(UINT_PTR, p))
	end function

	private function PtrToUshort(byval p as const any ptr) as ushort
		return cushort(culng(cast(ULONG_PTR, p)))
	end function

	private function PtrToLong(byval p as const any ptr) as long
		return clng(cast(LONG_PTR, p))
	end function

	private function PtrToInt(byval p as const any ptr) as long
		return clng(cast(INT_PTR, p))
	end function

	private function PtrToShort(byval p as const any ptr) as short
		return cshort(clng(cast(LONG_PTR, p)))
	end function

	private function IntToPtr(byval i as const long) as any ptr
		return cptr(any ptr, cast(INT_PTR, i))
	end function

	private function UIntToPtr(byval ui as const ulong) as any ptr
		return cptr(any ptr, cast(UINT_PTR, ui))
	end function

	private function LongToPtr(byval l as const long) as any ptr
		return cptr(any ptr, cast(LONG_PTR, l))
	end function

	private function ULongToPtr(byval ul as const ulong) as any ptr
		return cptr(any ptr, cast(ULONG_PTR, ul))
	end function

	#define PtrToPtr64(p) '' TODO: ((void *POINTER_64) p)
	#define Ptr64ToPtr(p) cptr(any ptr, p)
	#define HandleToHandle64(h) PtrToPtr64(h)
	#define Handle64ToHandle(h) Ptr64ToPtr(h)

	private function Ptr32ToPtr(byval p as const any ptr) as any ptr
		return cptr(any ptr, cast(ULONG_PTR, culng(cast(ULONG_PTR, p))))
	end function

	private function Handle32ToHandle(byval h as const any ptr) as any ptr
		return cptr(any ptr, cast(LONG_PTR, clng(cast(ULONG_PTR, h))))
	end function

	private function PtrToPtr32(byval p as const any ptr) as any ptr
		return cptr(any ptr, cast(ULONG_PTR, culng(cast(ULONG_PTR, p))))
	end function
#else
	type INT_PTR as long
	type PINT_PTR as long ptr
	type UINT_PTR as ulong
	type PUINT_PTR as ulong ptr
	type LONG_PTR as long
	type PLONG_PTR as long ptr
	type ULONG_PTR as ulong
	type PULONG_PTR as ulong ptr

	#define __int3264 long
	#define ADDRESS_TAG_BIT __MSABI_LONG(&h80000000)

	type UHALF_PTR as ushort
	type PUHALF_PTR as ushort ptr
	type HALF_PTR as short
	type PHALF_PTR as short ptr
	type SHANDLE_PTR as long
	type HANDLE_PTR as ulong

	#define HandleToULong(h) '' TODO: ((ULONG) (ULONG_PTR) (h))
	#define HandleToLong(h) '' TODO: ((LONG) (LONG_PTR) (h))
	#define ULongToHandle(ul) '' TODO: ((HANDLE) (ULONG_PTR) (ul))
	#define LongToHandle(h) '' TODO: ((HANDLE) (LONG_PTR) (h))
	#define PtrToUlong(p) '' TODO: ((ULONG) (ULONG_PTR) (p))
	#define PtrToLong(p) '' TODO: ((LONG) (LONG_PTR) (p))
	#define PtrToUint(p) '' TODO: ((UINT) (UINT_PTR) (p))
	#define PtrToInt(p) '' TODO: ((INT) (INT_PTR) (p))
	#define PtrToUshort(p) cushort(cast(ULONG_PTR, (p)))
	#define PtrToShort(p) cshort(cast(LONG_PTR, (p)))
	#define IntToPtr(i) cptr(VOID ptr, cast(INT_PTR, clng(i)))
	#define UIntToPtr(ui) cptr(VOID ptr, cast(UINT_PTR, culng(ui)))
	#define LongToPtr(l) cptr(VOID ptr, cast(LONG_PTR, cast(__LONG32, l)))
	#define ULongToPtr(ul) '' TODO: ((VOID *) (ULONG_PTR) ((unsigned __LONG32) ul))

	private function PtrToPtr64(byval p as const any ptr) as any ptr
		return cptr(any ptr, cast(ULONG_PTR, p))
	end function

	private function Ptr64ToPtr(byval p as const any ptr) as any ptr
		return cptr(any ptr, cast(ULONG_PTR, p))
	end function

	private function HandleToHandle64(byval h as const any ptr) as any ptr
		return cptr(any ptr, cast(LONG_PTR, h))
	end function

	private function Handle64ToHandle(byval h as const any ptr) as any ptr
		return cptr(any ptr, cast(ULONG_PTR, h))
	end function

	#define Ptr32ToPtr(p) cptr(any ptr, p)
	#define Handle32ToHandle(h) Ptr32ToPtr(h)
	#define PtrToPtr32(p) '' TODO: ((void *POINTER_32) p)
#endif

#define HandleToHandle32(h) PtrToPtr32(h)
#define HandleToUlong_(h) HandleToULong(h)
#define UlongToHandle_(ul) ULongToHandle(ul)
#define UlongToPtr_(ul) ULongToPtr(ul)
#define UintToPtr_(ui) UIntToPtr(ui)
#define MAXUINT_PTR (not cast(UINT_PTR, 0))
#define MAXINT_PTR cast(INT_PTR, MAXUINT_PTR shr 1)
#define MININT_PTR (not MAXINT_PTR)
#define MAXULONG_PTR (not cast(ULONG_PTR, 0))
#define MAXLONG_PTR cast(LONG_PTR, MAXULONG_PTR shr 1)
#define MINLONG_PTR (not MAXLONG_PTR)
#define MAXUHALF_PTR cast(UHALF_PTR, not 0)
#define MAXHALF_PTR cast(HALF_PTR, MAXUHALF_PTR shr 1)
#define MINHALF_PTR (not MAXHALF_PTR)

type SIZE_T_ as ULONG_PTR
type PSIZE_T as ULONG_PTR ptr
type SSIZE_T_ as LONG_PTR
type PSSIZE_T as LONG_PTR ptr
type DWORD_PTR as ULONG_PTR
type PDWORD_PTR as ULONG_PTR ptr
type LONG64 as longint
type PLONG64 as longint ptr
type ULONG64 as ulongint
type PULONG64 as ulongint ptr
type DWORD64 as ulongint
type PDWORD64 as ulongint ptr
type KAFFINITY as ULONG_PTR
type PKAFFINITY as KAFFINITY ptr

end extern
