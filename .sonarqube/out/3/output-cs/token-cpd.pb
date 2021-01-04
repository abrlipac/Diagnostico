�h
]C:\Users\AbrahamLIPACALABILLA\source\repos\Diagnostico\src\Common\Common.Logging\SysLogger.cs
	namespace 	
Common
 
. 
Logging 
{		 
public

 

class

  
SyslogLoggerProvider

 %
:

& '
ILoggerProvider

( 7
{ 
private 
string 
_host 
; 
private
int
_port
;
private 
readonly 
Func 
< 
string $
,$ %
LogLevel& .
,. /
bool0 4
>4 5
_filter6 =
;= >
public  
SyslogLoggerProvider #
(# $
string$ *
host+ /
,/ 0
int1 4
port5 9
,9 :
Func; ?
<? @
string@ F
,F G
LogLevelH P
,P Q
boolR V
>V W
filterX ^
)^ _
{ 	
_host 
= 
host 
; 
_port 
= 
port 
; 
_filter 
= 
filter 
; 
} 	
public 
ILogger 
CreateLogger #
(# $
string$ *
categoryName+ 7
)7 8
{ 	
return 
new 
SyslogLogger #
(# $
categoryName$ 0
,0 1
_host2 7
,7 8
_port9 >
,> ?
_filter@ G
)G H
;H I
} 	
public 
void 
Dispose 
( 
) 
{ 	
} 	
}   
public"" 

class"" 
SyslogLogger"" 
:"" 
ILogger""  '
{## 
private$$ 
const$$ 
int$$ 
SyslogFacility$$ (
=$$) *
$num$$+ -
;$$- .
private%% 
string%% 

;%%$ %
private&& 
string&& 
_host&& 
;&& 
private'' 
int'' 
_port'' 
;'' 
private(( 
readonly(( 
Func(( 
<(( 
string(( $
,(($ %
LogLevel((& .
,((. /
bool((0 4
>((4 5
_filter((6 =
;((= >
public** 
SyslogLogger** 
(** 
string** "
categoryName**# /
,**/ 0
string++ "
host++# '
,++' (
int,, 
port,,  $
,,,$ %
Func--  
<--  !
string--! '
,--' (
LogLevel--) 1
,--1 2
bool--3 7
>--7 8
filter--9 ?
)--? @
{.. 	

=// 
categoryName// (
;//( )
_host00 
=00 
host00 
;00 
_port11 
=11 
port11 
;11 
_filter22 
=22 
filter22 
;22 
}33 	
public55 
IDisposable55 

BeginScope55 %
<55% &
TState55& ,
>55, -
(55- .
TState55. 4
state555 :
)55: ;
{66 	
return77 
NoopDisposable77 !
.77! "
Instance77" *
;77* +
}88 	
public:: 
bool:: 
	IsEnabled:: 
(:: 
LogLevel:: &
logLevel::' /
)::/ 0
{;; 	
return<< 
(<< 
_filter<< 
==<< 
null<< #
||<<$ &
_filter<<' .
(<<. /

,<<< =
logLevel<<> F
)<<F G
)<<G H
;<<H I
}== 	
public?? 
void?? 
Log?? 
<?? 
TState?? 
>?? 
(??  
LogLevel??  (
logLevel??) 1
,??1 2
EventId??3 :
eventId??; B
,??B C
TState??D J
state??K P
,??P Q
	Exception??R [
	exception??\ e
,??e f
Func??g k
<??k l
TState??l r
,??r s
	Exception??t }
,??} ~
string	?? �
>
??� �
	formatter
??� �
)
??� �
{@@ 	
ifAA 
(AA 
!AA 
	IsEnabledAA 
(AA 
logLevelAA #
)AA# $
)AA$ %
{BB 
returnCC 
;CC 
}DD 
ifEE 
(EE 
	formatterEE 
==EE 
nullEE !
)EE! "
{FF 
throwGG 
newGG !
ArgumentNullExceptionGG /
(GG/ 0
nameofGG0 6
(GG6 7
	formatterGG7 @
)GG@ A
)GGA B
;GGB C
}HH 
varII 
messageII 
=II 
	formatterII #
(II# $
stateII$ )
,II) *
	exceptionII+ 4
)II4 5
;II5 6
ifJJ 
(JJ 
stringJJ 
.JJ 

(JJ$ %
messageJJ% ,
)JJ, -
)JJ- .
{KK 
returnLL 
;LL 
}MM 
messageNN 
=NN 
$"NN 
{NN 
logLevelNN "
}NN# $
: NN$ &
{NN& '
messageNN' .
}NN. /
"NN/ 0
;NN0 1
ifOO 
(OO 
	exceptionOO 
!=OO 
nullOO !
)OO! "
{PP 
messageQQ 
+=QQ 
EnvironmentQQ &
.QQ& '
NewLineQQ' .
+QQ/ 0
EnvironmentQQ1 <
.QQ< =
NewLineQQ= D
+QQE F
	exceptionQQG P
.QQP Q
ToStringQQQ Y
(QQY Z
)QQZ [
;QQ[ \
}RR 
varSS 
syslogLevelSS 
=SS 
MapToSyslogLevelSS .
(SS. /
logLevelSS/ 7
)SS7 8
;SS8 9
SendTT 
(TT 
syslogLevelTT 
,TT 
messageTT %
)TT% &
;TT& '
}UU 	
internalWW 
voidWW 
SendWW 
(WW 
SyslogLogLevelWW )
logLevelWW* 2
,WW2 3
stringWW4 :
messageWW; B
)WWB C
{XX 	
ifYY 
(YY 
stringYY 
.YY 
IsNullOrWhiteSpaceYY )
(YY) *
_hostYY* /
)YY/ 0
||YY1 3
_portYY4 9
<=YY: <
$numYY= >
)YY> ?
{ZZ 
return[[ 
;[[ 
}\\ 
var^^ 
hostName^^ 
=^^ 
Dns^^ 
.^^ 
GetHostName^^ *
(^^* +
)^^+ ,
;^^, -
var__ 
assemblyName__ 
=__ 
Assembly__ '
.__' (
GetEntryAssembly__( 8
(__8 9
)__9 :
.__: ;
GetName__; B
(__B C
)__C D
.__D E
Name__E I
;__I J
var`` 
environment`` 
=`` 
Environment`` )
.``) *"
GetEnvironmentVariable``* @
(``@ A
$str``A Y
)``Y Z
.``Z [
ToLower``[ b
(``b c
)``c d
;``d e
switchbb 
(bb 
environmentbb 
)bb  
{cc 
casedd 
$strdd "
:dd" #
environmentee 
=ee  !
$stree" '
;ee' (
breakff 
;ff 
casegg 
$strgg 
:gg 
environmenthh 
=hh  !
$strhh" '
;hh' (
breakii 
;ii 
casejj 
$strjj !
:jj! "
environmentkk 
=kk  !
$strkk" (
;kk( )
breakll 
;ll 
defaultmm 
:mm 
breaknn 
;nn 
}oo 
varqq 

logMessageqq 
=qq 
stringqq #
.qq# $
Formatqq$ *
(qq* +
$strqq+ B
,qqB C
environmentqqD O
,qqO P
assemblyNameqqQ ]
,qq] ^
hostNameqq_ g
,qqg h
messageqqi p
)qqp q
;qqq r
varrr 
bytesrr 
=rr 
Encodingrr  
.rr  !
UTF8rr! %
.rr% &
GetBytesrr& .
(rr. /

logMessagerr/ 9
)rr9 :
;rr: ;
usingtt 
(tt 
vartt 
clienttt 
=tt 
newtt  #
	UdpClienttt$ -
(tt- .
)tt. /
)tt/ 0
{uu 
clientvv 
.vv 
	SendAsyncvv  
(vv  !
bytesvv! &
,vv& '
bytesvv( -
.vv- .
Lengthvv. 4
,vv4 5
_hostvv6 ;
,vv; <
_portvv= B
)vvB C
.vvC D
WaitvvD H
(vvH I
)vvI J
;vvJ K
}ww 
}xx 	
privatezz 
SyslogLogLevelzz 
MapToSyslogLevelzz /
(zz/ 0
LogLevelzz0 8
levelzz9 >
)zz> ?
{{{ 	
if|| 
(|| 
level|| 
==|| 
LogLevel|| !
.||! "
Critical||" *
)||* +
return}} 
SyslogLogLevel}} %
.}}% &
Critical}}& .
;}}. /
if 
( 
level 
== 
LogLevel !
.! "
Debug" '
)' (
return
�� 
SyslogLogLevel
�� %
.
��% &
Debug
��& +
;
��+ ,
if
�� 
(
�� 
level
�� 
==
�� 
LogLevel
�� !
.
��! "
Error
��" '
)
��' (
return
�� 
SyslogLogLevel
�� %
.
��% &
Error
��& +
;
��+ ,
if
�� 
(
�� 
level
�� 
==
�� 
LogLevel
�� !
.
��! "
Information
��" -
)
��- .
return
�� 
SyslogLogLevel
�� %
.
��% &
Info
��& *
;
��* +
if
�� 
(
�� 
level
�� 
==
�� 
LogLevel
�� !
.
��! "
None
��" &
)
��& '
return
�� 
SyslogLogLevel
�� %
.
��% &
Info
��& *
;
��* +
if
�� 
(
�� 
level
�� 
==
�� 
LogLevel
�� !
.
��! "
Trace
��" '
)
��' (
return
�� 
SyslogLogLevel
�� %
.
��% &
Info
��& *
;
��* +
if
�� 
(
�� 
level
�� 
==
�� 
LogLevel
�� !
.
��! "
Warning
��" )
)
��) *
return
�� 
SyslogLogLevel
�� %
.
��% &
Warn
��& *
;
��* +
return
�� 
SyslogLogLevel
�� !
.
��! "
Info
��" &
;
��& '
}
�� 	
}
�� 
public
�� 

enum
�� 
SyslogLogLevel
�� 
{
�� 
	Emergency
�� 
,
�� 
Alert
�� 
,
��
Critical
�� 
,
�� 
Error
�� 
,
��
Warn
�� 
,
�� 
Notice
�� 
,
�� 
Info
�� 
,
�� 
Debug
�� 
}
�� 
public
�� 

class
�� 
NoopDisposable
�� 
:
��  !
IDisposable
��" -
{
�� 
public
�� 
static
�� 
NoopDisposable
�� $
Instance
��% -
=
��. /
new
��0 3
NoopDisposable
��4 B
(
��B C
)
��C D
;
��D E
public
�� 
void
�� 
Dispose
�� 
(
�� 
)
�� 
{
�� 	
}
�� 	
}
�� 
public
�� 

static
�� 
class
�� $
SyslogLoggerExtensions
�� .
{
�� 
public
�� 
static
�� 
ILoggerFactory
�� $
	AddSyslog
��% .
(
��. /
this
��/ 3
ILoggerFactory
��4 B
factory
��C J
,
��J K
string
��( .
host
��/ 3
,
��3 4
int
��5 8
port
��9 =
,
��= >
Func
��( ,
<
��, -
string
��- 3
,
��3 4
LogLevel
��5 =
,
��= >
bool
��? C
>
��C D
filter
��E K
=
��L M
null
��N R
)
��R S
{
�� 	
factory
�� 
.
�� 
AddProvider
�� 
(
��  
new
��  #"
SyslogLoggerProvider
��$ 8
(
��8 9
host
��9 =
,
��= >
port
��? C
,
��C D
filter
��E K
)
��K L
)
��L M
;
��M N
return
�� 
factory
�� 
;
�� 
}
�� 	
}
�� 
}�� 