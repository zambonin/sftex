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
\endinput
