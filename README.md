# Topicos Especiales 2
## Tarea #03

<div id="badges">
    <a href="https://www.linkedin.com/in/eliecer-aguilar-507/">
      <img src="https://img.shields.io/badge/LinkedIn-blue?style=for-the-badge&logo=linkedin&logoColor=white" alt="LinkedIn Badge"/>
    </a>
    <a href="https://twitter.com/elieceraguilar3">
      <img src="https://img.shields.io/badge/Twitter-blue?style=for-the-badge&logo=twitter&logoColor=white" alt="Twitter Badge"/>
    </a>
    <a href="https://colab.research.google.com/github/eliecer507/TP2_tarea03_p02/blob/main/main.ipynb">
    <img src="https://colab.research.google.com/assets/colab-badge.svg" alt="Open In Colab"/>
    </a>
</div>


<div id="header" align="center">
  <img src="https://media.giphy.com/media/M9gbBd9nbDrOTu1Mqx/giphy.gif" width="100"/>
</div>


## Problema	2.	Manejo	de Shapefiles en	Línea	de	Comandos
Dados	 los	 shapefiles	 del	 archivo	 Panama.zip,	 que	 contiene	 5	 shapefiles	 (PAN_admX y PAN_roads,	 indicando	
respectivamente	la	información	a	nivel	de	País,	Provincia,	Distrito,	Corregimiento	y	carreteras	a	nivel	nacional),	y	
utilizando la	herramienta	shp2sql de	PostgreSQL,	transformar	estos	shapefiles	en	una	sentencia	de	inserción	de	SQL	
1. Cree	un	script	en	bash	para	llamar	a	shp2pgsql	consecutivamente	sobre	cada	uno	de	los	archivos.	Haga	una	
captura	de	pantalla del	script.
Recuerde	para	la	llamada	de	shp2pgsql	es	como	se	muestra	a	continuación:
Donde	-i	indica	el	uso	de	entero	de	tipo	corto	(int4)	y	el	-s indica	el	uso	especifico	de	un	SRID	(en	este	caso	use	
4326 que	es	el	standard	WGS84),	luego	se	pone	el	archivo	shapefile	de	referencia,	el	nombre	que	se	quiere	
usar	para	la	tabla en	la	base	de	datos	y por	último al	archivo	donde	queremos	que	este	el	comando	SQL.
Además,	recuerde	que	el	script	debe	ser	ejecutable,	puede	cambiarle	el	modo	con	el	comando	chmod.
2. Cargue	el	archivo	llamando	desde	la	línea	de	comandos	o	desde	PgAdmin (o	Heroku	CLI).	Haga	una	captura	
de	pantalla	del	proceso.
3. Muestre	que	la	tabla	fue	ingresada	a	la	base	de	datos	con	“\d+”	o	con	el	visualizador de	PgAdmin.	Haga	una	
captura	de	pantalla	de las	tablas.