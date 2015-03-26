#pragma once

#include once "crt/long.bi"
#include once "X11/extensions/recordconst.bi"

'' The following symbols have been renamed:
''     struct xRecordRange => xRecordRange_
''     typedef xRecordClientInfo => xRecordClientInfo_

#define _RECORDPROTO_H_
const X_RecordQueryVersion = 0
const X_RecordCreateContext = 1
const X_RecordRegisterClients = 2
const X_RecordUnregisterClients = 3
const X_RecordGetContext = 4
const X_RecordEnableContext = 5
const X_RecordDisableContext = 6
const X_RecordFreeContext = 7
const sz_XRecordRange = 32
const sz_XRecordClientInfo = 12
const sz_XRecordState = 16
const sz_XRecordDatum = 32
#define XRecordGlobaldef
#define XRecordGlobalref '' TODO: extern
const RecordMaxEvent = cast(clong, 128) - cast(clong, 1)
const RecordMinDeviceEvent = cast(clong, 2)
const RecordMaxDeviceEvent = cast(clong, 6)
const RecordMaxError = cast(clong, 256) - cast(clong, 1)
const RecordMaxCoreRequest = cast(clong, 128) - cast(clong, 1)
const RecordMaxExtRequest = cast(clong, 256) - cast(clong, 1)
const RecordMinExtRequest = cast(clong, 129) - cast(clong, 1)
type RecordClientSpec as CARD32
type RecordClientSpecPtr as CARD32 ptr

type RECORD_RANGE8
	first as CARD8
	last as CARD8
end type

type RECORD_RANGE16
	first as CARD16
	last as CARD16
end type

type RECORD_EXTRANGE
	majorCode as RECORD_RANGE8
	minorCode as RECORD_RANGE16
end type

type RECORDRANGE
	coreRequests as RECORD_RANGE8
	coreReplies as RECORD_RANGE8
	extRequests as RECORD_EXTRANGE
	extReplies as RECORD_EXTRANGE
	deliveredEvents as RECORD_RANGE8
	deviceEvents as RECORD_RANGE8
	errors as RECORD_RANGE8
	clientStarted as BOOL
	clientDied as BOOL
end type

const sz_RECORDRANGE = 24

type xRecordRange_
	coreRequestsFirst as CARD8
	coreRequestsLast as CARD8
	coreRepliesFirst as CARD8
	coreRepliesLast as CARD8
	extRequestsMajorFirst as CARD8
	extRequestsMajorLast as CARD8
	extRequestsMinorFirst as CARD16
	extRequestsMinorLast as CARD16
	extRepliesMajorFirst as CARD8
	extRepliesMajorLast as CARD8
	extRepliesMinorFirst as CARD16
	extRepliesMinorLast as CARD16
	deliveredEventsFirst as CARD8
	deliveredEventsLast as CARD8
	deviceEventsFirst as CARD8
	deviceEventsLast as CARD8
	errorsFirst as CARD8
	errorsLast as CARD8
	clientStarted as BOOL
	clientDied as BOOL
end type

const sz_xRecordRange = 24

type RECORD_CLIENT_INFO
	clientResource as CARD32
	nRanges as CARD32
end type

type xRecordClientInfo_ as RECORD_CLIENT_INFO

type xRecordQueryVersionReq
	reqType as CARD8
	recordReqType as CARD8
	length as CARD16
	majorVersion as CARD16
	minorVersion as CARD16
end type

const sz_xRecordQueryVersionReq = 8

type xRecordQueryVersionReply
	as CARD8 type
	pad0 as CARD8
	sequenceNumber as CARD16
	length as CARD32
	majorVersion as CARD16
	minorVersion as CARD16
	pad1 as CARD32
	pad2 as CARD32
	pad3 as CARD32
	pad4 as CARD32
	pad5 as CARD32
end type

const sz_xRecordQueryVersionReply = 32

type xRecordCreateContextReq
	reqType as CARD8
	recordReqType as CARD8
	length as CARD16
	context as CARD32
	elementHeader as CARD8
	pad as CARD8
	pad0 as CARD16
	nClients as CARD32
	nRanges as CARD32
end type

const sz_xRecordCreateContextReq = 20

type xRecordRegisterClientsReq
	reqType as CARD8
	recordReqType as CARD8
	length as CARD16
	context as CARD32
	elementHeader as CARD8
	pad as CARD8
	pad0 as CARD16
	nClients as CARD32
	nRanges as CARD32
end type

const sz_xRecordRegisterClientsReq = 20

type xRecordUnregisterClientsReq
	reqType as CARD8
	recordReqType as CARD8
	length as CARD16
	context as CARD32
	nClients as CARD32
end type

const sz_xRecordUnregisterClientsReq = 12

type xRecordGetContextReq
	reqType as CARD8
	recordReqType as CARD8
	length as CARD16
	context as CARD32
end type

const sz_xRecordGetContextReq = 8

type xRecordGetContextReply
	as CARD8 type
	enabled as BOOL
	sequenceNumber as CARD16
	length as CARD32
	elementHeader as CARD8
	pad as CARD8
	pad0 as CARD16
	nClients as CARD32
	pad1 as CARD32
	pad2 as CARD32
	pad3 as CARD32
	pad4 as CARD32
end type

const sz_xRecordGetContextReply = 32

type xRecordEnableContextReq
	reqType as CARD8
	recordReqType as CARD8
	length as CARD16
	context as CARD32
end type

const sz_xRecordEnableContextReq = 8

type xRecordEnableContextReply
	as CARD8 type
	category as CARD8
	sequenceNumber as CARD16
	length as CARD32
	elementHeader as CARD8
	clientSwapped as BOOL
	pad1 as CARD16
	idBase as CARD32
	serverTime as CARD32
	recordedSequenceNumber as CARD32
	pad3 as CARD32
	pad4 as CARD32
end type

const sz_xRecordEnableContextReply = 32

type xRecordDisableContextReq
	reqType as CARD8
	recordReqType as CARD8
	length as CARD16
	context as CARD32
end type

const sz_xRecordDisableContextReq = 8

type xRecordFreeContextReq
	reqType as CARD8
	recordReqType as CARD8
	length as CARD16
	context as CARD32
end type

const sz_xRecordFreeContextReq = 8
