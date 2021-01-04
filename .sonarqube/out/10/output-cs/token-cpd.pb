�
�C:\Users\AbrahamLIPACALABILLA\source\repos\Diagnostico\src\Services\Diagnosticos\Diagnosticos.Persistence.Database\ApplicationDbContext.cs
	namespace 	
Diagnosticos
 
. 
Persistence "
." #
Database# +
{ 
public 

class  
ApplicationDbContext %
:& '
	DbContext( 1
{ 
public		  
ApplicationDbContext		 #
(		# $
DbContextOptions

 
<

  
ApplicationDbContext

 1
>

1 2
options

3 :
) 	
: 
base 
( 
options 
) 
{
} 	
	protected 
override 
void 
OnModelCreating  /
(/ 0
ModelBuilder0 <
builder= D
)D E
{ 	
base 
. 
OnModelCreating  
(  !
builder! (
)( )
;) *
builder 
. 
HasDefaultSchema $
($ %
$str% 3
)3 4
;4 5
ModelConfig 
( 
builder 
)  
;  !
} 	
public 
DbSet 
< 
Diagnostico  
>  !
Diagnosticos" .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
public 
DbSet 
< 
DetalleDiagnostico '
>' ( 
DetallesDiagnosticos) =
{> ?
get@ C
;C D
setE H
;H I
}J K
private 
void 
ModelConfig  
(  !
ModelBuilder! -
modelBuilder. :
): ;
{   	$
DiagnosticoConfiguration!! $
.!!$ %
	Configure!!% .
(!!. /
modelBuilder!!/ ;
.!!; <
Entity!!< B
<!!B C
Diagnostico!!C N
>!!N O
(!!O P
)!!P Q
)!!Q R
;!!R S+
DetalleDiagnosticoConfiguration"" +
.""+ ,
	Configure"", 5
(""5 6
modelBuilder""6 B
.""B C
Entity""C I
<""I J
DetalleDiagnostico""J \
>""\ ]
(""] ^
)""^ _
)""_ `
;""` a
}## 	
}$$ 
}%% �
�C:\Users\AbrahamLIPACALABILLA\source\repos\Diagnostico\src\Services\Diagnosticos\Diagnosticos.Persistence.Database\Configuration\DetalleDiagnosticoConfiguration.cs
	namespace 	
Diagnosticos
 
. 
Persistence "
." #
Database# +
.+ ,

