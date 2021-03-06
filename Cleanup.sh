#! /bin/sh

xargs rm -fr << \EOF
	aclocal.m4
	autom4te.cache
	config-aux
	config.h
	config.h.in
	config.h.in~
	config.log
	config.status
	configure
	libtool
	Makefile.pg
	pcre/config.h
	pcre/config.log
	pcre/config.status
	pcre/.deps/
	pcre/libpcre16.pc
	pcre/libpcre32.pc
	pcre/libpcrecpp.pc
	pcre/libpcre.pc
	pcre/libpcreposix.pc
	pcre/libtool
	pcre/Makefile
	pcre/pcre-config
	pcre/pcrecpparg.h
	pcre/pcre.h
	pcre/pcre_stringpiece.h
	pcre/stamp-h1
	stamp-h1
	yajl/Makefile
	yajl/Makefile.in
	yajl/src/.deps
	yajl/src/Makefile
	yajl/src/Makefile.in
	src/Makefile.pg
EOF
