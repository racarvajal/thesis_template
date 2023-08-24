\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mythesis}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions
\LoadClass[letterpaper,12pt,oneside]{book}


%% FONTS
%\renewcommand*\familydefault{\rmdefault}
\renewcommand*{\sfdefault}{\fontfamily{antpolt}\selectfont}
%This is for the big numbers of the chapters
\newcommand*{\numfont}{\fontfamily{antpolt}\selectfont} %pbk 
%This is for the titles of the chapters
\newcommand*{\headfont}{\bfseries\fontfamily{antpolt}\selectfont} %pbk
%\newcommand*{\headfont}{\slshape\fontfamily{antpolt}\selectfont} %pbk
%This is for the titles of sections and subsections
\newcommand*{\secfont}{\bfseries\fontfamily{antpolt}\selectfont} %pbk

\usepackage{xcolor}

\definecolor{referencia}{rgb}{0.38, 0.31, 0.86}
\definecolor{destacar}{rgb}{0.38, 0.31, 0.86}
\definecolor{black}{rgb}{0.0, 0.0, 0.0}
%\definecolor{referencia}{rgb}{1.0,0.0,1.0}
%\definecolor{destacar}{rgb}{1.0,0.0,1.0}


%this is for the number above the chapter title
\renewcommand{\@makechapterhead}[1]
{{ \color{referencia} \ifnum \c@secnumdepth >\m@ne 
\flushright \fontsize{1.5cm}{1em} \numfont  \color{black}
%\flushright \fontsize{3cm}{1em}\numfont 
\thechapter \par \nobreak \vskip 10\p@ \fi 
\vspace{15pt}  \color{referencia}
\hrule \hrule   \color{black}
\vspace{20pt} \huge\centering \headfont #1\par \vspace{20pt} \color{referencia} \hrule \hrule \color{black}\nobreak \vskip 20\p@ }}

%%chapter title
%{{\hrule \vspace{6pt} 
%\headfont\large \centering\headfont #1\par 
%\vspace{6pt} \hrule \nobreak \vskip 20\p@ }}
%%{{\hrule \vspace{5pt} 
%%\headfont\huge \centering\headfont #1\par 
%%\vspace{6pt} \hrule \nobreak \vskip 20\p@ }}

\newcommand\@shorttitle{}
% define \theshorttitle to what is given
\newcommand\shorttitle[1]{\renewcommand\@shorttitle{#1}}

% %% HEADINGS
% %% Chapters with numbers
% \renewcommand{\@makechapterhead}[1]
% {{\ifnum \c@secnumdepth >\m@ne 
% \centering \fontsize{2cm}{1em}\numfont %this is if you want a font size bigger than HUGE. The important number is {2cm}. The second {1em} I think controls the spacing but I left it with the default value.
% \thechapter \par \nobreak \vskip 10\p@ \fi 
% \hrule \vspace{5pt} \huge\headfont #1\par \vspace{6pt} \hrule \nobreak \vskip 20\p@ }}
% %%Chapters without numbers
% \renewcommand{\@makeschapterhead}[1]
% {{\hrule \vspace{5pt} 
% \headfont\huge \centering\headfont #1\par 
% \vspace{6pt} \hrule \nobreak \vskip 20\p@ }}

%% Useful to uncomment next block if you need to change the spacing between the titles of the Sections/Subsections and the text

%\renewcommand\chapter{\@startsection {chapter}{1}{\z@}%
%	{-3.5ex \@plus -1ex \@minus -.2ex}{2.3ex \@plus.2ex }	{\Large\secfont}}
%\renewcommand\section{\@startsection {section}{1}{\z@}%
%	{-3.5ex \@plus -1ex \@minus -.2ex}{2.3ex \@plus.2ex }	{\Large\secfont}}
%%Sub-sections
%\renewcommand\subsection{\@startsection {subsection}{1}{\z@}%
%	{-3.25ex \@plus -1ex \@minus -.2ex}{1.5ex \@plus.2ex }{\large\secfont}}

\usepackage{etoolbox}  % Modify spaces after and before chapter* titles

%\patchcmd{\@makechapterhead}{\vspace*{50\p@}}{}{}{}% Removes space above \chapter head
\patchcmd{\@makeschapterhead}{\vspace*{50\p@}}{\vspace*{4pt}}{}{}% Removes space above \chapter* head
\patchcmd{\@makeschapterhead}{\vskip 40}{\vskip 15}{}{} % Removes space below \chapter* head
%\renewcommand{\@makeschapterhead}{\vspace*{25pt}}

%% Additional commands that I always use
%% Astronomical commands
\newcommand{\esp}[1]{\mbox{\large{e}}^{#1}}
\newcommand{\leaveblank}{\newpage\thispagestyle{empty}\mbox{}}
\newcommand{\micron}{\mu\mbox{m}}
\newcommand{\url}[1]{\sf{#1}}
\newcommand{\tauboo}{$\tau$ Bo\"otis}
\newcommand{\kepler}{{\sl Kepler}}
\DeclareRobustCommand{\ion}[2]{\textup{#1\,\textsc{\lowercase{#2}}}}
\newcommand*\sun{\ensuremath{\odot}}
\newcommand*\degr{\ensuremath{^\circ}}
\newcommand*\arcmin{\ensuremath{^\prime}}
\newcommand*\arcsec{\ensuremath{^{\prime\prime}}}
\def\utw{\ensuremath{\smash{\rlap{\lower5pt\hbox{$\sim$}}}}}
\def\udtw{\ensuremath{\smash{\rlap{\lower6pt\hbox{$\approx$}}}}}
\newcommand*\fd{\ensuremath{\overset{\text{d}}{.}}}
\newcommand*\fh{\ensuremath{\overset{\text{h}}{.}}}
\newcommand*\fm{\ensuremath{\overset{\text{m}}{.}}}
\newcommand*\fs{\ensuremath{\overset{\text{s}}{.}}}
\newcommand*\fdg{\ensuremath{\overset{\circ}{.}}}
\newcommand*\farcm{\ensuremath{\overset{\prime}{.}}}
\newcommand*\farcs{\ensuremath{\overset{\prime\prime}{.}}}
\newcommand*\fp{\ensuremath{\overset{\scriptscriptstyle\text{p}}{.}}}
\newcommand*\cor{\ensuremath{\mathrel{\widehat{=}}}}
\newcommand*\la{\aa@centerstack{<}{\sim}}
\newcommand*\ga{\aa@centerstack{>}{\sim}}
\newcommand*\sol{\aa@centerstack{\sim}{<}}
\newcommand*\sog{\aa@centerstack{\sim}{>}}
\newcommand*\lse{\aa@centerstack{<}{\simeq}}
\newcommand*\gse{\aa@centerstack{>}{\simeq}}

%% Journals definitions
%% Addition from RCP. Astrophysical abbreviations
\newcommand*\aap{A\&A}
\let\astap=\aap
\newcommand*\aapr{A\&A~Rev.}
\newcommand*\aaps{A\&AS}
\newcommand*\actaa{Acta Astron.}
\newcommand*\aj{AJ}
\newcommand*\ao{Appl.~Opt.}
\let\applopt\ao
\newcommand*\apj{ApJ}
\newcommand*\apjl{ApJ}
\let\apjlett\apjl
\newcommand*\apjs{ApJS}
\let\apjsupp\apjs
\newcommand*\aplett{Astrophys.~Lett.}
\newcommand*\apspr{Astrophys.~Space~Phys.~Res.}
\newcommand*\apss{Ap\&SS}
\newcommand*\araa{ARA\&A}
\newcommand*\azh{AZh}
\newcommand*\baas{BAAS}
\newcommand*\bac{Bull. astr. Inst. Czechosl.}
\newcommand*\bain{Bull.~Astron.~Inst.~Netherlands}
\newcommand*\caa{Chinese Astron. Astrophys.}
\newcommand*\cjaa{Chinese J. Astron. Astrophys.}
\newcommand*\fcp{Fund.~Cosmic~Phys.}
\newcommand*\gca{Geochim.~Cosmochim.~Acta}
\newcommand*\grl{Geophys.~Res.~Lett.}
\newcommand*\iaucirc{IAU~Circ.}
\newcommand*\icarus{Icarus}
\newcommand*\jcap{J. Cosmology Astropart. Phys.}
\newcommand*\jcp{J.~Chem.~Phys.}
\newcommand*\jgr{J.~Geophys.~Res.}
\newcommand*\jqsrt{J.~Quant.~Spec.~Radiat.~Transf.}
\newcommand*\jrasc{JRASC}
\newcommand*\memras{MmRAS}
\newcommand*\memsai{Mem.~Soc.~Astron.~Italiana}
\newcommand*\mnras{MNRAS}
\newcommand*\na{New A}
\newcommand*\nar{New A Rev.}
\newcommand*\nat{Nature}
\newcommand*\nphysa{Nucl.~Phys.~A}
\newcommand*\pasa{PASA}
\newcommand*\pasj{PASJ}
\newcommand*\pasp{PASP}
\newcommand*\physrep{Phys.~Rep.}
\newcommand*\physscr{Phys.~Scr}
\newcommand*\planss{Planet.~Space~Sci.}
\newcommand*\pra{Phys.~Rev.~A}
\newcommand*\prb{Phys.~Rev.~B}
\newcommand*\prc{Phys.~Rev.~C}
\newcommand*\prd{Phys.~Rev.~D}
\newcommand*\pre{Phys.~Rev.~E}
\newcommand*\prl{Phys.~Rev.~Lett.}
\newcommand*\procspie{Proc.~SPIE}
\newcommand*\qjras{QJRAS}
\newcommand*\rmxaa{Rev. Mexicana Astron. Astrofis.}
\newcommand*\skytel{S\&T}
\newcommand*\solphys{Sol.~Phys.}
\newcommand*\sovast{Soviet~Ast.}
\newcommand*\ssr{Space~Sci.~Rev.}
\newcommand*\zap{ZAp}
% End addition from RCP

\endinput
