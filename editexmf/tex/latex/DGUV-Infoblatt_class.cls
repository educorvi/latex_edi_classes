\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{DGUV-Infoblatt}[2019/6/26]

\LoadClass[a4paper]{scrartcl}

\RequirePackage{xltxtra}
\RequirePackage{eso-pic,lipsum}
\RequirePackage{graphicx} 


\RequirePackage[left=20mm, right=15mm, top=55mm, bottom=40mm]{geometry} %Seitenabstände


\RequirePackage{textcomp}					%Textblöcke Fusszeile
\RequirePackage[absolute]{textpos}				%Textblöcke Fusszeile, Pos. (abh. von Schriftart)

\RequirePackage[utf8x]{inputenc}				%direktes Einbinden von Umlauten
\RequirePackage[english, ngerman]{babel}		%Deutsch=primäre Sprache, Englisch optional ( wichtig 											für Darstellung eines Datums o.ä.)
\RequirePackage[scaled]{helvet}				%aktivieren, falls Helvetica verwendet werden soll


\RequirePackage{hyperref}					%für die Email-Adresse

\RequirePackage{scrpage2}					%Seitenzahl unten rechts

\pagestyle{scrheadings}						%Seitenummerierung in der Fusszeile
\clearscrheadings
\ofoot{\pagemark}

\RequirePackage{xcolor}						%Schrift einfärben

\DeclareOption{DGUVSchrift}{					%DGUV Schriftart
\setmainfont{DGUV Meta}
}


\DeclareOption{HelveticaSchrift}{
\setmainfont{Helvetica}			%Helvetica Schriftart	
}


\DeclareOption{BGETEM}{
\AddToShipoutPictureBG{%
\put(390,740){\includegraphics[width=6cm]{BGETEM_vektor.eps}} 	%Logo oben rechts
}
}


\DeclareOption{DGUVTest}{
\AddToShipoutPictureBG{%
\put(390,740){\includegraphics[width=6cm]{DGUV_Test_vektor.eps}} 	%Logo oben rechts
}
}


