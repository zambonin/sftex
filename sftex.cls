\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{sftex}[2017/12/28 straightforward-tex]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

\LoadClass{article}

\RequirePackage[brazil]{babel}
\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}

\RequirePackage[a4paper, margin=1.5cm]{geometry}
\RequirePackage[colorlinks, urlcolor=blue, citecolor=red]{hyperref}

\RequirePackage{color}
\RequirePackage{listings}

\newcommand*{\email}[1]{\gdef\@email{#1}}
\newcommand*{\@email}{\string\email}

\newcommand*{\src}[1]{\gdef\@src{#1}}
\newcommand*{\@src}{https://example.org/}

\newcommand*{\uniclass}[1]{\gdef\@uniclass{#1}}
\newcommand*{\@uniclass}{\string\uniclass}

\newcommand*{\classcode}[1]{\gdef\@classcode{#1}}
\newcommand*{\@classcode}{\string\classcode}

\def\blfootnote{\gdef\@thefnmark{}\@footnotetext}

\renewcommand*{\maketitle}{
\newpage
  \null
  \vskip 2em
  \begin{center}
  \let \footnote \thanks
    {\LARGE \textbf \@title \par}
    \vskip 1.5em
    {\large
      \lineskip .5em
      \begin{tabular}[t]{c}
        \@author
      \end{tabular}\par}
    \vskip 0.25em
    {\small \@uniclass \, (\@classcode)}
    %\vskip 1em
    %{\large \@date}
  \end{center}
  \par
  \blfootnote{\texttt{\hfill \@email \hfill \href{\@src}{src/}}}
  \vskip 1.5em
}

\definecolor{codegreen}{rgb}{0, 0.6, 0}
\definecolor{codegray}{rgb}{0.5, 0.5, 0.5}
\definecolor{codepurple}{rgb}{0.58, 0, 0.82}

\lstset{
  basicstyle=\footnotesize\ttfamily,
  breaklines=true,
  commentstyle=\color{codegreen},
  extendedchars=true,
  keywordstyle=\color{blue},
  numbers=left,
  numberstyle=\tiny\color{codegray},
  showstringspaces=false,
  stringstyle=\color{codepurple}
}

\endinput
