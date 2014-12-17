#pragma once

'' The following symbols have been renamed:
''     typedef STRING => STRING_

#ifdef __FB_64BIT__
	extern "C"
#else
	extern "Windows"
#endif

#define _NTSUBAUTH_
#define _NTSTATUS_PSDK

type NTSTATUS as LONG
type PNTSTATUS as LONG ptr

#define __UNICODE_STRING_DEFINED

type _UNICODE_STRING
	Length as USHORT
	MaximumLength as USHORT
	Buffer as PWSTR
end type

type UNICODE_STRING as _UNICODE_STRING
type PUNICODE_STRING as _UNICODE_STRING ptr

#define __STRING_DEFINED

type _STRING
	Length as USHORT
	MaximumLength as USHORT
	Buffer as PCHAR
end type

type STRING_ as _STRING
type PSTRING as _STRING ptr

type _OLD_LARGE_INTEGER
	LowPart as ULONG
	HighPart as LONG
end type

type OLD_LARGE_INTEGER as _OLD_LARGE_INTEGER
type POLD_LARGE_INTEGER as _OLD_LARGE_INTEGER ptr

#define NT_SUCCESS(Status) (cast(NTSTATUS, (Status)) >= 0)

type SAM_HANDLE as PVOID
type PSAM_HANDLE as PVOID ptr

#define _NTSAM_SAM_HANDLE_
#define USER_ACCOUNT_DISABLED &h00000001
#define USER_HOME_DIRECTORY_REQUIRED &h00000002
#define USER_PASSWORD_NOT_REQUIRED &h00000004
#define USER_TEMP_DUPLICATE_ACCOUNT &h00000008
#define USER_NORMAL_ACCOUNT &h00000010
#define USER_MNS_LOGON_ACCOUNT &h00000020
#define USER_INTERDOMAIN_TRUST_ACCOUNT &h00000040
#define USER_WORKSTATION_TRUST_ACCOUNT &h00000080
#define USER_SERVER_TRUST_ACCOUNT &h00000100
#define USER_DONT_EXPIRE_PASSWORD &h00000200
#define USER_ACCOUNT_AUTO_LOCKED &h00000400
#define USER_ENCRYPTED_TEXT_PASSWORD_ALLOWED &h00000800
#define USER_SMARTCARD_REQUIRED &h00001000
#define USER_TRUSTED_FOR_DELEGATION &h00002000
#define USER_NOT_DELEGATED &h00004000
#define USER_USE_DES_KEY_ONLY &h00008000
#define USER_DONT_REQUIRE_PREAUTH &h00010000
#define USER_PASSWORD_EXPIRED &h00020000
#define USER_TRUSTED_TO_AUTHENTICATE_FOR_DELEGATION &h00040000
#define USER_NO_AUTH_DATA_REQUIRED &h00080000
#define NEXT_FREE_ACCOUNT_CONTROL_BIT (USER_NO_AUTH_DATA_REQUIRED shl 1)
#define USER_MACHINE_ACCOUNT_MASK ((USER_INTERDOMAIN_TRUST_ACCOUNT or USER_WORKSTATION_TRUST_ACCOUNT) or USER_SERVER_TRUST_ACCOUNT)
#define USER_ACCOUNT_TYPE_MASK ((USER_TEMP_DUPLICATE_ACCOUNT or USER_NORMAL_ACCOUNT) or USER_MACHINE_ACCOUNT_MASK)
#define USER_COMPUTED_ACCOUNT_CONTROL_BITS (USER_ACCOUNT_AUTO_LOCKED or USER_PASSWORD_EXPIRED)
#define SAM_DAYS_PER_WEEK 7
#define SAM_HOURS_PER_WEEK (24 * SAM_DAYS_PER_WEEK)
#define SAM_MINUTES_PER_WEEK (60 * SAM_HOURS_PER_WEEK)

type _LOGON_HOURS
	UnitsPerWeek as USHORT
	LogonHours as PUCHAR