\DeclareOption{DPI-Fz}{
\AddToShipoutPictureBG{%
\put(56,100){\line(1,0){500}}					% untere Linie

\put(56,80){\parbox[t]{50mm}{\scriptsize{\noindent	%Fusseile 1/4
Berufsgenossenschaft\\
Energie Textil Elektro Medienerzeugnisse\\
\\										%leere Zeile
Gesetzliche Unfallversicherung\\
K\"orperschaft des \"offentlichen Rechts}}}

\put(210,80){\parbox[t]{50mm}{\scriptsize{\noindent	%Fusszeile 2/4	
Rheinstrasse 6-8\\
65185 Wiesbaden\\
Telefon 0611/131-0\\
Telefax 0611/131-8222\\
Email \href{mailto:info@bgetem.de}{info@bgetem.de} 
}}}

\put(300,80){\parbox[t]{50mm}{\scriptsize{\noindent	%Fusszeile 3/4
Nassauische Sparkasse Wiesbaden\\
(BLZ 510 500 15) 100 007 630\\
IBAN DE50 5105 0015 0100 0076 30\\
BIC/SWIFT NASSDE55XXX}}}

\put(440,80){\parbox[t]{50mm}{\scriptsize{\noindent	%Fusszeile 4/4
IK-Nr. 12069066 4\\
Betriebsnummer\\
48626018\\
www.bgetem.de}}}
}
\AddToShipoutPictureBG*{
\put(56,600){\line(1,0){500}} 									% obere Linie erste()=Steigung(x;y); zweite()=Länge in pt
}
}


\DeclareOption{DPPI-Fz}{
\AddToShipoutPictureBG{
\put(56,100){\line(1,0){500}}									% untere Linie

\put(0,90){\parbox[t]{210mm}{\normalsize{\textcolor{gray}{\begin{center}	%Fusseile 
\noindent
Pr\"uf- und Zertifizierungsstelle Druck und Papierverarbeitung, 65173 Wiesbaden\\
Tel.(0611)1 31-82 19, Fax (06 11) 1 31-81 55, email: pruefstelle-dp@bgetem.de,\\
www.bgetem.de/pruefstelle-dp
\end{center}}}}}
}
\AddToShipoutPictureBG*{
\put(56,600){\line(1,0){500}} 									% obere Linie erste()=Steigung(x;y); zweite()=Länge in pt
}
}


\DeclareOption{Stand}{
\AddToShipoutPictureBG*{
\put(56,680){Stand: xx/xxxx}
}
}


\DeclareOption{WebcodeDPI}{
\AddToShipoutPictureBG*{
\put(465,680){Webcode: 12345678}
}
}


\DeclareOption{WebcodeDPPI}{
\AddToShipoutPictureBG*{
\put(465,668){Webcode: 12345678}
}
}


\DeclareOption{Info-Nr}{
\AddToShipoutPictureBG*{
\put(497,680){Info-Nr.: xxx}
}
}

\DeclareOption{UES}{
\AddToShipoutPictureBG*{
\put(56,750){\textbf{\huge DP-Info}}
}
}


\DeclareOption{DPIL}{		%Logo, Logozusatz, WebcodeDPI, Stand, beide Linien, Fußzeile
\AddToShipoutPictureBG{

\put(390,740){\includegraphics[width=6cm]{BGETEM_vektor.eps}}	%Logo oben rechts

\put(441,752){\parbox[t]{40mm}{{\textbf{\normalsize{\begin{flushleft}\noindent	%Logozusatz
Fachkompetenz Druck und Papierverarbeitung\end{flushleft}}}}}}

\put(56,100){\line(1,0){500}}					% untere Linie

\put(56,80){\parbox[t]{50mm}{\scriptsize{\noindent	%Fusseile 1/4
Berufsgenossenschaft\\
Energie Textil Elektro Medienerzeugnisse\\
\\										%leere Zeile
Gesetzliche Unfallversicherung\\
K\"orperschaft des \"offentlichen Rechts}}}

\put(210,80){\parbox[t]{50mm}{\scriptsize{\noindent	%Fusszeile 2/4	
Rheinstrasse 6-8\\
65185 Wiesbaden\\
Telefon 0611/131-0\\
Telefax 0611/131-8222\\
Email \href{mailto:info@bgetem.de}{info@bgetem.de} 
}}}

\put(300,80){\parbox[t]{50mm}{\scriptsize{\noindent	%Fusszeile 3/4
Nassauische Sparkasse Wiesbaden\\
(BLZ 510 500 15) 100 007 630\\
IBAN DE50 5105 0015 0100 0076 30\\
BIC/SWIFT NASSDE55XXX}}}

\put(440,80){\parbox[t]{50mm}{\scriptsize{\noindent	%Fusszeile 4/4
IK-Nr. 12069066 4\\
Betriebsnummer\\
48626018\\
www.bgetem.de}}}
}

\AddToShipoutPictureBG*{

\put(56,680){Stand: xx/xxxx}				%Stand
\put(460,680){Webcode: 12345678}			%Webcode
\put(56,750){\textbf{\huge DP-Info}}			%Überschrift
\put(56,600){\line(1,0){500}} 				% obere Linie erste()=Steigung(x;y); zweite()=Länge in pt

}
}


\DeclareOption{DPPIL}{		%Logo, WebcodeDPPI, Stand, Info-Nr, beide Linien, Fußzeile
\AddToShipoutPictureBG{%

\put(390,740){\includegraphics[width=6cm]{DGUV_Test_vektor.eps}} 	%Logo
\put(56,100){\line(1,0){500}}									% untere Linie

\put(0,90){\parbox[t]{210mm}{\normalsize{\textcolor{gray}{\begin{center}	%Fusseile 
\noindent
Pr\"uf- und Zertifizierungsstelle Druck und Papierverarbeitung, 65173 Wiesbaden\\
Tel.(0611)1 31-82 19, Fax (06 11) 1 31-81 55, email: pruefstelle-dp@bgetem.de,\\
www.bgetem.de/pruefstelle-dp
\end{center}}}}}
}
\AddToShipoutPictureBG*{

\put(56,680){Stand: xx/xxxx}
\put(492,680){Info-Nr.: xxx}				%Info-Nr
\put(460,668){Webcode: 12345678}			%WebcodeDPPI
\put(56,750){\textbf{\huge DP-Info}}			%Überschrift
\put(56,600){\line(1,0){500}} 				% obere Linie erste()=Steigung(x;y); zweite()=Länge in pt
}
}

\ProcessOptions

