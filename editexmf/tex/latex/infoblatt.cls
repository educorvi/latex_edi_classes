\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{infoblatt}
 \LoadClassWithOptions{scrartcl}

\RequirePackage{eso-pic} 
\RequirePackage[ngerman]{babel} 
\RequirePackage{blindtext} 
\RequirePackage{graphicx}
\RequirePackage{adjustbox}
\RequirePackage[absolute]{textpos}
\RequirePackage{scrlayer-scrpage} 
\RequirePackage[scaled]{helvet}	
\RequirePackage[T1]{fontenc}
\renewcommand\familydefault{\sfdefault}

\pagestyle{scrheadings}			%Pagestyle festlegen
\clearpairofpagestyles			%Innen/Mitte/Au�en der Fu�/-Kopfzeile leeren

\chead{\pagemark}
 \thispagestyle{empty}

\newcommand{\doctitel}[1]{			
\begin{textblock*}{100mm}(19mm,20mm) 
\noindent
\Huge{\textbf{\textcolor{lightgray}{{#1}}}}
\end{textblock*}
}

\newcommand{\stand}[1]{			%fusszeile als Textblock da so am besten umsetzbar
\begin{textblock*}{30mm}(19mm,45mm) %boxbreite, koordinaten der box mit oben links als 0/0
\noindent
\begin{itemize}
 \renewcommand{\labelitemi}{\scriptsize$\blacksquare$}
 \item\small Stand {#1} 
\end{itemize}
\end{textblock*}
}

\newcommand{\fachgebiet}[1]{			
\begin{textblock*}{35mm}(157.5mm,28mm) 
\noindent
\normalsize{\textbf{\textcolor{gray}{{#1}}}}
\end{textblock*}
}

\newcommand{\bestellnummer}[1]{			
\begin{textblock*}{30mm}(157.5mm,45mm) 
\noindent
\begin{itemize}
 \renewcommand{\labelitemi}{\scriptsize$\blacksquare$}
 \item\small Info-Nr. {#1}
\end{itemize}
\end{textblock*}
}

\newcommand{\fusszeile}{	
\begin{textblock*}{160mm}(25mm,260mm) 
\noindent
\small{\begin{center}Berufsgenossenschaft Energie Textil Elektro Medienerzeugnisse, www.bgetem.de\\
Medienbestellung Wiesbaden, Tel. (0611) 131-8221, Fax:(0611) 131-8222, email: medien.dp@bgetem.de\end{center}}
\end{textblock*}
}



\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax\RequirePackage{xcolor}

\newcommand*{\Logo}{\includegraphics[width=5.5cm,height=2cm]{$HOME/latex_edi_classes/images/logo.png}} 
\AddToShipoutPicture{% 
	\AtPageUpperLeft{% 
		\makebox(\LenToUnit\paperwidth,0)[r]{% rechtsorientiert(r)
     			\raisebox{-\totalheight}[3,35cm]{% Einr�ckung von oben(3,6)
				   \lapbox[\width]{-1,9cm}{\Logo}% Einr�ckung von rechts(-1,8)
			}% 		
	}% 
}% 
} 