#pragma once

#include once "ipifcons.bi"

#define _INC_IFDEF
const IF_MAX_STRING_SIZE = 256
const IF_MAX_PHYS_ADDRESS_LENGTH = 32

type NET_IF_COMPARTMENT_ID as UINT32
type PNET_IF_COMPARTMENT_ID as UINT32 ptr
type NET_IFINDEX as ULONG
type PNET_IFINDEX as ULONG ptr
type NET_IFTYPE as UINT16
type PNET_IFTYPE as UINT16 ptr
type IF_INDEX as NET_IFINDEX
type PIF_INDEX as NET_IFINDEX ptr
type NET_IF_NETWORK_GUID as GUID

type _IF_OPER_STATUS as long
enum
	IfOperStatusUp = 1
	IfOperStatusDown
	IfOperStatusTesting
	IfOperStatusUnknown
	IfOperStatusDormant
	IfOperStatusNotPresent
	IfOperStatusLowerLayerDown
end enum

type IF_OPER_STATUS as _IF_OPER_STATUS

type _NET_IF_ADMIN_STATUS as long
enum
	NET_IF_ADMIN_STATUS_UP = 1
	NET_IF_ADMIN_STATUS_DOWN
	NET_IF_ADMIN_STATUS_TESTING
end enum

type NET_IF_ADMIN_STATUS as _NET_IF_ADMIN_STATUS
type PNET_IF_ADMIN_STATUS as _NET_IF_ADMIN_STATUS ptr

type _NET_IF_MEDIA_CONNECT_STATE as long
enum
	MediaConnectStateUnknown
	MediaConnectStateConnected
	MediaConnectStateDisconnected
end enum

type NET_IF_MEDIA_CONNECT_STATE as _NET_IF_MEDIA_CONNECT_STATE
type PNET_IF_MEDIA_CONNECT_STATE as _NET_IF_MEDIA_CONNECT_STATE ptr

type _NET_IF_ACCESS_TYPE as long
enum
	NET_IF_ACCESS_LOOPBACK = 1
	NET_IF_ACCESS_BROADCAST
	NET_IF_ACCESS_POINT_TO_POINT
	NET_IF_ACCESS_POINT_TO_MULTI_POINT
	NET_IF_ACCESS_MAXIMUM
end enum

type NET_IF_ACCESS_TYPE as _NET_IF_ACCESS_TYPE
type PNET_IF_ACCESS_TYPE as _NET_IF_ACCESS_TYPE ptr

type _NET_IF_CONNECTION_TYPE as long
enum
	NET_IF_CONNECTION_DEDICATED = 1
	NET_IF_CONNECTION_PASSIVE
	NET_IF_CONNECTION_DEMAND
	NET_IF_CONNECTION_MAXIMUM
end enum

type NET_IF_CONNECTION_TYPE as _NET_IF_CONNECTION_TYPE
type PNET_IF_CONNECTION_TYPE as _NET_IF_CONNECTION_TYPE ptr

type _NET_IF_DIRECTION_TYPE as long
enum
	NET_IF_DIRECTION_SENDRECEIVE
	NET_IF_DIRECTION_SENDONLY
	NET_IF_DIRECTION_RECEIVEONLY
	NET_IF_DIRECTION_MAXIMUM
end enum

type NET_IF_DIRECTION_TYPE as _NET_IF_DIRECTION_TYPE
type PNET_IF_DIRECTION_TYPE as _NET_IF_DIRECTION_TYPE ptr

type _NET_IF_MEDIA_DUPLEX_STATE as long
enum
	MediaDuplexStateUnknown
	MediaDuplexStateHalf
	MediaDuplexStateFull
end enum

type NET_IF_MEDIA_DUPLEX_STATE as _NET_IF_MEDIA_DUPLEX_STATE
type PNET_IF_MEDIA_DUPLEX_STATE as _NET_IF_MEDIA_DUPLEX_STATE ptr

type _TUNNEL_TYPE as long
enum
	TUNNEL_TYPE_NONE = 0
	TUNNEL_TYPE_OTHER = 1
	TUNNEL_TYPE_DIRECT = 2
	TUNNEL_TYPE_6TO4 = 11
	TUNNEL_TYPE_ISATAP = 13
	TUNNEL_TYPE_TEREDO = 14
	TUNNEL_TYPE_IPHTTPS = 15
end enum

type TUNNEL_TYPE as _TUNNEL_TYPE
type PTUNNEL_TYPE as _TUNNEL_TYPE ptr

type _NET_LUID_Info
	Reserved : 24 as ULONG64
	NetLuidIndex : 24 as ULONG64
	IfType : 16 as ULONG64
end type

union _NET_LUID
	Value as ULONG64
	Info as _NET_LUID_Info
end union

type NET_LUID as _NET_LUID
type PNET_LUID as _NET_LUID ptr
type IF_LUID as NET_LUID
type PIF_LUID as NET_LUID ptr
