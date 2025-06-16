%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                              %
%	Class Properties                                                           %
%                                                                              %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}[1996/12/01]
\ProvidesClass{thesis}[2007/22/02 v1.0 LaTeX document class]
\def\baseclass{book}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\baseclass}}
\def\@checkoptions#1#2 {
	\edef\@curroptions{\@ptionlist{\@currname.\@currext}}
	\@tempswafalse
	\@tfor\@this:=#2\do {
		\@expandtwoargs\in@{,\@this,}{,\@curroptions,}
		\ifin@ \@tempswatrue \@break@tfor \fi
	}
	\let\@this\@empty
	\if@tempswa \else \PassOptionsToClass{#1}{\baseclass}\fi
}
\@checkoptions{11pt}{{10pt}{11pt}{12pt}}
\PassOptionsToClass{a4paper}{\baseclass}
\ProcessOptions\relax
\LoadClass{\baseclass}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                              %
%	Package Imports                                                            %
%                                                                              %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\usepackage{amsmath,amssymb,amscd,amsthm,xspace,mathrsfs}
\usepackage{stmaryrd}
\usepackage{fancyhdr}
\usepackage{enumitem}
\usepackage{vmargin}

\usepackage[pdfpagemode={UseOutlines},bookmarks=true,bookmarksopen=true,
bookmarksopenlevel=0,bookmarksnumbered=true,hypertexnames=false,
colorlinks,linkcolor={red},citecolor={blue},urlcolor={green},
pdfstartview={FitV},unicode,breaklinks=true]{hyperref}


% \usepackage[useregional]{datetime2}
% \usepackage{setspace}
% \usepackage[centerlast,small,sc]{caption}
% \usepackage{tikz}
% %\usepackage{tikz-cd}
% \usepackage{verbatim}
% \usepackage[all,2cell]{xy}
% \usetikzlibrary{matrix,arrows,decorations.markings,decorations.pathmorphing}
% \RequirePackage[utf8]{inputenc}  %  Allows the use of international characters (e.g. Umlauts)
% \usepackage{mathrsfs}
% \usepackage{xcolor}
% %\usepackage{algorithmicx}
% %\usepackage{algpseudocode}
% \usepackage{algorithm2e}
% \usepackage{tikz-cd}
% \usepackage{xcolor}
% \usepackage{thm-restate}

% %\usepackage[bookmarksnumbered,linktocpage,hypertexnames=false,colorlinks=true,linkcolor=blue,urlcolor=blue,citecolor=blue,anchorcolor=green,pdfusetitle]{hyperref}
% \usepackage{mathtools}
% \usepackage{graphicx}
% \usepackage{datetime}
% \usepackage{bm}
% \usepackage[mathscr]{euscript}
% \usepackage[capitalise]{cleveref}
% \usepackage{epstopdf}
% \usepackage{young}
% \usepackage{listings}
% %\usepackage{lstpatch}
% \usepackage{geometry}
% \usepackage{libertine}  %  This will set your document to use the font for text
% \usepackage{lipsum}
% \usepackage{titlesec}
% \usepackage{multirow}
% \usepackage{multicol}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                              %
%	Page Setup                                                                 %
%                                                                              %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%\renewcommand{\familydefault}{\sfdefault} % Set default font to Sans Serif (Helvetica)

\pagestyle{fancy}
\fancyhf{}  %  Clear header and footer
\fancyhead[LE,RO]{\nouppercase{\leftmark}}  %  Section name on left for even pages, right for odd pages in lowercase
\fancyhead[RE,LO]{\thepage}  %  Page number on right for even pages, left for odd pages
\renewcommand{\headrulewidth}{0.4pt}  %  Optional: Add a horizontal rule under the header
\renewcommand{\chaptermark}[1]{\markboth{\chaptername\ \thechapter.\ #1}{}}  %  Format for chapter titles
\setlength{\headheight}{14.5pt}  %  Adjust the header height to avoid warnings
\fancyheadoffset[LE,RO]{0\headwidth}
\fancyheadoffset[RE,LO]{0\headwidth}

\setlist[enumerate,itemize]{leftmargin=15pt}
%\setlength{\parskip}{1.0ex plus0.5ex minus0.2ex}
\setmarginsrb{1.0in}  % left margin
{0.6in}  %  top margin
{1.0in}  %  right margin
{0.8in}  %  bottom margin
{20pt}  %  head height
{0.25in}  %  head sep
{9pt}  %  foot height
{0.3in}  %  foot sep


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                              %
%	Look and Feel - Sections/Subsections                                       %
%                                                                              %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%\setcounter{section}{-1} 
%
%\renewcommand{\thesection}{\arabic{section}}  %  Change section numbering to uppercase letters
%\titleformat{\section}
%{\normalfont\Large\bfseries}  %  Formatting applied to the whole title
%{\thesection}  %  Label (e.g., the section number)
%{1em}  %  Space between the label and the title body
%{}
%
%\titlespacing*{\section}{0pt}{10pt}{5pt}
%\titleformat{\subsubsection}[runin]  %  Use 'runin' format
%{\normalfont\bfseries}  %  Subsection title font
%{\thesubsubsection.~}  %  Label
%{0pt}  %  Separation between label and title
%{}
%[:]
%\titlespacing*{\subsection}{0pt}{5pt}{0pt}
%\titlespacing*{\subsubsection}{0pt}{0pt}{7pt}
%\setstretch{1.1}  %  Set line spacing to 1.5


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                              %
%	Theorem-Like Environments                                                  %
%                                                                              %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\theoremstyle{plain}
\newtheorem{theorem}{Theorem}[chapter]
\newtheorem{corollary}[theorem]{Corollary}
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{observation}[theorem]{Observation}
\newtheorem{claim}[theorem]{Claim}
\newtheorem{proposition}[theorem]{Proposition}
\newtheorem{question}[theorem]{Question}
\newtheorem{conjecture}[theorem]{Conjecture}

\theoremstyle{definition}
\newtheorem{definition}[theorem]{Definition}
\newtheorem{problem}[theorem]{Problem}
%\newtheorem{algorithm}[theorem]{Algorithm}
%\numberwithin{equation}{section}

\theoremstyle{remark}
\newtheorem{remark}{Remark}[theorem]
\newtheorem{example}{Example}[theorem]
\newtheorem*{examples}{Examples}

\input{thesisPeripherals/personal_details}
\input{thesisPeripherals/titlepage}
\newfont{\sfbf}{cmssbx10 scaled 1200}
\newfont{\sftiny}{cmss9 scaled 1000}
\input{thesisPeripherals/declaration}
\input{thesisPeripherals/certificate}
\input{thesisPeripherals/acknowledgement}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                              %
%	Abstract Page Design                                                       %
%                                                                              %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newenvironment{abstract}{
	\btypeout{Abstract Page}
	\thispagestyle{empty}
	\begin{center}
		{\huge{\textit{Abstract}} \par}
	\end{center}
}

\addtocounter{secnumdepth}{1}
\setcounter{tocdepth}{2}
\newcounter{dummy}
\newcommand\addtotoc[1]{
	\refstepcounter{dummy}
	\addcontentsline{toc}{chapter}{#1}
}

\renewcommand\backmatter{
	\if@openright	
	\cleardoublepage
	\else			
	\clearpage 		
	\fi
	\@mainmatterfalse
}