end type

type LOGON_HOURS as _LOGON_HOURS
type PLOGON_HOURS as _LOGON_HOURS ptr

type _SR_SECURITY_DESCRIPTOR
	Length as ULONG
	SecurityDescriptor as PUCHAR
end type

type SR_SECURITY_DESCRIPTOR as _SR_SECURITY_DESCRIPTOR
type PSR_SECURITY_DESCRIPTOR as _SR_SECURITY_DESCRIPTOR ptr

#define _NTSAM_USER_ACCOUNT_FLAG_

type _USER_ALL_INFORMATION field = 4
	LastLogon as LARGE_INTEGER
	LastLogoff as LARGE_INTEGER
	PasswordLastSet as LARGE_INTEGER
	AccountExpires as LARGE_INTEGER
	PasswordCanChange as LARGE_INTEGER
	PasswordMustChange as LARGE_INTEGER
	UserName as UNICODE_STRING
	FullName as UNICODE_STRING
	HomeDirectory as UNICODE_STRING
	HomeDirectoryDrive as UNICODE_STRING
	ScriptPath as UNICODE_STRING
	ProfilePath as UNICODE_STRING
	AdminComment as UNICODE_STRING
	WorkStations as UNICODE_STRING
	UserComment as UNICODE_STRING
	Parameters as UNICODE_STRING
	LmPassword as UNICODE_STRING
	NtPassword as UNICODE_STRING
	PrivateData as UNICODE_STRING
	SecurityDescriptor as SR_SECURITY_DESCRIPTOR
	UserId as ULONG
	PrimaryGroupId as ULONG
	UserAccountControl as ULONG
	WhichFields as ULONG
	LogonHours as LOGON_HOURS
	BadPasswordCount as USHORT
	LogonCount as USHORT
	CountryCode as USHORT
	CodePage as USHORT
	LmPasswordPresent as BOOLEAN
	NtPasswordPresent as BOOLEAN
	PasswordExpired as BOOLEAN
	PrivateDataSensitive as BOOLEAN
end type

type USER_ALL_INFORMATION as _USER_ALL_INFORMATION
type PUSER_ALL_INFORMATION as _USER_ALL_INFORMATION ptr

type _CLEAR_BLOCK
	data(0 to 7) as CHAR
end type

type CLEAR_BLOCK as _CLEAR_BLOCK

#define _NTSAM_USER_ALL_INFO_
#define USER_ALL_PARAMETERS &h00200000
#define _NTSAM_SAM_USER_PARMS_
#define CLEAR_BLOCK_LENGTH 8

type PCLEAR_BLOCK as CLEAR_BLOCK ptr

#define CYPHER_BLOCK_LENGTH 8

type _CYPHER_BLOCK
	data(0 to 7) as CHAR
end type

type CYPHER_BLOCK as _CYPHER_BLOCK
type PCYPHER_BLOCK as CYPHER_BLOCK ptr

type _LM_OWF_PASSWORD
	data(0 to 1) as CYPHER_BLOCK
end type

type LM_OWF_PASSWORD as _LM_OWF_PASSWORD
type PLM_OWF_PASSWORD as LM_OWF_PASSWORD ptr
type LM_CHALLENGE as CLEAR_BLOCK
type PLM_CHALLENGE as LM_CHALLENGE ptr
type NT_OWF_PASSWORD as LM_OWF_PASSWORD
type PNT_OWF_PASSWORD as NT_OWF_PASSWORD ptr
type NT_CHALLENGE as LM_CHALLENGE
type PNT_CHALLENGE as NT_CHALLENGE ptr

#define USER_SESSION_KEY_LENGTH (CYPHER_BLOCK_LENGTH * 2)

type _USER_SESSION_KEY
	data(0 to 1) as CYPHER_BLOCK
end type

type USER_SESSION_KEY as _USER_SESSION_KEY
type PUSER_SESSION_KEY as USER_SESSION_KEY ptr

