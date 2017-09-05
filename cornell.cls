\ProvidesClass{cornell}
\LoadClass[a4paper]{article} 
\usepackage{tcolorbox}
\tcbuselibrary{skins}
\date{}
\usepackage{background}

\SetBgScale{1}
\SetBgAngle{0}
\SetBgColor{red}
\SetBgContents{\rule[0em]{0pt}{\textheight}}
\SetBgHshift{-2.3cm}
\SetBgVshift{0cm}

\usepackage{lipsum}% just to generate filler text for the example
\usepackage[margin=2cm]{geometry}

\usepackage{tikz}
\usepackage{tikzpagenodes}

\parindent=0pt

\usepackage{xparse}
\DeclareDocumentCommand\preread{ m m }
{
    \begin{tcolorbox}[colback=white, width=\textwidth]
    #1
        \tcblower
        #2
    \end{tcolorbox}
}
\DeclareDocumentCommand\topic{ m m g g g g g}
{
    \begin{tcolorbox}[sidebyside,sidebyside align=top,opacityframe=0,opacityback=0,opacitybacktitle=0, opacitytext=1,lefthand width=.3\textwidth]
        \begin{tcolorbox}[colback=red!05,colframe=red!25,sidebyside align=top,width=\textwidth,before skip=0pt]
        #1.\end{tcolorbox}%
        \tcblower
            \begin{tcolorbox}[colback=blue!05,colframe=blue!10,width=\textwidth,before skip=0pt]
            #2
            \end{tcolorbox}
            \IfNoValueF {#3}{
                \begin{tcolorbox}[colback=blue!05,colframe=blue!10,width=\textwidth]
                #3
                \end{tcolorbox}
            }
            \IfNoValueF {#4}{
                \begin{tcolorbox}[colback=blue!05,colframe=blue!10,width=\textwidth]
                #4
                \end{tcolorbox}
            }
            \IfNoValueF {#5}{
                \begin{tcolorbox}[colback=blue!05,colframe=blue!10,width=\textwidth]
                #5
                \end{tcolorbox}
            }
            \IfNoValueF {#6}{
                \begin{tcolorbox}[colback=blue!05,colframe=blue!10,width=\textwidth]
                #6
                \end{tcolorbox}
            }
            \IfNoValueF {#7}{
                \begin{tcolorbox}[colback=blue!05,colframe=blue!10,width=\textwidth]
                #7
                \end{tcolorbox}
            }
    \end{tcolorbox}
}

\def\summary#1{
\begin{tikzpicture}[overlay,remember picture,inner sep=0pt, outer sep=0pt]
\node[anchor=south,yshift=-1ex] at (current page text area.south) {% 
\begin{minipage}{\textwidth}%%%%
\begin{tcolorbox}[colframe=white,opacityback=0]
\begin{tcolorbox}[enhanced,colframe=black,fonttitle=\large\bfseries\sffamily,sidebyside=true, nobeforeafter,before=\vfil,after=\vfil,colupper=black,sidebyside align=top, lefthand width=.95\textwidth,opacitybacktitle=1, opacitytext=1,
segmentation style={black!55,solid,opacity=0,line width=3pt},
title=Summary
]
#1
\end{tcolorbox}
\end{tcolorbox}
\end{minipage}
};
\end{tikzpicture}
}

\usepackage{xparse}
\DeclareDocumentCommand\insight{ m }
{
    \begin{tcolorbox}[colback=white, width=\textwidth]
    #1
    \end{tcolorbox}
}