{ 
public 

static 
class +
DetalleDiagnosticoConfiguration 7
{ 
public 
static 
void 
	Configure $
($ %
EntityTypeBuilder% 6
<6 7
DetalleDiagnostico7 I
>I J

)X Y
{		 	


 
.

 
HasKey

  
(

  !
x

! "
=>

# %
x

& '
.

' (
Id

( *
)

* +
;

+ ,

. 
HasOne  
(  !
x! "
=># %
x& '
.' (
Diagnostico( 3
)3 4
. 
WithMany 
( 
x 
=> 
x  
.  !
DetallesDiagnostico! 4
)4 5
.

(
x
=>
x
.
Diagnostico_Id
)
. 

IsRequired 
( 
) 
; 
} 	
} 
} �
�C:\Users\AbrahamLIPACALABILLA\source\repos\Diagnostico\src\Services\Diagnosticos\Diagnosticos.Persistence.Database\Configuration\DiagnosticoConfiguration.cs
	namespace 	
Diagnosticos
 
. 
Persistence "
." #
Database# +
.+ ,

{ 
public 

static 
class $
DiagnosticoConfiguration 0
{ 
public 
static 
void 
	Configure $
($ %
EntityTypeBuilder% 6
<6 7
Diagnostico7 B
>B C

)Q R
{		 	


 
.

 
HasKey

  
(

  !
x

! "
=>

# %
x

& '
.

' (
Id

( *
)

* +
;

+ ,
} 	
} 
}
�C:\Users\AbrahamLIPACALABILLA\source\repos\Diagnostico\src\Services\Diagnosticos\Diagnosticos.Persistence.Database\Migrations\20210102003146_Initialize.cs
	namespace 	
Diagnosticos
 
. 
Persistence "
." #
Database# +
.+ ,

Migrations, 6
{ 
public 

partial 
class 

Initialize #
:$ %
	Migration& /
{ 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{		 	
migrationBuilder

 
.

 
EnsureSchema

 )
(

) *
name 
: 
$str $
)$ %
;% &
migrationBuilder
.
CreateTable
(
name 
: 
$str $
,$ %
schema 
: 
$str &
,& '
columns 
: 
table 
=> !
new" %
{ 
Id 
= 
table 
. 
Column %
<% &
int& )
>) *
(* +
type+ /
:/ 0
$str1 6
,6 7
nullable8 @
:@ A
falseB G
)G H
. 

Annotation #
(# $
$str$ 8
,8 9
$str: @
)@ A
,A B
Empleado_Id 
=  !
table" '
.' (
Column( .
<. /
int/ 2
>2 3
(3 4
type4 8
:8 9
$str: ?
,? @
nullableA I
:I J
falseK P
)P Q
,Q R
Paciente_Id 
=  !
table" '
.' (
Column( .
<. /
int/ 2
>2 3
(3 4
type4 8
:8 9
$str: ?
,? @
nullableA I
:I J
falseK P
)P Q
,Q R
Fecha 
= 
table !
.! "
Column" (
<( )
DateTime) 1
>1 2
(2 3
type3 7
:7 8
$str9 D
,D E
nullableF N
:N O
falseP U
)U V
,V W

Enfermedad 
=  
table! &
.& '
Column' -
<- .
string. 4
>4 5
(5 6
type6 :
:: ;
$str< K
,K L
nullableM U
:U V
trueW [
)[ \
} 
, 
constraints 
: 
table "
=># %
{ 
table 
. 

PrimaryKey $
($ %
$str% 6
,6 7
x8 9
=>: <
x= >
.> ?
Id? A
)A B
;B C
} 
) 
; 
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str ,
,, -
schema   
:   
$str   &
,  & '
columns!! 
:!! 
table!! 
=>!! !
new!!" %
{"" 
Id## 
=## 
table## 
.## 
Column## %
<##% &
int##& )
>##) *
(##* +
type##+ /
:##/ 0
$str##1 6
,##6 7
nullable##8 @
:##@ A
false##B G
)##G H
.$$ 

Annotation$$ #
($$# $
$str$$$ 8
,$$8 9
$str$$: @
)$$@ A
,$$A B
Diagnostico_Id%% "
=%%# $
table%%% *
.%%* +
Column%%+ 1
<%%1 2
int%%2 5
>%%5 6
(%%6 7
type%%7 ;
:%%; <
$str%%= B
,%%B C
nullable%%D L
:%%L M
false%%N S
)%%S T
,%%T U
Sintoma&& 
=&& 
table&& #
.&&# $
Column&&$ *
<&&* +
string&&+ 1
>&&1 2
(&&2 3
type&&3 7
:&&7 8
$str&&9 H
,&&H I
nullable&&J R
:&&R S
true&&T X
)&&X Y
}'' 
,'' 
constraints(( 
:(( 
table(( "
=>((# %
{)) 
table** 
.** 

PrimaryKey** $
(**$ %
$str**% >
,**> ?
x**@ A
=>**B D
x**E F
.**F G
Id**G I
)**I J
;**J K
table++ 
.++ 

ForeignKey++ $
(++$ %
name,, 
:,, 
$str,, S
,,,S T
column-- 
:-- 
x--  !
=>--" $
x--% &
.--& '
Diagnostico_Id--' 5
,--5 6
principalSchema.. '
:..' (
$str..) 7
,..7 8
principalTable// &
://& '
$str//( 6
,//6 7
principalColumn00 '
:00' (
$str00) -
,00- .
onDelete11  
:11  !
ReferentialAction11" 3
.113 4
Cascade114 ;
)11; <
;11< =
}22 
)22 
;22 
migrationBuilder44 
.44 
CreateIndex44 (
(44( )
name55 
:55 
$str55 >
,55> ?
schema66 
:66 
$str66 &
,66& '
table77 
:77 
$str77 -
,77- .
column88 
:88 
$str88 (
)88( )
;88) *
}99 	
	protected;; 
override;; 
void;; 
Down;;  $
(;;$ %
MigrationBuilder;;% 5
migrationBuilder;;6 F
);;F G
{<< 	
migrationBuilder== 
.== 
	DropTable== &
(==& '
name>> 
:>> 
$str>> ,
,>>, -
schema?? 
:?? 
$str?? &
)??& '
;??' (
migrationBuilderAA 
.AA 
	DropTableAA &
(AA& '
nameBB 
:BB 
$strBB $
,BB$ %
schemaCC 
:CC 
$strCC &
)CC& '
;CC' (
}DD 	
}EE 
}FF 