type _NETLOGON_LOGON_INFO_CLASS as long
enum
	NetlogonInteractiveInformation = 1
	NetlogonNetworkInformation
	NetlogonServiceInformation
	NetlogonGenericInformation
	NetlogonInteractiveTransitiveInformation
	NetlogonNetworkTransitiveInformation
	NetlogonServiceTransitiveInformation
end enum

type NETLOGON_LOGON_INFO_CLASS as _NETLOGON_LOGON_INFO_CLASS

type _NETLOGON_LOGON_IDENTITY_INFO
	LogonDomainName as UNICODE_STRING
	ParameterControl as ULONG
	LogonId as OLD_LARGE_INTEGER
	UserName as UNICODE_STRING
	Workstation as UNICODE_STRING
end type

type NETLOGON_LOGON_IDENTITY_INFO as _NETLOGON_LOGON_IDENTITY_INFO
type PNETLOGON_LOGON_IDENTITY_INFO as _NETLOGON_LOGON_IDENTITY_INFO ptr

type _NETLOGON_INTERACTIVE_INFO
	Identity as NETLOGON_LOGON_IDENTITY_INFO
	LmOwfPassword as LM_OWF_PASSWORD
	NtOwfPassword as NT_OWF_PASSWORD
end type

type NETLOGON_INTERACTIVE_INFO as _NETLOGON_INTERACTIVE_INFO
type PNETLOGON_INTERACTIVE_INFO as _NETLOGON_INTERACTIVE_INFO ptr

type _NETLOGON_SERVICE_INFO
	Identity as NETLOGON_LOGON_IDENTITY_INFO
	LmOwfPassword as LM_OWF_PASSWORD
	NtOwfPassword as NT_OWF_PASSWORD
end type

type NETLOGON_SERVICE_INFO as _NETLOGON_SERVICE_INFO
type PNETLOGON_SERVICE_INFO as _NETLOGON_SERVICE_INFO ptr

type _NETLOGON_NETWORK_INFO
	Identity as NETLOGON_LOGON_IDENTITY_INFO
	LmChallenge as LM_CHALLENGE
	NtChallengeResponse as STRING_
	LmChallengeResponse as STRING_
end type

type NETLOGON_NETWORK_INFO as _NETLOGON_NETWORK_INFO
type PNETLOGON_NETWORK_INFO as _NETLOGON_NETWORK_INFO ptr

type _NETLOGON_GENERIC_INFO
	Identity as NETLOGON_LOGON_IDENTITY_INFO
	PackageName as UNICODE_STRING
	DataLength as ULONG
	LogonData as PUCHAR
end type

type NETLOGON_GENERIC_INFO as _NETLOGON_GENERIC_INFO
type PNETLOGON_GENERIC_INFO as _NETLOGON_GENERIC_INFO ptr

#define MSV1_0_PASSTHRU &h01
#define MSV1_0_GUEST_LOGON &h02

declare function Msv1_0SubAuthenticationRoutine(byval LogonLevel as NETLOGON_LOGON_INFO_CLASS, byval LogonInformation as PVOID, byval Flags as ULONG, byval UserAll as PUSER_ALL_INFORMATION, byval WhichFields as PULONG, byval UserFlags as PULONG, byval Authoritative as PBOOLEAN, byval LogoffTime as PLARGE_INTEGER, byval KickoffTime as PLARGE_INTEGER) as NTSTATUS

type _MSV1_0_VALIDATION_INFO
	LogoffTime as LARGE_INTEGER
	KickoffTime as LARGE_INTEGER
	LogonServer as UNICODE_STRING
	LogonDomainName as UNICODE_STRING
	SessionKey as USER_SESSION_KEY
	Authoritative as BOOLEAN
	UserFlags as ULONG
	WhichFields as ULONG
	UserId as ULONG
end type

type MSV1_0_VALIDATION_INFO as _MSV1_0_VALIDATION_INFO
type PMSV1_0_VALIDATION_INFO as _MSV1_0_VALIDATION_INFO ptr

