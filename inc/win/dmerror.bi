#pragma once

#define __WINE_DMUSIC_ERROR_H
#define FACILITY_DIRECTMUSIC &h878
#define DMUS_ERRBASE &h1000
#define MAKE_HRESULT(sev, fac, code) cast(HRESULT, ((cast(ULONG, (sev)) shl 31) or (cast(ULONG, (fac)) shl 16)) or cast(ULONG, (code)))
#define MAKE_DMHRESULTSUCCESS(code) MAKE_HRESULT(0, FACILITY_DIRECTMUSIC, DMUS_ERRBASE + (code))
#define MAKE_DMHRESULTERROR(code) MAKE_HRESULT(1, FACILITY_DIRECTMUSIC, DMUS_ERRBASE + (code))
#define DMUS_S_PARTIALLOAD MAKE_DMHRESULTSUCCESS(&h091)
#define DMUS_S_PARTIALDOWNLOAD MAKE_DMHRESULTSUCCESS(&h092)
#define DMUS_S_REQUEUE MAKE_DMHRESULTSUCCESS(&h200)
#define DMUS_S_FREE MAKE_DMHRESULTSUCCESS(&h201)
#define DMUS_S_END MAKE_DMHRESULTSUCCESS(&h202)
#define DMUS_S_STRING_TRUNCATED MAKE_DMHRESULTSUCCESS(&h210)
#define DMUS_S_LAST_TOOL MAKE_DMHRESULTSUCCESS(&h211)
#define DMUS_S_OVER_CHORD MAKE_DMHRESULTSUCCESS(&h212)
#define DMUS_S_UP_OCTAVE MAKE_DMHRESULTSUCCESS(&h213)
#define DMUS_S_DOWN_OCTAVE MAKE_DMHRESULTSUCCESS(&h214)
#define DMUS_S_NOBUFFERCONTROL MAKE_DMHRESULTSUCCESS(&h215)
#define DMUS_S_GARBAGE_COLLECTED MAKE_DMHRESULTSUCCESS(&h216)
#define DMUS_E_DRIVER_FAILED MAKE_DMHRESULTERROR(&h0101)
#define DMUS_E_PORTS_OPEN MAKE_DMHRESULTERROR(&h0102)
#define DMUS_E_DEVICE_IN_USE MAKE_DMHRESULTERROR(&h0103)
#define DMUS_E_INSUFFICIENTBUFFER MAKE_DMHRESULTERROR(&h0104)
#define DMUS_E_BUFFERNOTSET MAKE_DMHRESULTERROR(&h0105)
#define DMUS_E_BUFFERNOTAVAILABLE MAKE_DMHRESULTERROR(&h0106)
#define DMUS_E_NOTADLSCOL MAKE_DMHRESULTERROR(&h0108)
#define DMUS_E_INVALIDOFFSET MAKE_DMHRESULTERROR(&h0109)
#define DMUS_E_ALREADY_LOADED MAKE_DMHRESULTERROR(&h0111)
#define DMUS_E_INVALIDPOS MAKE_DMHRESULTERROR(&h0113)
#define DMUS_E_INVALIDPATCH MAKE_DMHRESULTERROR(&h0114)
#define DMUS_E_CANNOTSEEK MAKE_DMHRESULTERROR(&h0115)
#define DMUS_E_CANNOTWRITE MAKE_DMHRESULTERROR(&h0116)
#define DMUS_E_CHUNKNOTFOUND MAKE_DMHRESULTERROR(&h0117)
#define DMUS_E_INVALID_DOWNLOADID MAKE_DMHRESULTERROR(&h0119)
#define DMUS_E_NOT_DOWNLOADED_TO_PORT MAKE_DMHRESULTERROR(&h0120)
#define DMUS_E_ALREADY_DOWNLOADED MAKE_DMHRESULTERROR(&h0121)
#define DMUS_E_UNKNOWN_PROPERTY MAKE_DMHRESULTERROR(&h0122)
#define DMUS_E_SET_UNSUPPORTED MAKE_DMHRESULTERROR(&h0123)
#define DMUS_E_GET_UNSUPPORTED MAKE_DMHRESULTERROR(&h0124)
#define DMUS_E_NOTMONO MAKE_DMHRESULTERROR(&h0125)
#define DMUS_E_BADARTICULATION MAKE_DMHRESULTERROR(&h0126)
#define DMUS_E_BADINSTRUMENT MAKE_DMHRESULTERROR(&h0127)
#define DMUS_E_BADWAVELINK MAKE_DMHRESULTERROR(&h0128)
#define DMUS_E_NOARTICULATION MAKE_DMHRESULTERROR(&h0129)
#define DMUS_E_NOTPCM MAKE_DMHRESULTERROR(&h012A)
#define DMUS_E_BADWAVE MAKE_DMHRESULTERROR(&h012B)
#define DMUS_E_BADOFFSETTABLE MAKE_DMHRESULTERROR(&h012C)
#define DMUS_E_UNKNOWNDOWNLOAD MAKE_DMHRESULTERROR(&h012D)
#define DMUS_E_NOSYNTHSINK MAKE_DMHRESULTERROR(&h012E)
#define DMUS_E_ALREADYOPEN MAKE_DMHRESULTERROR(&h012F)
#define DMUS_E_ALREADYCLOSED MAKE_DMHRESULTERROR(&h0130)
#define DMUS_E_SYNTHNOTCONFIGURED MAKE_DMHRESULTERROR(&h0131)
#define DMUS_E_SYNTHACTIVE MAKE_DMHRESULTERROR(&h0132)
#define DMUS_E_CANNOTREAD MAKE_DMHRESULTERROR(&h0133)
#define DMUS_E_DMUSIC_RELEASED MAKE_DMHRESULTERROR(&h0134)
#define DMUS_E_BUFFER_EMPTY MAKE_DMHRESULTERROR(&h0135)
#define DMUS_E_BUFFER_FULL MAKE_DMHRESULTERROR(&h0136)
#define DMUS_E_PORT_NOT_CAPTURE MAKE_DMHRESULTERROR(&h0137)
#define DMUS_E_PORT_NOT_RENDER MAKE_DMHRESULTERROR(&h0138)
#define DMUS_E_DSOUND_NOT_SET MAKE_DMHRESULTERROR(&h0139)
#define DMUS_E_ALREADY_ACTIVATED MAKE_DMHRESULTERROR(&h013A)
#define DMUS_E_INVALIDBUFFER MAKE_DMHRESULTERROR(&h013B)
#define DMUS_E_WAVEFORMATNOTSUPPORTED MAKE_DMHRESULTERROR(&h013C)
#define DMUS_E_SYNTHINACTIVE MAKE_DMHRESULTERROR(&h013D)
#define DMUS_E_DSOUND_ALREADY_SET MAKE_DMHRESULTERROR(&h013E)
#define DMUS_E_INVALID_EVENT MAKE_DMHRESULTERROR(&h013F)
#define DMUS_E_UNSUPPORTED_STREAM MAKE_DMHRESULTERROR(&h0150)
#define DMUS_E_ALREADY_INITED MAKE_DMHRESULTERROR(&h0151)
#define DMUS_E_INVALID_BAND MAKE_DMHRESULTERROR(&h0152)
#define DMUS_E_TRACK_HDR_NOT_FIRST_CK MAKE_DMHRESULTERROR(&h0155)
#define DMUS_E_TOOL_HDR_NOT_FIRST_CK MAKE_DMHRESULTERROR(&h0156)
#define DMUS_E_INVALID_TRACK_HDR MAKE_DMHRESULTERROR(&h0157)
#define DMUS_E_INVALID_TOOL_HDR MAKE_DMHRESULTERROR(&h0158)
#define DMUS_E_ALL_TOOLS_FAILED MAKE_DMHRESULTERROR(&h0159)
#define DMUS_E_ALL_TRACKS_FAILED MAKE_DMHRESULTERROR(&h0160)
#define DMUS_E_NOT_FOUND MAKE_DMHRESULTERROR(&h0161)
#define DMUS_E_NOT_INIT MAKE_DMHRESULTERROR(&h0162)
#define DMUS_E_TYPE_DISABLED MAKE_DMHRESULTERROR(&h0163)
#define DMUS_E_TYPE_UNSUPPORTED MAKE_DMHRESULTERROR(&h0164)
#define DMUS_E_TIME_PAST MAKE_DMHRESULTERROR(&h0165)
#define DMUS_E_TRACK_NOT_FOUND MAKE_DMHRESULTERROR(&h0166)
#define DMUS_E_TRACK_NO_CLOCKTIME_SUPPORT MAKE_DMHRESULTERROR(&h0167)
#define DMUS_E_NO_MASTER_CLOCK MAKE_DMHRESULTERROR(&h0170)
#define DMUS_E_LOADER_NOCLASSID MAKE_DMHRESULTERROR(&h0180)
#define DMUS_E_LOADER_BADPATH MAKE_DMHRESULTERROR(&h0181)
#define DMUS_E_LOADER_FAILEDOPEN MAKE_DMHRESULTERROR(&h0182)
#define DMUS_E_LOADER_FORMATNOTSUPPORTED MAKE_DMHRESULTERROR(&h0183)
#define DMUS_E_LOADER_FAILEDCREATE MAKE_DMHRESULTERROR(&h0184)
#define DMUS_E_LOADER_OBJECTNOTFOUND MAKE_DMHRESULTERROR(&h0185)
#define DMUS_E_LOADER_NOFILENAME MAKE_DMHRESULTERROR(&h0186)
#define DMUS_E_INVALIDFILE MAKE_DMHRESULTERROR(&h0200)
#define DMUS_E_ALREADY_EXISTS MAKE_DMHRESULTERROR(&h0201)
#define DMUS_E_OUT_OF_RANGE MAKE_DMHRESULTERROR(&h0202)
#define DMUS_E_SEGMENT_INIT_FAILED MAKE_DMHRESULTERROR(&h0203)
#define DMUS_E_ALREADY_SENT MAKE_DMHRESULTERROR(&h0204)
#define DMUS_E_CANNOT_FREE MAKE_DMHRESULTERROR(&h0205)
#define DMUS_E_CANNOT_OPEN_PORT MAKE_DMHRESULTERROR(&h0206)
#define DMUS_E_CANNOT_CONVERT MAKE_DMHRESULTERROR(&h0207)
#define DMUS_E_DESCEND_CHUNK_FAIL MAKE_DMHRESULTERROR(&h0210)
#define DMUS_E_NOT_LOADED MAKE_DMHRESULTERROR(&h0211)
#define DMUS_E_SCRIPT_LANGUAGE_INCOMPATIBLE MAKE_DMHRESULTERROR(&h0213)
#define DMUS_E_SCRIPT_UNSUPPORTED_VARTYPE MAKE_DMHRESULTERROR(&h0214)
#define DMUS_E_SCRIPT_ERROR_IN_SCRIPT MAKE_DMHRESULTERROR(&h0215)
#define DMUS_E_SCRIPT_CANTLOAD_OLEAUT32 MAKE_DMHRESULTERROR(&h0216)
#define DMUS_E_SCRIPT_LOADSCRIPT_ERROR MAKE_DMHRESULTERROR(&h0217)
#define DMUS_E_SCRIPT_INVALID_FILE MAKE_DMHRESULTERROR(&h0218)
#define DMUS_E_INVALID_SCRIPTTRACK MAKE_DMHRESULTERROR(&h0219)
#define DMUS_E_SCRIPT_VARIABLE_NOT_FOUND MAKE_DMHRESULTERROR(&h021A)
#define DMUS_E_SCRIPT_ROUTINE_NOT_FOUND MAKE_DMHRESULTERROR(&h021B)
#define DMUS_E_SCRIPT_CONTENT_READONLY MAKE_DMHRESULTERROR(&h021C)
#define DMUS_E_SCRIPT_NOT_A_REFERENCE MAKE_DMHRESULTERROR(&h021D)
#define DMUS_E_SCRIPT_VALUE_NOT_SUPPORTED MAKE_DMHRESULTERROR(&h021E)
#define DMUS_E_INVALID_SEGMENTTRIGGERTRACK MAKE_DMHRESULTERROR(&h0220)
#define DMUS_E_INVALID_LYRICSTRACK MAKE_DMHRESULTERROR(&h0221)
#define DMUS_E_INVALID_PARAMCONTROLTRACK MAKE_DMHRESULTERROR(&h0222)
#define DMUS_E_AUDIOVBSCRIPT_SYNTAXERROR MAKE_DMHRESULTERROR(&h0223)
#define DMUS_E_AUDIOVBSCRIPT_RUNTIMEERROR MAKE_DMHRESULTERROR(&h0224)
#define DMUS_E_AUDIOVBSCRIPT_OPERATIONFAILURE MAKE_DMHRESULTERROR(&h0225)
#define DMUS_E_AUDIOPATHS_NOT_VALID MAKE_DMHRESULTERROR(&h0226)
#define DMUS_E_AUDIOPATHS_IN_USE MAKE_DMHRESULTERROR(&h0227)
#define DMUS_E_NO_AUDIOPATH_CONFIG MAKE_DMHRESULTERROR(&h0228)
#define DMUS_E_AUDIOPATH_INACTIVE MAKE_DMHRESULTERROR(&h0229)
#define DMUS_E_AUDIOPATH_NOBUFFER MAKE_DMHRESULTERROR(&h022A)
#define DMUS_E_AUDIOPATH_NOPORT MAKE_DMHRESULTERROR(&h022B)
#define DMUS_E_NO_AUDIOPATH MAKE_DMHRESULTERROR(&h022C)
#define DMUS_E_INVALIDCHUNK MAKE_DMHRESULTERROR(&h022D)
#define DMUS_E_AUDIOPATH_NOGLOBALFXBUFFER MAKE_DMHRESULTERROR(&h022E)
#define DMUS_E_INVALID_CONTAINER_OBJECT MAKE_DMHRESULTERROR(&h022F)
