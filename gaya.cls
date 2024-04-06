%-------------------------------------------------------------------------------
% Template Tugas Akhir untuk Prodi SAP ITERA
%
% Hasil edit dan menggabungkan dari Template Skripsi UGM dan ITB
% (c) 2022
%-------------------------------------------------------------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{gaya}
\LoadClass[a4paper,12pt]{report}
\RequirePackage[english,bahasa]{babel}
\RequirePackage{indentfirst}
\RequirePackage{setspace}
\RequirePackage[T1]{fontenc}
\RequirePackage{times}
\RequirePackage{graphicx,latexsym}
\RequirePackage{pdflscape}
\RequirePackage{longtable}
\setlength{\paperwidth}{210mm}
\setlength{\paperheight}{297mm}
\usepackage[a4paper, left = 4cm, right = 3cm, top = 3cm, bottom = 3cm, footskip = 1cm]{geometry}
\usepackage{verbatim,enumerate}
\usepackage[hyphens]{url}
\usepackage{fancyvrb}
\RecustomVerbatimCommand{\VerbatimInput}{VerbatimInput}%
{fontsize=\footnotesize,
 %
 frame=lines,  % top and bottom rule only
 framesep=2em, % separation between frame and text
 rulecolor=\color{Gray},
 %
 label=\fbox{\color{Black}data.txt},
 labelposition=topline,
 %
 commandchars=\|\(\), % escape character and argument delimiters for
                      % commands within the verbatim
 commentchar=*        % comment character
}

\usepackage{graphicx}
\usepackage{booktabs}
\usepackage[table,xcdraw]{xcolor}
\usepackage{multirow}
\usepackage{float}
\usepackage{indentfirst}
\usepackage{amsmath}
\usepackage{array}
\usepackage{tabularx,booktabs}
\usepackage{blindtext}

\newif\if@msthesis
\newif\if@msproposal
\DeclareOption{skripsi}{\@msthesistrue\@msproposalfalse}
\DeclareOption{proposal}{\@
msthesisfalse\@msproposaltrue}

\newif\if@singlesp
\newif\if@doublesp
\DeclareOption{satuspasi}{\@singlesptrue\@doublespfalse}
\DeclareOption{duaspasi}{\@singlespfalse\@doublesptrue}
\newif\if@onehalfsp
\@onehalfspfalse
\DeclareOption{satusetengahspasi}{\@onehalfsptrue}

\newif\if@langindo
\newif\if@langeng
\DeclareOption{indonesia}{\@langindotrue\@langengfalse}
\DeclareOption{inggris}{\@langindofalse\@langengtrue}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ExecuteOptions{gaya,satusetengahspasi,indonesia}
\ProcessOptions

\usepackage[autostyle=false]{csquotes}
\usepackage[bibencoding=auto, backend=biber, style=ieee, language=english, doi=false, isbn=false]{biblatex}
\DeclareLanguageMapping{english}{bahasa}
\addbibresource{pustaka/pustaka.bib}
%\RequirePackage{glossaries}%
%\renewcommand{\nomname}{\nomenclaturename}%
%\makeglossary%
%\makenomenclature

%------------------------------------------------------------
%Layout
%------------------------------------------------------------
% \setlength{\topmargin}{-0.81cm}
% % \setlength{\headheight}{12pt}
% % \setlength{\headsep}{0cm}
% % \setlength{\topskip}{1ex}
% \setlength{\oddsidemargin}{1.49cm}
% % \setlength{\evensidemargin}{1.cm}
% \setlength{\textwidth}{14cm}
% \setlength{\textheight}{23.7cm}
% \setlength{\footskip}{1.5cm}
% % \setlength{\marginparsep}{0pt}
% % \setlength{\marginparwidth}{0pt}

\setlength
{\parindent}{0em} %Indent approx 6 character

%-----------------------------------------------------------------

\usepackage[titles]{tocloft}
\setlength{\cftbeforechapskip}{5.2pt}
\cftsetindents{section}{1.5em}{2.3em}
\cftsetindents{subsection}{3em}{3em}
\setlength{\cfttabindent}{1.5em}
\setlength{\cftfigindent}{1.5em}
\renewcommand{\cftchapdotsep}{\cftdotsep} % for add dots between chapter toc
\renewcommand\cftfigpresnum{Gambar\  }
\renewcommand\cfttabpresnum{Tabel\   }
\usepackage{ragged2e}
\usepackage{textcomp, gensymb}
\usepackage{import}
\urlstyle{rm}

