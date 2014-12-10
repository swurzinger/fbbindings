#pragma once

#include once "snmp.bi"

#ifdef __FB_64BIT__
	extern "C"
#else
	extern "Windows"
#endif

#define _INC_MGMTAPI
#define SNMP_MGMTAPI_TIMEOUT 40
#define SNMP_MGMTAPI_SELECT_FDERRORS 41
#define SNMP_MGMTAPI_TRAP_ERRORS 42
#define SNMP_MGMTAPI_TRAP_DUPINIT 43
#define SNMP_MGMTAPI_NOTRAPS 44
#define SNMP_MGMTAPI_AGAIN 45
#define SNMP_MGMTAPI_INVALID_CTL 46
#define SNMP_MGMTAPI_INVALID_SESSION 47
#define SNMP_MGMTAPI_INVALID_BUFFER 48
#define MGMCTL_SETAGENTPORT &h01

type LPSNMP_MGR_SESSION as PVOID

declare function SnmpMgrOpen(byval lpAgentAddress as LPSTR, byval lpAgentCommunity as LPSTR, byval nTimeOut as INT_, byval nRetries as INT_) as LPSNMP_MGR_SESSION
declare function SnmpMgrCtl(byval session as LPSNMP_MGR_SESSION, byval dwCtlCode as DWORD, byval lpvInBuffer as LPVOID, byval cbInBuffer as DWORD, byval lpvOUTBuffer as LPVOID, byval cbOUTBuffer as DWORD, byval lpcbBytesReturned as LPDWORD) as WINBOOL
declare function SnmpMgrClose(byval session as LPSNMP_MGR_SESSION) as WINBOOL
declare function SnmpMgrRequest(byval session as LPSNMP_MGR_SESSION, byval requestType as BYTE_, byval variableBindings as SnmpVarBindList ptr, byval errorStatus as AsnInteger32 ptr, byval errorIndex as AsnInteger32 ptr) as INT_
declare function SnmpMgrStrToOid(byval string_ as LPSTR, byval oid as AsnObjectIdentifier ptr) as WINBOOL
declare function SnmpMgrOidToStr(byval oid as AsnObjectIdentifier ptr, byval string_ as LPSTR ptr) as WINBOOL
declare function SnmpMgrTrapListen(byval phTrapAvailable as HANDLE ptr) as WINBOOL
declare function SnmpMgrGetTrap(byval enterprise as AsnObjectIdentifier ptr, byval IPAddress as AsnNetworkAddress ptr, byval genericTrap as AsnInteger32 ptr, byval specificTrap as AsnInteger32 ptr, byval timeStamp as AsnTimeticks ptr, byval variableBindings as SnmpVarBindList ptr) as WINBOOL
declare function SnmpMgrGetTrapEx(byval enterprise as AsnObjectIdentifier ptr, byval agentAddress as AsnNetworkAddress ptr, byval sourceAddress as AsnNetworkAddress ptr, byval genericTrap as AsnInteger32 ptr, byval specificTrap as AsnInteger32 ptr, byval community as AsnOctetString ptr, byval timeStamp as AsnTimeticks ptr, byval variableBindings as SnmpVarBindList ptr) as WINBOOL

end extern