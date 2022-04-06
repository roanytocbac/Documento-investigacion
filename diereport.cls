\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{diereport}%[Plantilla para documentos de presentación]

% Carga la clase 'article' con las opciones especificadas
\LoadClass[letterpaper, 11pt, twoside]{article}

% Configuración de idioma y codificación de archivos
% Se asume que la codificación siempre será en UTF-8 y para documentos en castellano
% Seleccionar el idioma con una de las dos siguientes opciones
% \RequirePackage[spanish, es-tabla]{babel}
\RequirePackage[english]{babel}

% Configuración de punto en los decimales
% \spanishdecimal{.}
\RequirePackage[utf8]{inputenc}

% Requerido para el paquete Babel
\RequirePackage{csquotes}

% Captions
\RequirePackage[]{caption}
\captionsetup{labelsep=period, labelfont=bf, textfont=it}
\captionsetup[table]{belowskip=0pt, aboveskip=0pt}
\captionsetup[figure]{belowskip=0pt, aboveskip=0pt}

% Para las tablas
\RequirePackage{multicol}
\RequirePackage{multirow}
\RequirePackage{booktabs}
\RequirePackage{colortbl}
\RequirePackage{longtable}
\RequirePackage{tabu}
\extrarowsep=0.5mm
\RequirePackage[table]{xcolor}

% Configuración de página
\RequirePackage{geometry}
\geometry{
	letterpaper,
	left=25mm,
	top=25mm,
}

% Para imágenes
\RequirePackage{graphicx}
\RequirePackage{subcaption}
\RequirePackage{tikz}

% Para poder introducir comentarios
\RequirePackage{comment}

% Para incluir párrafos de muestra
\RequirePackage{lipsum}

% Enlaces a url's y archivos
\RequirePackage{hyperref}
\hypersetup{
	colorlinks=true,
	allcolors=black,
	%linkcolor=black,
	%filecolor=magenta,      
	%urlcolor=blue,
	pdftitle={Economic Research Department - Bank of Guatemala}
}
\RequirePackage{url}


% Configuración de párrafos
% Definición del tamaño de letra
\renewcommand{\normalsize}{\fontsize{12pt}{14.5pt}\selectfont}
% Interlineado (1.3 para 1.5, 1.6 para doble)
\linespread{1.3}
% Indentación de párrafo
\setlength{\parindent}{1cm}
% Espacio después de parráfos.
\setlength{\parskip}{1em}


% Formato de los títulos
\RequirePackage{titlesec}
%\titlespacing\section{0pt}{0pt plus 4pt minus 2pt}{0pt plus 2pt minus 2pt}
\titlespacing{\section}{0pt}{0\parskip}{0\parskip}
\titlespacing{\subsection}{0pt}{0\parskip}{0\parskip}

% -------------------------------------------
%	BIBLIOGRAFÍA
% -------------------------------------------

% Configuración de bibliografía
\RequirePackage[backend=biber,
style=authoryear,
sorting=nyt]{biblatex}

% Agregar la coma y espacio en las citas con paréntesis (Autor, año)
\renewcommand*{\nameyeardelim}{\addcomma\space}
% Configuración de "et al." cuando son más autores
\DefineBibliographyStrings{spanish}{andothers={et al.}}

% -------------------------------------------
%	MATEMÁTICA
% -------------------------------------------

% Configuración para las definiciones matemáticas
\RequirePackage{amsthm}
\newtheorem{definition}{Definition}
\theoremstyle{definition}

% Para estilo de letra blackboard 
\RequirePackage{amssymb}

% Alineación de las ecuaciones
\RequirePackage{amsmath}

% -------------------------------------------
%	ALGORITMOS
% -------------------------------------------
\RequirePackage{algorithm}
% Opción noend para quitar el 'end' de los bloques
% \RequirePackage[noend]{algpseudocode}
\RequirePackage{algpseudocode}
% Traducción para los algoritmos
% \floatname{algorithm}{Algoritmo}
% \renewcommand{\listalgorithmname}{Lista de algoritmos}

% Descomentar estos comandos para utilizar el paquete de algoritmos en español
% \renewcommand{\algorithmicrequire}{\textbf{Entrada:}}
% \renewcommand{\algorithmicensure}{\textbf{Asegurar:}}
% \renewcommand{\algorithmicprocedure}{\textbf{procedimiento}}
% \renewcommand{\algorithmicfunction}{\textbf{función}}
% \renewcommand{\algorithmicend}{\textbf{fin}}
% \renewcommand{\algorithmicif}{\textbf{si}}
% \renewcommand{\algorithmicthen}{\textbf{entonces}}
% \renewcommand{\algorithmicelse}{\textbf{si no}}
% \renewcommand{\algorithmicfor}{\textbf{para}}
% \renewcommand{\algorithmicforall}{\textbf{para todo}}
% \renewcommand{\algorithmicdo}{\textbf{hacer}}
% \renewcommand{\algorithmicwhile}{\textbf{mientras}}
% \renewcommand{\algorithmicloop}{\textbf{repetir}}
% \renewcommand{\algorithmicrepeat}{\textbf{repetir}}
% \renewcommand{\algorithmicuntil}{\textbf{hasta que}}
% \renewcommand{\algorithmicreturn}{\textbf{devolver}} 

% -------------------------------------------
%	LISTINGS
% -------------------------------------------
% Paquetes necesarios para los códigos
\RequirePackage{listings}
\RequirePackage{color}
% Configuración de listings (pendiente)
%\input{conf/listingStyles}
% Redefinición de titulos de caption
\renewcommand\lstlistingname{\textbf{Código}}
\renewcommand\lstlistlistingname{Códigos}