%----------- itemize for better life -----------%
\usepackage[shortlabels]{enumitem}
\setlist{nosep}

%Tautan dan Daftar Isi
\usepackage{hyperref}
\newlength{\mylenf}
\settowidth{\mylenf}{\cftfigpresnum}
\setlength{\cftfignumwidth}{\dimexpr\mylenf+2em}
\setlength{\cfttabnumwidth}{\dimexpr\mylenf+2em}

%Bila keterangan gambar ingin tebal
\usepackage[font=footnotesize,labelfont=bf]{caption}

%Penulisan caption dan subcaption
\usepackage{caption}
\captionsetup{labelsep=space, skip=1pt}
\usepackage{subcaption}

\usepackage{listings}
\definecolor{comment}{RGB}{0,128,0}
\definecolor{string}{RGB}{255,0,0}
\definecolor{keyword}{RGB}{0,0,255}
\lstdefinestyle{mystyle}{
  commentstyle=\color{comment},
  stringstyle=\color{string},
  keywordstyle=\color{keyword},
  basicstyle=\footnotesize\ttfamily,
  numbers=left,
  numberstyle=\tiny,
  numbersep=5pt,
  frame=lines,
  breaklines=true,
  prebreak=\raisebox{0ex}[0ex][0ex]{\ensuremath{\hookleftarrow}},
  showstringspaces=false,
  upquote=true,
  tabsize=2,
}
\lstset{style=mystyle}

