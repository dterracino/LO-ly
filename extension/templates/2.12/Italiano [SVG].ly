#(ly:set-option (quote no-point-and-click)) 
  % Remove or comment out this command above if you use an external editor 
  % that supports point-and-click
                                              
\include "italiano.ly"
\transpose %{OOoLilyPondCustom1%}do do'%{OOoLilyPondEnd%}
{
%{OOoLilyPondCode%}% For getting started read (copy URL into your web browser):
% http://ooolilypond.sourceforge.net
% English:
% http://lilypond.org/doc/v2.12/Documentation/user/lilypond-learning/Simple-notation
% Deutsch:
% http://lilypond.org/doc/v2.12/Documentation/user/lilypond-learning/Simple-notation.de.html
% Français:
% http://lilypond.org/doc/v2.12/Documentation/user/lilypond-learning/Simple-notation.fr.html
% Español:
% http://lilypond.org/doc/v2.12/Documentation/user/lilypond-learning/Simple-notation.es.html

\key mi \major mi8 fad sold mi fad si,4. | mi2\fermata \bar "|."%{OOoLilyPondEnd%}
}

% -------------------------------------------------------

#(set-global-staff-size %{OOoLilyPondStaffSize%}20%{OOoLilyPondEnd%})
#(define version-seen #t)  % nicht entfernen, denn
% die Warnung über eine fehlende Versionsangabe hat ein leicht anderes Format,
% das OLy beim Verarbeiten der Fehlermeldungen durcheinanderbringen würde.


\paper {
  #(define dump-extents #t)
  paper-width  = %{OOoLilyPondLineWidth%}17\cm%{OOoLilyPondEnd%}
  paper-height = %{OOoLilyPondCustom2%}6\cm%{OOoLilyPondEnd%}
  indent = #0
  short-indent = \indent
  ragged-right = ##t
  
  left-margin   = 0
  right-margin  = 0
  top-margin    = 0
  bottom-margin = 0
  print-page-number = ##f
  
  page-count = 1
  
  % Wenn die Standard-Text-Schriftart von LilyPond auf Ihrem System nicht installiert ist, 
  % und deshalb für andere Programme "unsichtbar" ist, 
  % können Sie hier eine andere Schriftart als Ersatz angeben:

  % {
  % für LilyPond 2.19.11 und ältere Versionen funktioniert es nur so:
  #(define fonts
     (make-pango-font-tree
      "Century Schoolbook L"	; hier den Namen der Schriftart eingeben, die Sie 
                                ; auf Ihrem System verwenden möchten
      "sans-serif"
      "monospace"
      (/ staff-height pt 20)))
  %}

  %{
  % für LilyPond 2.19.12 und neuere Versionen können Sie auch das folgende anpassen:
  #(define fonts
    (set-global-fonts
      #:music "emmentaler"
      #:brace "emmentaler"
      #:roman "Century Schoolbook L"	; hier den Namen der Schriftart eingeben, die Sie 
                                        ; auf Ihrem System verwenden möchten
      #:sans "sans-serif"
      #:typewriter "monospace"
      #:factor (/ staff-height pt 20)
  ))
  % gefunden auf http://lilypondblog.org/2015/03/managing-alternative-fonts-with-lilypond/

  %}
}

\header {
  tagline = ##f
}

\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}