% Definición de colores para Matlab (según el editor)
\definecolor{matlab_keyword_color}{RGB}{0, 0, 255}
\definecolor{matlab_string_color}{RGB}{160, 32, 240}
\definecolor{matlab_comment_color}{RGB}{34, 139, 34}
\definecolor{frame_numbers_color}{rgb}{0.5,0.5,0.5}
\definecolor{matlab_identifier_color}{RGB}{0,0,0}

% Definicion de estilo para Matlab
\lstdefinestyle{custom_matlab}{
	language=matlab,			% the language of the code
	backgroundcolor=\color{white},        
	basicstyle=\linespread{1}\small\ttfamily,	% the size of the fonts that are used for the code
	% Configuración de colores
	commentstyle=\color{matlab_comment_color},	% comment style
	identifierstyle=\color{matlab_identifier_color},
	keywordstyle=\mdseries\color{matlab_keyword_color},	% keyword style
	numberstyle=\tiny\color{frame_numbers_color},	% the style that is used for the line-numbers
	stringstyle=\color{matlab_string_color}, % string literal style 
	captionpos=t,				% sets the caption-position to bottom
	breakatwhitespace=false,	% sets if automatic breaks should only happen at whitespace
	breaklines=true,			% sets automatic line breaking
	morekeywords={},			% if you want to add more keywords to the set
	deletekeywords={eps},		% delete keywords from the given language
	escapeinside={\%*}{*)},		% if you want to add LaTeX within your code
	framesep=3pt,
	keepspaces=true,			% keeps spaces in text,       
	numbers=left, 	% where to put the line-numbers; possible values are (none, left, right)
	numbersep=5pt,	% how far the line-numbers are from the code
	% if not set, the frame-color may be changed on line-breaks within not-black text (e.g. comments (green here))
	rulecolor=\color{black}, 
	% show spaces everywhere adding particular underscores; it overrides 'showstringspaces'
	showspaces=false,                
	% underline spaces within strings only
	showstringspaces=false,          
	% show tabs within strings adding particular underscores
	showtabs=false,                  
	stepnumber=1,	% the step between two line-numbers      
	% sets default tabsize to 2 spaces
	tabsize=2,                       
	% lets you use non-ASCII characters; for 8-bits encodings only, does not work with UTF-8
	extendedchars=true,      
	% Support additional characters            
	literate =	{á}{{\'a}}1  {é}{{\'e}}1  {í}{{\'i}}1 {ó}{{\'o}}1  {ú}{{\'u}}1 {Á}{{\'A}}1  {É}{{\'E}}1  {Í}{{\'I}}1 {Ó}{{\'O}}1  {Ú}{{\'U}}1 {à}{{\`a}}1  {è}{{\`e}}1  {ì}{{\`i}}1 {ò}{{\`o}}1  {ù}{{\`u}}1 {À}{{\`A}}1  {È}{{\'E}}1  {Ì}{{\`I}}1 {Ò}{{\`O}}1  {Ù}{{\`U}}1 {ä}{{\"a}}1  {ë}{{\"e}}1  {ï}{{\"i}}1 {ö}{{\"o}}1  {ü}{{\"u}}1 {Ä}{{\"A}}1  {Ë}{{\"E}}1  {Ï}{{\"I}}1 {Ö}{{\"O}}1  {Ü}{{\"U}}1 {â}{{\^a}}1  {ê}{{\^e}}1  {î}{{\^i}}1 {ô}{{\^o}}1  {û}{{\^u}}1 {Â}{{\^A}}1  {Ê}{{\^E}}1  {Î}{{\^I}}1 {Ô}{{\^O}}1  {Û}{{\^U}}1 {œ}{{\oe}}1  {Œ}{{\OE}}1  {æ}{{\ae}}1 {Æ}{{\AE}}1  {ß}{{\ss}}1 {ç}{{\c c}}1 {Ç}{{\c C}}1 {ø}{{\o}}1  {å}{{\r a}}1 {Å}{{\r A}}1 {ñ}{{\~n}}1  {Ñ}{{\~N}}1  {¿}{{?`}}1  {¡}{{!`}}1,   
}

% Configurar el listing para el documento actual
\lstset{
	style = custom_matlab, 
	frame = lines
}

% -------------------------------------------
%	Para opciones a la clase
% -------------------------------------------
% Para opciones a la clase
%\DeclareOption{english}{\renewcommand{\idioma}{english}}
%\ProcessOptions \relax

% -------------------------------------------
%	Redefinición de la carátula para el documento
% -------------------------------------------

% Formato de la carátula
% \renewcommand{\maketitle}{
% 	\thispagestyle{empty}
% 	\begin{center}
% 		\vspace*{1cm}
% 		\textbf{{\LARGE \@title \\}}
% 		\vspace*{1cm}
% 		{\large \@author \par}
% 		\vspace*{1cm}
% 		%\vfill
% 		{\large Departamento de Investigaciones Económicas \\ Banco de Guatemala\footnote{El contenido de este trabajo de investigación es responsabilidad exclusiva de sus autores y no necesariamente representa la postura institucional del Banco de Guatemala.} \par}
% 		\vfill
% 		\includegraphics[width=0.2\textwidth]{banguat.png} \\
% 		\vfill
% 		{\large \@date}
% 	\end{center}
% 	\clearpage
% }
