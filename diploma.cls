\NeedsTeXFormat{LaTeX2e}[1998/12/01]
\ProvidesClass{diploma}[2018/04/12 Eremeykin diploma for HSE]
\ClassWarningNoLine{diploma}{This class requires MikTeX 1.2c--2.4}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}


\ProcessOptions
\LoadClass[a4paper]{article} % default class
\RequirePackage[utf8]{inputenc} % use UTF-8
\RequirePackage{mmap}
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
%\RequirePackage{subcaption} % to tune subcaptions
\RequirePackage{subfigure}
\RequirePackage{subfigmat}
\RequirePackage{caption} % to tune subcaptions
\RequirePackage{fancyhdr} % fancy headers on every page
\RequirePackage{xspace} % space after command
\RequirePackage{enumitem} % italic descriptions
\RequirePackage{hyperref} % for refs in descriptions
\RequirePackage{nameref} % for refs in descriptions
\RequirePackage[most]{tcolorbox}
\RequirePackage{standalone}
\RequirePackage{tkz-euclide}
\RequirePackage[edges]{forest}
\RequirePackage{pgf-umlcd}
\RequirePackage{wasysym}

\usetikzlibrary{shapes,backgrounds}
\usetikzlibrary{arrows.meta}
\usetikzlibrary{snakes}
\usetikzlibrary{shapes.geometric, arrows}

%\RequirePackage[showframe]{geometry}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%   LAYOUT   %%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\sloppy
\setlength{\parindent}{1cm}  % set paragraph indent
\setstretch{1.5} % line interval
\newcommand{\sectionbreak}{\clearpage} % set start each section on a new page

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%   LISTINGS   %%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\renewcommand{\lstlistingname}{Code}
% define listings colors
\definecolor{codegreen}{rgb}{0, 0.6, 0}
\definecolor{codegray}{rgb}{0.5, 0.5, 0.5}
\definecolor{codepurple}{rgb}{0.58, 0, 0.82}
\definecolor{backcolor}{rgb}{0.95, 0.95, 0.92}

