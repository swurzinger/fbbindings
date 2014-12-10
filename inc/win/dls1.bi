#pragma once

#define __WINE_INCLUDE_DLS1_H
#define FOURCC_DLS mmioFOURCC(asc("D"), asc("L"), asc("S"), asc(" "))
#define FOURCC_DLID mmioFOURCC(asc("d"), asc("l"), asc("i"), asc("d"))
#define FOURCC_COLH mmioFOURCC(asc("c"), asc("o"), asc("l"), asc("h"))
#define FOURCC_WVPL mmioFOURCC(asc("w"), asc("v"), asc("p"), asc("l"))
#define FOURCC_PTBL mmioFOURCC(asc("p"), asc("t"), asc("b"), asc("l"))
#define FOURCC_PATH mmioFOURCC(asc("p"), asc("a"), asc("t"), asc("h"))
#define FOURCC_wave mmioFOURCC(asc("w"), asc("a"), asc("v"), asc("e"))
#define FOURCC_LINS mmioFOURCC(asc("l"), asc("i"), asc("n"), asc("s"))
#define FOURCC_INS mmioFOURCC(asc("i"), asc("n"), asc("s"), asc(" "))
#define FOURCC_INSH mmioFOURCC(asc("i"), asc("n"), asc("s"), asc("h"))
#define FOURCC_LRGN mmioFOURCC(asc("l"), asc("r"), asc("g"), asc("n"))
#define FOURCC_RGN mmioFOURCC(asc("r"), asc("g"), asc("n"), asc(" "))
#define FOURCC_RGNH mmioFOURCC(asc("r"), asc("g"), asc("n"), asc("h"))
#define FOURCC_LART mmioFOURCC(asc("l"), asc("a"), asc("r"), asc("t"))
#define FOURCC_ART1 mmioFOURCC(asc("a"), asc("r"), asc("t"), asc("1"))
#define FOURCC_WLNK mmioFOURCC(asc("w"), asc("l"), asc("n"), asc("k"))
#define FOURCC_WSMP mmioFOURCC(asc("w"), asc("s"), asc("m"), asc("p"))
#define FOURCC_VERS mmioFOURCC(asc("v"), asc("e"), asc("r"), asc("s"))
#define CONN_DST_NONE &h000
#define CONN_DST_ATTENUATION &h001
#define CONN_DST_PITCH &h003
#define CONN_DST_PAN &h004
#define CONN_DST_LFO_FREQUENCY &h104
#define CONN_DST_LFO_STARTDELAY &h105
#define CONN_DST_EG1_ATTACKTIME &h206
#define CONN_DST_EG1_DECAYTIME &h207
#define CONN_DST_EG1_RELEASETIME &h209
#define CONN_DST_EG1_SUSTAINLEVEL &h20A
#define CONN_DST_EG2_ATTACKTIME &h30A
#define CONN_DST_EG2_DECAYTIME &h30B
#define CONN_DST_EG2_RELEASETIME &h30D
#define CONN_DST_EG2_SUSTAINLEVEL &h30E
#define CONN_SRC_NONE &h000
#define CONN_SRC_LFO &h001
#define CONN_SRC_KEYONVELOCITY &h002
#define CONN_SRC_KEYNUMBER &h003
#define CONN_SRC_EG1 &h004
#define CONN_SRC_EG2 &h005
#define CONN_SRC_PITCHWHEEL &h006
#define CONN_SRC_CC1 &h081
#define CONN_SRC_CC7 &h087
#define CONN_SRC_CC10 &h08A
#define CONN_SRC_CC11 &h08B
#define CONN_TRN_NONE &h000
#define CONN_TRN_CONCAVE &h001
#define F_INSTRUMENT_DRUMS &h80000000
#define F_RGN_OPTION_SELFNONEXCLUSIVE &h1
#define F_WAVELINK_PHASE_MASTER &h1
#define F_WSMP_NO_TRUNCATION &h1
#define F_WSMP_NO_COMPRESSION &h2
#define POOL_CUE_NULL &hFFFFFFFF
#define WAVELINK_CHANNEL_LEFT &h1
#define WAVELINK_CHANNEL_RIGHT &h2
#define WLOOP_TYPE_FORWARD &h0

type DLSID as _DLSID
type LPDLSID as _DLSID ptr
type DLSVERSION as _DLSVERSION
type LPDLSVERSION as _DLSVERSION ptr
type CONNECTION as _CONNECTION
type LPCONNECTION as _CONNECTION ptr
type CONNECTIONLIST as _CONNECTIONLIST
type LPCONNECTIONLIST as _CONNECTIONLIST ptr
type RGNRANGE as _RGNRANGE
type LPRGNRANGE as _RGNRANGE ptr
type MIDILOCALE as _MIDILOCALE
type LPMIDILOCALE as _MIDILOCALE ptr
type RGNHEADER as _RGNHEADER
type LPRGNHEADER as _RGNHEADER ptr
type INSTHEADER as _INSTHEADER
type LPINSTHEADER as _INSTHEADER ptr
type DLSHEADER as _DLSHEADER
type LPDLSHEADER as _DLSHEADER ptr
type WAVELINK as _WAVELINK
type LPWAVELINK as _WAVELINK ptr
type POOLCUE as _POOLCUE
type LPPOOLCUE as _POOLCUE ptr
type POOLTABLE as _POOLTABLE
type LPPOOLTABLE as _POOLTABLE ptr
type WSMPL as _rwsmp
type LPWSMPL as _rwsmp ptr
type WLOOP as _rloop
type LPWLOOP as _rloop ptr

type _DLSID
	ulData1 as ULONG
	usData2 as USHORT
	usData3 as USHORT
	abData4(0 to 7) as BYTE
end type

type _DLSVERSION
	dwVersionMS as DWORD
	dwVersionLS as DWORD
end type

type _CONNECTION
	usSource as USHORT
	usControl as USHORT
	usDestination as USHORT
	usTransform as USHORT
	lScale as LONG
end type

type _CONNECTIONLIST
	cbSize as ULONG
	cConnections as ULONG
end type

type _RGNRANGE
	usLow as USHORT
	usHigh as USHORT
end type

type _MIDILOCALE
	ulBank as ULONG
	ulInstrument as ULONG
end type

type _RGNHEADER
	RangeKey as RGNRANGE
	RangeVelocity as RGNRANGE
	fusOptions as USHORT
	usKeyGroup as USHORT
end type

type _INSTHEADER
	cRegions as ULONG
	Locale as MIDILOCALE
end type

type _DLSHEADER
	cInstruments as ULONG
end type

type _WAVELINK
	fusOptions as USHORT
	usPhaseGroup as USHORT
	ulChannel as ULONG
	ulTableIndex as ULONG
end type

type _POOLCUE
	ulOffset as ULONG
end type

type _POOLTABLE
	cbSize as ULONG
	cCues as ULONG
end type

type _rwsmp
	cbSize as ULONG
	usUnityNote as USHORT
	sFineTune as SHORT
	lAttenuation as LONG
	fulOptions as ULONG
	cSampleLoops as ULONG
end type

type _rloop
	cbSize as ULONG
	ulType as ULONG
	ulStart as ULONG
	ulLength as ULONG
end type