#define MSV1_0_VALIDATION_LOGOFF_TIME &h00000001
#define MSV1_0_VALIDATION_KICKOFF_TIME &h00000002
#define MSV1_0_VALIDATION_LOGON_SERVER &h00000004
#define MSV1_0_VALIDATION_LOGON_DOMAIN &h00000008
#define MSV1_0_VALIDATION_SESSION_KEY &h00000010
#define MSV1_0_VALIDATION_USER_FLAGS &h00000020
#define MSV1_0_VALIDATION_USER_ID &h00000040
#define MSV1_0_SUBAUTH_ACCOUNT_DISABLED &h00000001
#define MSV1_0_SUBAUTH_PASSWORD &h00000002
#define MSV1_0_SUBAUTH_WORKSTATIONS &h00000004
#define MSV1_0_SUBAUTH_LOGON_HOURS &h00000008
#define MSV1_0_SUBAUTH_ACCOUNT_EXPIRY &h00000010
#define MSV1_0_SUBAUTH_PASSWORD_EXPIRY &h00000020
#define MSV1_0_SUBAUTH_ACCOUNT_TYPE &h00000040
#define MSV1_0_SUBAUTH_LOCKOUT &h00000080

declare function Msv1_0SubAuthenticationRoutineEx(byval LogonLevel as NETLOGON_LOGON_INFO_CLASS, byval LogonInformation as PVOID, byval Flags as ULONG, byval UserAll as PUSER_ALL_INFORMATION, byval UserHandle as SAM_HANDLE, byval ValidationInfo as PMSV1_0_VALIDATION_INFO, byval ActionsPerformed as PULONG) as NTSTATUS
declare function Msv1_0SubAuthenticationRoutineGeneric(byval SubmitBuffer as PVOID, byval SubmitBufferLength as ULONG, byval ReturnBufferLength as PULONG, byval ReturnBuffer as PVOID ptr) as NTSTATUS
declare function Msv1_0SubAuthenticationFilter(byval LogonLevel as NETLOGON_LOGON_INFO_CLASS, byval LogonInformation as PVOID, byval Flags as ULONG, byval UserAll as PUSER_ALL_INFORMATION, byval WhichFields as PULONG, byval UserFlags as PULONG, byval Authoritative as PBOOLEAN, byval LogoffTime as PLARGE_INTEGER, byval KickoffTime as PLARGE_INTEGER) as NTSTATUS

#define STATUS_SUCCESS cast(NTSTATUS, &h00000000)
#define STATUS_INVALID_INFO_CLASS cast(NTSTATUS, &hC0000003)
#define STATUS_NO_SUCH_USER cast(NTSTATUS, &hC0000064)
#define STATUS_WRONG_PASSWORD cast(NTSTATUS, &hC000006A)
#define STATUS_PASSWORD_RESTRICTION cast(NTSTATUS, &hC000006C)
#define STATUS_LOGON_FAILURE cast(NTSTATUS, &hC000006D)
#define STATUS_ACCOUNT_RESTRICTION cast(NTSTATUS, &hC000006E)
#define STATUS_INVALID_LOGON_HOURS cast(NTSTATUS, &hC000006F)
#define STATUS_INVALID_WORKSTATION cast(NTSTATUS, &hC0000070)
#define STATUS_PASSWORD_EXPIRED cast(NTSTATUS, &hC0000071)
#define STATUS_ACCOUNT_DISABLED cast(NTSTATUS, &hC0000072)
#define STATUS_INSUFFICIENT_RESOURCES cast(NTSTATUS, &hC000009A)
#define STATUS_ACCOUNT_EXPIRED cast(NTSTATUS, &hC0000193)
#define STATUS_PASSWORD_MUST_CHANGE cast(NTSTATUS, &hC0000224)
#define STATUS_ACCOUNT_LOCKED_OUT cast(NTSTATUS, &hC0000234)

end extern