%% define lising style
\lstdefinestyle{mystyle}{
	backgroundcolor=\color{backcolor},   
	commentstyle=\color{codegreen},
	keywordstyle=\color{magenta},
	numberstyle=\color{codegray},
	stringstyle=\color{codepurple},
	basicstyle=\linespread{1}\footnotesize\ttfamily,
	breakatwhitespace=false,         
	breaklines=true,                 
	captionpos=t,                    
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

\renewcommand{\thesubfigure}{(\asbuk{subfigure})}
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

\makeatletter
% colorbox for algorithm
\newcounter{algc} % Алгоритм А Л Г О Р И Т М
\newtcbtheorem[use counter=algc]{algorithm}{А Л Г О Р И Т М \#}{
	breakable,
	lower separated=false,
	colback=white!100!gray,
	colframe=white, fonttitle=\bfseries,
	colbacktitle=white!100!gray,
	coltitle=black,
	enhanced,
	boxed title style={colframe=black},
	after skip=-5pt,
	before skip=20pt,
	fonttitle = \normalfont \ttfamily,
	code={\edef\@currentlabelname{{#2}}}
}{alg}
\makeatother


% for description enviroment

\newcounter{descriptcount}

\makeatletter
\let\orgdescriptionlabel\descriptionlabel
\renewcommand*{\descriptionlabel}[1]{%
	\setcounter{descriptcount}{1}
	\let\orglabel\label
	\let\label\@gobble
	\phantomsection
	\edef\@currentlabel{#1}%
	\let\label\orglabel
	\orgdescriptionlabel{\hspace\labelsep \upshape\bfseries \arabic{descriptcount}.~#1. \stepcounter{descriptcount}}%
}
\makeatother

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%   ENVIROMENTS  %%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcounter{astc}[algc]

\newenvironment{astep}[1]{
	\refstepcounter{astc}
%	$ $\newline
	\textbf{\theastc.~} \textit{#1.}
	}{\\}

\newenvironment{conditions}[1][где:]
{#1 \begin{tabular}[t]{>{$}l<{$} @{${}-{}$} p{\linewidth}}}
	{\end{tabular}\\}
%	{\end{tabular}\\[\belowdisplayskip]}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%   COMMANDS  %%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\DeclareMathOperator*{\argmax}{arg\,max}
\DeclareMathOperator*{\argmin}{arg\,min}
\newcommand{\tabitem}{~~\llap{\textbullet}~~}

\newcommand{\kmeans}{\mbox{$ k $-means}\xspace}
\newcommand{\Ward}{Ward\xspace}
\newcommand{\AWard}{\mbox{A-Ward}\xspace}
\newcommand{\Wardp}{\mbox{Ward$ _p $}\xspace}
\newcommand{\AWardpb}{\mbox{A-Ward$ _{p\beta} $}\xspace}
\newcommand{\BisectingKmeans}{Bisecting \mbox{k-means}\xspace}
\newcommand{\BiKMR}{\mbox{BiKM-R}\xspace}
\newcommand{\dePDDP}{dePDDP\xspace}
\newcommand{\ikmeans}{\mbox{$ ik $-means}\xspace}
\newcommand{\imwkmeanspb}{\mbox{$ imwk $-means$ _{p\beta} $}\xspace}
\newcommand{\PDDP}{PDDP\xspace}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%     TIKZ    %%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\tikzstyle{startstop} = [rectangle, rounded corners, minimum width=3cm, minimum height=1cm,text centered, draw=black, fill=red!30]

\tikzstyle{io} = [trapezium, trapezium left angle=70, trapezium right angle=110, minimum width=3cm, minimum height=1cm, text centered, draw=black, fill=blue!30]

\tikzstyle{process} = [rectangle, minimum width=3cm, minimum height=1cm, text centered, draw=black, fill=orange!30]

\tikzstyle{decision} = [diamond, minimum width=3cm, minimum height=1cm, text centered, draw=black, fill=green!30]

\tikzstyle{menuitem} = [rectangle, minimum width=3cm, minimum height=1cm, text centered, draw=black, fill=black!10]



\tikzstyle{arrow} = [thick,->,>=stealth]


%%%%%%%%%%%%%%%%%%%%%%%%%% NEW %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\tikzstyle{startstop} = [rectangle, rounded corners, minimum width=3cm, minimum height=1cm,text centered, draw=black, fill=red!30, font=\ttfamily]

\tikzstyle{io} = [text width=2cm,align=center,trapezium, trapezium left angle=70, trapezium right angle=110, minimum width=3cm, minimum height=1cm,minimum width=3cm, draw=black, fill=blue!30, font=\ttfamily]

\tikzstyle{process} = [text width=5cm,align=left,rectangle, minimum width=3cm, minimum height=1cm, draw=black, fill=orange!30, font=\ttfamily]

\tikzstyle{decision} = [diamond, minimum width=3cm, minimum height=1cm, text centered, draw=black, fill=green!30, font=\ttfamily]

\tikzstyle{point} = [circle, minimum width=1cm, minimum height=1cm, text centered, draw=black, fill=red!80, text=white, font=\ttfamily]

\tikzstyle{arrow} = [thick,->,>=stealth]

\newcommand\Star[3][]{%
	\path[#1] (0  :#3) -- ( 36:#2) 
	-- (72 :#3) -- (108:#2)
	-- (144:#3) -- (180:#2)
	-- (216:#3) -- (252:#2)
	-- (288:#3) -- (324:#2)--cycle;
}
\newcommand\Center[3][]{
	\begin{scope}[shift = {(#2,#3)}, scale=0.08]
		\Star[#1]{2}{4}
	\end{scope}
}

\newcommand\point[3][]{
	\begin{scope}[shift = {(#2,#3)}, scale=0.08]
		\draw[#1] (0,0) circle (1.5);
	\end{scope}
}


\tikzset{weird fill/.style={append after command={
			\pgfextra
			\draw[sharp corners, fill=#1,fill opacity=0.3, draw=none]% 
			(\tikzlastnode)% 
			[rounded corners=8pt] -| (\tikzlastnode.west)
			[rounded corners=8pt] |- (\tikzlastnode.north)% 
			[rounded corners=8pt] -| (\tikzlastnode.east)% 
			[rounded corners=8pt] |- (\tikzlastnode.south);
			\endpgfextra}}}

\newcommand\pack[6][]{%
	\path[#1] (#4,#5) -- (#4-#2 , #5)
	-- (#4-#2 ,#5+#3) -- (#4-#2 ,#5+#3 + 0.7)
	-- (#4-#2 + #6 * #2 ,#5+#3 + 0.7) -- (#4-#2 + #6 * #2+0.0 ,#5+ #3)
	-- (#4, #5+#3)
	--cycle;
	\path[#1] (#4-#2 , #5+ #3) -- (#4-#2 + 0.8* #2+0.5 ,#5+ #3);
}

\def\package[#1](#2:#3:#4:#5:#6){%
	% Synopsis                 2  3 4 5 6
	% \package[draw options](text:w:h:x:y)
	%	\pack[draw=black, rounded corners=8pt, thick, fill=white]{#3}{#4}{#5}{#6};
	%	\pack[draw=black, rounded corners=8pt, thick, fill opacity=0.2, #1]{#3}{#4}{#5}{#6};
	%	\node [anchor=west, draw=black, thick] at (#5-#3,  #6+#4+0.35) {\texttt{#2}};	
	
	%	\node [anchor=west] at (#5-#3,  #6+#4+0.35) {\texttt{#2}};
	\draw node[minimum height=5mm,anchor=south west,minimum width=15mm,
	append after command={[rounded corners=8pt](b.west)|-(b.north)},
	append after command={[rounded corners=8pt](b.north)-|(b.east)},
	append after command={[rounded corners=0pt](b.east)|-(b.south)},
	append after command={[rounded corners=0pt](b.south)-|(b.west)}, weird fill=#1]
	(b) at (#5,  #6+#4) {\texttt{#2}};
	
	\draw node[minimum height=5mm,anchor=south west,minimum width=15mm,
	append after command={[rounded corners=8pt](b.west)|-(b.north)},
	append after command={[rounded corners=8pt](b.north)-|(b.east)},
	append after command={[rounded corners=0pt](b.east)|-(b.south)},
	append after command={[rounded corners=0pt](b.south)-|(b.west)}]
	(c) at (#5,  #6+#4) {\texttt{#2}};
	
	
	\path[draw,black,fill=#1,fill opacity=0.3,rounded corners=8pt] (#5, #6 + #4) -- (#5,#6) -- (#5+#3, #6) -- (#5+#3, #6 + #4) -- (#5, #6 + #4);
}

\definecolor{folderbg}{RGB}{124,166,198}
\definecolor{folderborder}{RGB}{110,144,169}

\def\Size{4pt}

\tikzset{%
	folder/.pic={%
		\filldraw [draw=folderborder, top color=folderbg!50, bottom color=folderbg] (-1.05*\Size,0.2\Size+5pt) rectangle ++(.75*\Size,-0.2\Size-5pt);
		\filldraw [draw=folderborder, top color=folderbg!50, bottom color=folderbg] (-1.15*\Size,-\Size) rectangle (1.15*\Size,\Size);
	},
	file/.pic={%
		\filldraw [draw=folderborder, top color=folderbg!5, bottom color=folderbg!10];
		\node[inner sep=0pt] (whitehead) at (0,0)
		{\includegraphics[scale=.12]{img/python_file}};
	},
}

\forestset{%
	declare autowrapped toks={pic me}{},
	pic dir tree/.style={%
		for tree={%
			folder,
			font=\ttfamily,
			grow'=0,
		},
		before typesetting nodes={%
			for tree={%
				edge label+/.option={pic me},
			},
		},
	},
	pic me set/.code n args=2{%
		\forestset{%
			#1/.style={%
				inner xsep=1\Size,
				inner ysep=0.75\Size,
				pic me={pic {#2}},
			}
		}
	},
	pic me set={directory}{folder},
	pic me set={file}{file},
}
