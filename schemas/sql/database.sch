# SQL definition for databases
# PostgreSQL Version: 9.x
# CAUTION: Do not modify this file unless you know what you are doing.
#          Code generation can be broken if incorrect changes are made.

[-- object: ] {name} [ | type: ] {sql-object} [ --] $br

[-- ] {drop}

 %if {prepended-sql} %then
   {prepended-sql}
   $br [-- ddl-end --] $br $br
 %end

[CREATE DATABASE ] {name} $br

%if {template} %then
  $tb [TEMPLATE = ] {template} $br
%end

%if {encoding} %then
  $tb [ENCODING = ] {encoding} $br
%end

  %if {lc-collate} %then
	$tb [LC_COLLATE = ] {lc-collate} $br
  %end

  %if {lc-ctype} %then
	$tb [LC_CTYPE = ] {lc-ctype} $br
  %end

%if {tablespace} %then
  $tb [TABLESPACE = ] {tablespace} $br
%end

%if {owner} %then
  $tb [OWNER = ] {owner} $br
%end

%if {connlimit} %then
  $tb [CONNECTION LIMIT = ] {connlimit} $br
%end

; $br

# This is a special token that pgModeler recognizes as end of DDL command
# when exporting models directly to DBMS. DO NOT REMOVE THIS TOKEN!
[-- ddl-end --] $br

%if {comment} %then {comment} %end

%if {appended-sql} %then
 {appended-sql}
 $br [-- ddl-end --] $br
%end

$br
