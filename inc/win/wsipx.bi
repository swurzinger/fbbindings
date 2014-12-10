#pragma once

'' The following symbols have been renamed:
''     typedef SOCKADDR_IPX => SOCKADDR_IPX_

#define _WSIPX_

type sockaddr_ipx
	sa_family as short
	sa_netnum as zstring * 4
	sa_nodenum as zstring * 6
	sa_socket as ushort
end type

type SOCKADDR_IPX_ as sockaddr_ipx
type PSOCKADDR_IPX as sockaddr_ipx ptr
type LPSOCKADDR_IPX as sockaddr_ipx ptr

#define NSPROTO_IPX 1000
#define NSPROTO_SPX 1256
#define NSPROTO_SPXII 1257