% Abstract-en
\usepackage{icomma}
\newcommand{\textbfit}[1]{\textbf{\textit{#1}}}


%------------------------------------------------------------
%Redefine chapter and sections
%------------------------------------------------------------
\setcounter{secnumdepth}{2}
\renewcommand \thepart {\@Roman\c@part}
\renewcommand \thechapter {\@Roman\c@chapter}
%\renewcommand \thesection {\@arabic\c@section.}
\renewcommand \thesection {\@arabic\c@chapter.\@arabic\c@section}
%\renewcommand\thesubsection {\@alph\c@subsection.}
\renewcommand\thesubsection {\@arabic\c@chapter.\@arabic\c@section.\@arabic\c@subsection}
%\renewcommand\thesubsubsection{\@roman\c@subsubsection.}
%\renewcommand\thesubsubsection{}
\renewcommand\appendix{\par
  \setcounter{chapter}{0}%
  \setcounter{section}{0}%
  \gdef\@chapapp{\appendixname}%
  \gdef\thechapter{\@Alph\c@chapter}
  \renewcommand{\thesection}{{\thechapter}.\arabic{section}}
  \renewcommand{\thesubsection}{{\thesection}.\arabic{subsection}}
  \renewcommand \thetable
     {\ifnum \c@chapter>\z@ \@Alph\c@chapter.\fi \@arabic\c@table}
  \renewcommand\theequation
     {\ifnum \c@chapter>\z@ \@Alph\c@chapter.\fi \@arabic\c@equation}
  \renewcommand \thefigure
     {\ifnum \c@chapter>\z@ \@Alph\c@chapter.\fi \@arabic\c@figure}


     }

\renewcommand{\chapter}{\clearpage\thispagestyle{plain}% ok wtf, it was (chapterheading) b4
  \global\@topnum\z@ %Prevents figures from going at top of page
  \@afterindenttrue %Indent the 1st paragraph
  \secdef\@chapter\@schapter}
\renewcommand{\@makechapterhead}[1]{%
  {\parindent \z@ \centering \normalfont
    \ifnum \c@secnumdepth >\m@ne
        \large\bfseries \@chapapp\space \thechapter
        \par\nobreak
        \vskip 5\p@
    \fi
    \interlinepenalty\@M
    \large \bfseries #1\par\nobreak
    \vskip 20\p@
    }}
\renewcommand{\@makeschapterhead}[1]{%
  {\parindent \z@ \centering \normalfont
    \interlinepenalty\@M \large \bfseries #1\par\nobreak \vskip 20\p@ }}

\renewcommand{\section}{\@startsection {section}{1}{\z@}%level
                                   {-3.5ex \@plus -1ex \@minus -.2ex}%upperspace
                                   {1.ex \@plus .2ex}%underspace
                                   {\normalfont\normalsize\bfseries}}
\renewcommand{\subsection}{\@startsection{subsection}{2}{\z@}%
                                     {-3.25ex\@plus -1ex \@minus -.2ex}%
                                     {1.ex \@plus .2ex}%
                                     {\normalfont\normalsize\bfseries}}
\renewcommand{\subsubsection}{\@startsection{subsubsection}{3}{\z@}%
                                    {3.25ex \@plus1ex \@minus.2ex}%
                                    {-1em}%
                                    {\normalfont\normalsize\bfseries}}
\renewcommand{\paragraph}{\subparagraph}

\@addtoreset {equation}{chapter}
\renewcommand\theequation
  {\ifnum \c@chapter>\z@ \@arabic\c@chapter.\fi \@arabic\c@equation}
\renewcommand \thefigure
     {\ifnum \c@chapter>\z@ \@arabic\c@chapter.\fi \@arabic\c@figure}
\renewcommand \thetable
     {\ifnum \c@chapter>\z@ \@arabic\c@chapter.\fi \@arabic\c@table}

%------------------------------------------------------------
%Redefine caption names
%------------------------------------------------------------
\def\captionsbahasa{%
\def\prefacename{KATA PENGANTAR}%
\def\contentsname{DAFTAR ISI}%
\def\listfigurename{DAFTAR GAMBAR}%
\def\listtablename{DAFTAR TABEL}%
\def\listappendixname{DAFTAR LAMPIRAN}%
\def\nomenclaturename{DAFTAR SINGKATAN}%
\def\symbolname{DAFTAR SIMBOL}%
\def\abstractname{ABSTRAK}%
\def\mottoname{MOTTO}%
\def\acknowledgmentname{HALAMAN PERSEMBAHAN}%
\def\approvalname{HALAMAN PENGESAHAN}
\def\originalityname{HALAMAN PERNYATAAN ORISINALITAS}%
\def\publicationname{HALAMAN PERNYATAAN PERSETUJUAN PUBLIKASI UNTUK KEPENTINGAN AKADEMIS}%
\def\publicationnametoc{HALAMAN PERNYATAAN PERSETUJUAN PUBLIKASI}%
\def\partname{BAGIAN}%
\def\chaptername{BAB}%
\def\appendixname{LAMPIRAN}%
\def\refname{DAFTAR PUSTAKA}%
\def\bibname{DAFTAR PUSTAKA}%
\def\indexname{Indeks}%
\def\figurename{Gambar}%
\def\tablename{Tabel}%
\def\pagename{Halaman}%
}

%English
\def\captionsenglish{%
\def\prefacename{PREFACE}%
\def\contentsname{CONTENTS}%
\def\listfigurename{LIST OF FIGURES}%
\def\listtablename{LIST OF TABLES}%
\def\listappendixname{LIST OF APPENDICES}%
\def\nomenclaturename{LIST OF ABBREVIATIONS}%
\def\symbolname{LIST OF SYMBOLS}%
\def\abstractname{\emph{ABSTRACT}}%
\def\partname{PART}%
\def\chaptername{CHAPTER}%
\def\appendixname{APPENDIX}%
\def\refname{REFERENCES}%
\def\bibname{REFERENCES}%
\def\indexname{Index}%
\def\figurename{Figure}%
\def\tablename{Table}%
\def\pagename{Page}%
}

%------------------------------------------------------------]
%Define thesis's inputs
%------------------------------------------------------------
\gdef\@university{Institut Teknologi Sumatera }
\gdef\@faculty{Fakultas Sains}
\gdef\@city{Lampung Selatan}
\newcommand{\titleind}[1]{\gdef\@titleind{#1}}
\newcommand{\@titleind}{}
\newcommand{\titleindinline}[1]{\gdef\@titleindinline{#1}}
\newcommand{\@titleindinline}{}
\newcommand{\titleen}[1]{\gdef\@titleen{#1}}
\newcommand{\@titleen}{}
\newcommand{\fullname}[1]{\gdef\@fullname{#1}}
\newcommand{\@fullname}{}
\newcommand{\idnum}[1]{\gdef\@idnum{#1}}
\newcommand{\@idnum}{}
\newcommand{\examdate}[1]{\gdef\@examdate{#1}}
\newcommand{\approvaldate}[1]{\gdef\@approvaldate{#1}}
\newcommand{\@examdate}{\number\day~\ifcase\month\or
    Januari\or Februari\or Maret\or April\or Mei\or Juni\or
    Juli\or Agustus\or September\or Oktober\or November\or Desember\fi
    \space \number\year}
\newcommand{\degre}[1]{\gdef\@degre{#1}}
\newcommand{\@degre}{}
\newcommand{\yearsubmit}[1]{\gdef\@yearsubmit{#1}}
\newcommand{\@yearsubmit}{}
\newcommand{\program}[1]{\gdef\@program{#1}}
\newcommand{\@program}{}
\newcommand{\headprogram}[1]{\gdef\@headprogram{#1}}
\newcommand{\@headprogram}{}
\newcommand{\dept}[1]{\gdef\@dept{#1}}
\newcommand{\@dept}{}
\newcommand{\firstsupervisor}[1]{\gdef\@firstsupervisor{#1}}
\newcommand{\@firstsupervisor}{}
\newcommand{\secondsupervisor}[1]{\gdef\@secondsupervisor{#1}}
\newcommand{\@secondsupervisor}{}
\newcommand{\firstnip}[1]{\gdef\@firstnip{#1}}
\newcommand{\@firstnip}{}
\newcommand{\secondnip}[1]{\gdef\@secondnip{#1}}
\newcommand{\@secondnip}{}
\newcommand{\headofdepartment}[1]{\gdef\@headofdepartment{#1}}
\newcommand{\@headofdepartment}{}
\newcommand{\headnip}[1]{\gdef\@headnip{#1}}
\newcommand{\@headnip}{}
\newcommand{\nipnrkfirst}[1]{\gdef\@nipnrkfirst{#1}}
\newcommand{\@nipnrkfirst}{}
\newcommand{\nipnrksecond}[1]{\gdef\@nipnrksecond{#1}}
\newcommand{\@nipnrksecond}{}
\newcommand{\nipnrkhead}[1]{\gdef\@nipnrkhead{#1}}
\newcommand{\@nipnrkhead}{}

%------------------------------------------------------------
% Untuk \if tahap penulisan
%------------------------------------------------------------
\newcommand{\textta}[1]{\gdef\@textta{#1}}
\newcommand{\@textta}{}
\newcommand{\textoncover}[1]{\gdef\@textoncover{#1}}
\newcommand{\@textoncover}{}
\newcommand{\textonapproval}[1]{\gdef\@textonapproval{#1}}
\newcommand{\@textonapproval}{}

%------------------------------------------------------------
%Define sampul in Indonesian
%------------------------------------------------------------
\def\cover{
    \thispagestyle{empty}
    \setcounter{page}{1}
    \begin{center}
        \begin{singlespace}
            \includegraphics[width=21mm]{gambar/itera-logo.png} \\[1.5cm]
            {\normalfont\bfseries
                \fontsize{14pt}{16pt}\selectfont\MakeUppercase{\nobreak \@titleind}\\[1.5cm]
                \MakeUppercase{\@textta}\\[16pt]
                \vfill
                \fontsize{13pt}{16pt}\selectfont{\@fullname}\\
                {NIM \@idnum}\vfill
                \fontsize{14pt}{16pt}\selectfont\MakeUppercase{
                {Program Studi \@program}\\
                {Fakultas \@dept}\\
                {\@university}\\
                {\@city}\\[0.5cm]
                {\@yearsubmit}}}
        \end{singlespace}
    \end{center}
}

%------------------------------------------------------------
%Define halaman judul in Indonesian
%------------------------------------------------------------
\def\coverdalam{
	\addcontentsline{toc}{chapter}{HALAMAN JUDUL}
    \thispagestyle{empty}
    \setcounter{page}{1}
    \begin{center}
        \begin{singlespace}
            \includegraphics[width=21mm]{gambar/itera-logo.png} \\[1.5cm]
            {\normalfont\bfseries
                \fontsize{14pt}{16pt}\selectfont\MakeUppercase{\nobreak \@titleind} \\[1.5cm]
                \MakeUppercase{\@textta}\\
                \@textoncover\vfill
                \fontsize{13pt}{16pt}\selectfont{\@fullname}\\
                {NIM \@idnum}\vfill
                \fontsize{14pt}{16pt}\selectfont\MakeUppercase{
                {Program Studi \@program}\\
                {Fakultas \@dept}\\
                {\@university}\\
                {\@city}\\[0.5cm]
                {\@yearsubmit}}}
        \end{singlespace}
    \end{center}
}

%------------------------------------------------------------
%Approval Page
%------------------------------------------------------------
\def\approvalpage{
    \thispagestyle{plain}
    \chapter*{\approvalname}
    \begin{onehalfspace} \justifying
        \noindent \@textonapproval dengan judul "\textbf{\@titleindinline}" adalah benar dibuat oleh saya sendiri dan belum pernah dibuat dan diserahkan sebelumnya, baik sebagian ataupun seluruhnya, baik oleh saya ataupun orang lain, baik di \@university maupun di institusi pendidikan lainnya. \\
    \end{onehalfspace}
    \begin{singlespace} \RaggedRight
        \@city, \@approvaldate\\
		\begin{minipage}{0.7\textwidth} % Adjust width as needed
		    Penulis, \\[2.5cm]
		    \bfseries \underline{\@fullname \textcolor{white}{,}} \\
		    \bfseries NIM \@idnum \\[1cm]
		\end{minipage}
		\hfill
		\begin{minipage}{0.2\textwidth}
		    \includegraphics[width=\textwidth]{gambar/sample-photo.jpg}
		\end{minipage}
	\begin{onehalfspace}
		\\[0.5cm]
	\end{onehalfspace}
    \end{singlespace}
	
    \Centering Diperiksa dan disetujui oleh,\\[0.5cm]
    \begin{singlespace}
    \begin{tabular}{c c c}
        Pembimbing I & & Pembimbing II \\[2.5cm]
        \bfseries \underline{\@firstsupervisor} & \hspace{1cm} & \bfseries \underline{\@secondsupervisor} \\
        \bfseries \@nipnrkfirst \@firstnip & & \bfseries \@nipnrksecond \@secondnip \\
    \end{tabular} \\[1cm]
    \end{singlespace}
    \ifx \sempro\tahapan \else \fi
    \begin{singlespace} \Centering
        Disahkan oleh,\\
        Koordinator Program Studi \@program \\
        Fakultas \@dept \\
        \@university\\[2.5cm]
        \bfseries \underline{\@headofdepartment} \\
        \bfseries \@nipnrkhead \@headnip
    \end{singlespace}
\addcontentsline{toc}{chapter}{\approvalname}
}

%------------------------------------------------------------
%Acknowlegment
%------------------------------------------------------------
\def\acknowledgment{%
  \chapter*{\acknowledgmentname}%
  \addcontentsline{toc}{chapter}{\acknowledgmentname}
% \null\vfill%Force the content of acknowledment to bottom page
}

%------------------------------------------------------------
%Originality
%------------------------------------------------------------
%\def\originality{%
%  \chapter*{\originalityname}%
%  \addcontentsline{toc}{chapter}{\originalityname}
%%\null\vfill%Force the content of originality to bottom page
%}

%------------------------------------------------------------
%Publication
%------------------------------------------------------------
%\def\publication{%
%	\addcontentsline{toc}{chapter}{\publicationnametoc}
%	\chapter*{\publicationname}%
%%\null\vfill%Force the content of originality to bottom page
%}


%------------------------------------------------------------
%Motto
%------------------------------------------------------------
\def\motto{
    \chapter*{\mottoname}
    \addcontentsline{toc}{chapter}{\mottoname}
}

%------------------------------------------------------------
%Preface
%------------------------------------------------------------
\def\preface{%
	\chapter*{\prefacename}%
	\addcontentsline{toc}{chapter}{\prefacename}
}

%------------------------------------------------------------
%Originality
%------------------------------------------------------------
\def\originalitypage{%
  \chapter*{\originalityname}%
  \addcontentsline{toc}{chapter}{\originalityname}
  \begin{center}
  \begin{doublespace}
  \begin{center}
\textbf{Skripsi ini adalah karya saya sendiri dan semua sumber baik yang dikutip
maupun yang dirujuk telah saya nyatakan benar.}\\
  \end{center}
\vspace{5cm} %need revison? but whatevr

\begin{tabular}{l c l}
\textbf{Nama} & : & \textbf{\@fullname} \\
\textbf{NIM} & : & \textbf{\@idnum} \\
\textbf{Tanda tangan} & : &  \\
\textbf{Tanggal} & : & \textbf{\@approvaldate}
\end{tabular}\\

  \end{doublespace}
  \end{center}

}

%------------------------------------------------------------
%Publication
%------------------------------------------------------------
\def\publicationpage{%
\chapter*{\publicationname}%
\addcontentsline{toc}{chapter}{\publicationnametoc}
\begin{onehalfspacing}
\begin{justify}
Sebagai civitas akademik Institut Teknologi Sumatera, saya yang bertanda tangan di bawah ini:\\

\begin{tabular}{l c l}
Nama & : & \@fullname \\
NIM & : & \@idnum \\
Program Studi & : & \@program \\
Fakultas & : & \@dept \\
Jenis karya & : & Skripsi\\
\end{tabular}\\

\noindent demi pengembangan ilmu pengetahuan, menyetujui untuk memberikan Hak Bebas Royalti Noneksklusif (\emph{Non-Exclusive Royalty Free Right}) kepada Institut Teknologi Sumatera atas karya ilmiah saya yang berjudul:
\end{justify}
\textbf{\@titleind} \\
\begin{justify}
beserta perangkat yang ada (jika diperlukan). Dengan Hak Bebas Royalti Noneksklusif ini Institut Teknologi Sumatera berhak menyimpan, mengalihmedia/format-kan, mengelola dalam bentuk pangkalan data (\emph{database}), merawat, dan memublikasikan tugas akhir saya selama tetap mencantumkan nama saya sebagai penulis/pencipta dan sebagai pemilik Hak Cipta.\\[.3cm]
\noindent Demikian pernyataan ini saya buat dengan sebenarnya.
\end{justify}

\begin{flushright}
\begin{tabular}{l c l}
Dibuat di & : & \@city\\
Pada tanggal & : & \@approvaldate\\
& &\\
\end{tabular}
\\
\vspace{2cm}
Yang menyatakan (\@fullname)
\vspace{5cm}
\end{flushright}
\end{onehalfspacing}

}

%------------------------------------------------------------
%Daftar Singkatan
%------------------------------------------------------------
\def\singkatan{%
  \chapter*{\nomenclaturename}%
  \thispagestyle{plain}
  %\chapter*{\nomenclaturename}%
  %\printglossary
\addcontentsline{toc}{chapter}{\nomenclaturename}
}

%------------------------------------------------------------
%Daftar Simbol
%------------------------------------------------------------
\def\simbol{%
  \chapter*{\symbolname}%
  \thispagestyle{plain}
  %\chapter*{\nomenclaturename}%
  %\printglossary
\addcontentsline{toc}{chapter}{\symbolname}
}

%------------------------------------------------------------
%Redefine Abstract in Indonesian
%------------------------------------------------------------
\selectlanguage{bahasa}
\def\abstractind{%
  \clearpage\thispagestyle{empty}%
  \chapter*{\abstractname}%
  {\parindent \z@ \normalfont % \centering
  %{\large\textbf{\abstractname}} \\
     }
\textbf{\@titleind}  \\
  \begin{singlespacing}%
  \vskip 12\p@
  \@fullname\ (\@idnum) \\
  Pembimbing I: \@firstsupervisor \\
  Pembimbing II:  \@secondsupervisor \\
  \vskip 12\p@
  \addcontentsline{toc}{chapter}{\abstractname}
}
\def\endabstractind{\par\vfil\null\end{singlespacing}}

%------------------------------------------------------------
%Redefine Abstract in English
%------------------------------------------------------------

\def\abstracteng{%
  \clearpage\thispagestyle{empty}\selectlanguage{english}
  \chapter*{\abstractname}%
  {\parindent \z@ \normalfont %\centering
  %{\large\textbf{\abstractname}} \\
    }
\textbfit{\@titleen}  \\
  \begin{singlespacing}%
  \vskip 12\p@
  \@fullname\ (\@idnum) \\
  \textit{Advisor} I : \@firstsupervisor \\
  \textit{Advisor} II:  \@secondsupervisor \\
  \vskip 12\p@
  \addcontentsline{toc}{chapter}{\abstractname}
}
\def\endabstracteng{\par\vfil\null\end{singlespacing}
\selectlanguage{bahasa}}

%------------------------------------------------------------
%Redefine Kata pengantar
%------------------------------------------------------------
%------------------------------------------------------------
%Tabularization
\newcommand{\itab}[1]{\hspace{0em}\rlap{#1}}
\newcommand{\tab}[1]{\hspace{.2\textwidth}\rlap{#1}}


\AtBeginDocument{%
\if@doublesp%
\doublespacing%
\else\if@singlesp%
\singlespacing%
\else
\onehalfspacing%
\fi%
\fi
}

\AtBeginDocument{%
\if@langindo%
\selectlanguage{bahasa}%
\else
\selectlanguage{english}%
\fi
}

\endinput
