\NeedsTeXFormat{LaTeX2e}[1998/12/01]
\ProvidesClass{diploma}[2018/04/12 Eremeykin diploma for HSE]
\ClassWarningNoLine{diploma}{This class requires MikTeX 1.2c--2.4}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}


\ProcessOptions
\LoadClass[a4paper]{article} % default class
\RequirePackage[utf8]{inputenc} % use UTF-8
\RequirePackage[T2A,OT1]{fontenc} % rus fonts
\RequirePackage[russian]{babel} % russian language
\RequirePackage{indentfirst} % paragraph indent
\RequirePackage{listings} % for code listings
\RequirePackage{color} % to define listings colors
\RequirePackage{textcomp} % to use number sign like №
\RequirePackage[leqno]{amsmath} % extended math in formulas ( and for brackets for equation references)
\RequirePackage{amsfonts} % same
\RequirePackage{amssymb} % same, for empty set symbol
\RequirePackage{setspace} % space interline space (lines intervals)
\RequirePackage{margins} % page margins
\RequirePackage{graphicx} % package for image processing, like crop
\RequirePackage{grffile}
\RequirePackage{tabularx} % for tables and pagebreak in tabularx
\RequirePackage{tabu}
\RequirePackage{lipsum} % generate sample text
\RequirePackage{array} % for new table columns and image inside tables
\RequirePackage{pdfpages} % to insert pdf as titile page 
\RequirePackage{subcaption} % to tune subcaptions
\RequirePackage{caption} % to tune subcaptions
\RequirePackage{fancyhdr} % fancy headers on every page
%\RequirePackage[showframe]{geometry}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%   LAYOUT   %%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\setlength{\parindent}{1cm}  % set paragraph indent
\setstretch{1.5} % line interval
%\newcommand{\sectionbreak}{\clearpage} % set start each section on a new page

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%   LISTINGS   %%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% define listings colors
\definecolor{codegreen}{rgb}{0, 0.6, 0}
\definecolor{codegray}{rgb}{0.5, 0.5, 0.5}
\definecolor{codepurple}{rgb}{0.58, 0, 0.82}
\definecolor{backcolor}{rgb}{0.95, 0.95, 0.92}

%% define lising style
\lstdefinestyle{mystyle}{
	backgroundcolor=\color{backcolour},   
	commentstyle=\color{codegreen},
	keywordstyle=\color{magenta},
	numberstyle=\color{codegray},
	stringstyle=\color{codepurple},
	basicstyle=\linespread{1}\footnotesize\ttfamily,
	breakatwhitespace=false,         
	breaklines=true,                 
	captionpos=b,                    
	keepspaces=true,                 
	numbers=left,                    
	numbersep=5pt,                  
	showspaces=false,                
	showstringspaces=false,
	showtabs=false,                  
	tabsize=2,
}

% assign new code listings style
\lstset{style=mystyle}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%   TABLES   %%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% define new column types (see package array)
\newcolumntype{Z}{>{\centering\let\newline\\\arraybackslash\hspace{0pt}}X} 
\newcolumntype{M}{>{\raggedright\let\newline\\\arraybackslash\hspace{0pt}}X}
\newcolumntype{L}[1]{>{\raggedright\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{C}[1]{>{\centering\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
% table counter (don't remember why)
\newcounter{titem}[table]
\newenvironment{titem}[2][]{\refstepcounter{titem}\par\medskip
	\noindent \textit{
		\begin{flushleft}
			\begin{hyphenrules}{nohyphenation}
				\thetitem.~#1~#2\newline
			\end{hyphenrules}
		\end{flushleft}
	}}{\medskip}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%   TITLES   %%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% set titles of sections
\usepackage{titlesec}
\titleformat{\section}{\normalfont\fontsize{16}{0}\bfseries}{\thesection}{1em}{}
\titleformat{\subsection}{\normalfont\fontsize{14}{0}\bfseries}{\thesubsection}{1em}{}
\titleformat{\subsubsection}{\bf\fontsize{14}{0}}{\thesubsubsection}{1em}{}

% set titles spacing
\titlespacing*{\section}{0pt}{5ex}{3ex} % left before after
\titlespacing*{\subsection}{0pt}{3ex}{1ex}
\titlespacing*{\subsubsection}{0pt}{3ex}{1ex}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%   CAPTIONS   %%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% figures captions style
\DeclareCaptionLabelFormat{gostfigure}{Рисунок #2}
\DeclareCaptionLabelFormat{slide}{Слайд №#2}
\DeclareCaptionLabelFormat{gosttable}{Таблица #2}
\DeclareCaptionLabelSeparator{gost}{~---~}
% set new styles
\captionsetup{labelsep=gost}
\captionsetup[figure]{labelformat=gostfigure}
\captionsetup[table]{labelformat=gosttable}
\captionsetup{figurewithin=none, tablewithin=none}
\renewcommand{\thesubfigure}{\asbuk{subfigure}}
% set tables and pictures captions align
\captionsetup[table]{justification=raggedleft} 
\captionsetup[figure]{justification=centering,labelsep=endash} 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%   BIBLIOGRAPHY   %%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% set bibliography style
\bibliographystyle{utf8gost705u} 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%   LINKS  %%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% web links style
\usepackage{hyperref}
\hypersetup{
	colorlinks=true,
	linkcolor=blue,
	urlcolor=blue,
}

\urlstyle{same}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%   PAGE HEADERS  %%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% setup page fancy headers, (see fancyhdr package)
\pagestyle{fancy}
\fancyhf{}
\fancyhead[L]{\rightmark}
\fancyhead[R]{\thepage}
\renewcommand{\headrulewidth}{0.4pt}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%   LISTS  %%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% enumerate lists style
\renewcommand\labelenumii{\theenumi.\arabic{enumii}.}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%   COLOR BOXES  %%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% colorbox for menu
\usepackage[most]{tcolorbox}
\definecolor{myblue}{rgb}{0.000, 1.000, 1.000}
\definecolor{dodgerblue}{rgb}{0.117,0.564,1.000}
% colorbox for algorithm
\newtcolorbox[auto counter]{guide}[1][]{enhanced jigsaw,inherit height,
	colback=red!5,opacityback=0.9,colframe=red,title=Алгоритм \#\thetcbcounter,
	grow to left by=4mm,grow to right by=4mm,
	arc is angular,arc=0mm,
	fonttitle=\bfseries\large,
}
% colorbox for algorithm
\newtcbtheorem[auto counter]{algorithm}{Алгоритм}{
	breakable,
	lower separated=false,
	colback=white!80!gray,
	colframe=white, fonttitle=\bfseries,
	colbacktitle=white!50!gray,
	coltitle=black,
	enhanced,
	boxed title style={colframe=black},
	after skip=20pt
}{alg}
