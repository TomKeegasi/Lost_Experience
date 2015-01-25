#charset "iso-8859-1"

#include <tads.h>
#include "advlite.h"


versionInfo: GameID {
    IFID                = '79CDE520-AEF6-4AC0-B851-BFB89B023BFB'
    name                = 'Lost Experience'
    byline              = 'by Tom Keegasi'
    htmlByline          = 'by <a href="mailto:tomkeegasi+dtrh@googlemail.com">Tom Keegasi</a>'
    version             = '0.1'
    authorEmail         = 'Tom Keegasi <tomkeegasi+leif@googlemail.com>'
    desc                = ' !!! '
    htmlDesc            = ' !!! '
    firstPublished      = '2014'
    languageCode        = 'en-EN'
    licenseType         = 'Freeware'

    showCredit() {
        "<div align='center'>Geschichte wurde erdacht und programmiert von Tom Keegasi.</br>
        Angelehnt an <a href='http://www.scp-wiki.net/the-black-queen' target='_blank'>The Black Queen</a> von Dr. Gears.</br>
        Programmiert mit TADS Workbench in TADS3.</div></br>";
    }
    
    showAbout() {
        "Diese Geschichte dient als Puzzle-Challenge zu einem Bonus 
        <a href='http://www.geocaching.com/seek/cache_details.aspx?guid=!!!' target='_blank'>Geocache</a> 
        und als kleine Einführung in die Interactive-Fiction Literatur.</br>
        <div align='center'><a href='http://de.wikipedia.org/wiki/Geocaching' target='_blank'>Was ist Geocaching?</a></br>
        <a href='http://de.wikipedia.org/wiki/Interactive_Fiction' target='_blank'>Was ist Interactive-Fiction?</a></div>";
    }
}


gameMain: GameMainDef {
    initialPlayerChar = playerCharacter

    showIntro() {
        "!!!</br></br>";
    }

    showGoodbye() {
        "!!!</br>
        Weitere IF Empfehlung: <a href='http://ifdb.tads.org/viewgame?id=ju778uv5xaswnlpl' target='_blank'>Photopia</a>";
    }
}



playerCharacter: Actor 
    location = office
;


office: Room 'Büro' 'Büro' 
    "Büro"
;

+stuhl: Chair 'Stuhl' 'Stuhl'
    "Stuhl"
;

+steckdose: Fixture 'Steckdose' 'Steckdose'
    "Steckdose"
;

+tuerOffice: Fixture 'Tür' 'Tür'
    "Tür"
;

+schreibtisch: Immovable 'Schreibtisch' 'Schreibtisch'
    "Schreitisch"
;

++computer: Immovable 'Computer' 'Computer'
    "Computer"
;

++monitor: Immovable 'Monitor' 'Monitor'
    "Monitor"
;

++tastatur: Immovable 'Tastatur' 'Tastatur'
    "Tastatur"
;

++maus: Immovable 'Maus' 'Maus'
    "Maus"
;

++tischlampe: Immovable 'Tischlampe' 'Tischlampe'
    "Tischlampe"
;

++bild: Thing 'Bild' 'Bild'
    "Bild"
;

++papierstapel: Decoration 'Papierstapel' 'Papierstapel'
    "Papierstapel"
;


/*
 *
 */
toilet: Room {
	roomTitle	= 'Toilet'
	vocab		= 'Toilet'
	desc		= "{You/he} Toilet"
}

+wallet: Thing, Container {
	name			= '(small) brassy object'
	vocab			= 'small brassy object'
	desc			= "On the obverse is the head of King Freddie the Fat, and on the reverse is stamped ONE GROAT. "  
	initSpecialDesc	= "A small brassy object lies on the ground in a dim corner of the cave. " 
	initDesc 		= "It looks like it might be a coin of some sort. " 
	dobjFor(Examine) { 
		action() { 
			inherited; 
			changeName(); 
		} 
	} 
	changeName() { 
		name = 'small brass coin'; 
		cmdDict.removeWord(self, 'object', &noun); 
		initializeVocabWith('brass coin/groat*coins'); 
	}  
}


brassKey : Hidden, Key 'small brass key' 'brass key' @roundCave 
  "It<<isBent ? ' looks slightly bent' : '\'s been straightened'>>. " 
  isBent = true 
; 

rug : Immovable 'large rectangular chinese rug/pattern/leaves/dragons' 'Chinese rug' 
   @roundCave 
  "The rectangular rug is patterned in pastel colours, mainly turquoise round the 
   edge and principally golds and browns within. The patterns consists mainly 
   of leaves and dragons. " 
  initSpecialDesc = "A Chinese rug covers the centre of the floor. " 
  specialDesc = "The Chinese rug has been pulled over to one side of the cave. " 
  cannotTakeMsg = 'You probably could roll the carpet up and drag it around, 
    but you don\'t want to be encumbered with it. ' 
  dobjFor(Pull) 
  { 
    action() 
    { 
      if(moved) 
        "You can't pull the rug any further, it's already at the edge of the cave. "; 
      else 
      { 
        "Pulling the rug over to the edge of the cave reveals a square hole in the floor. "; 
        moved = true; 
      } 
    } 
  } 
  actionDobjLookUnder() 
  { 
    if(brassKey.discovered) 
      "{You/he} find{s} nothing else under the rug. "; 
    else 
    { 
      "Under the rug {you/he} find{s} a small brass key. "; 
      brassKey.discover(); 
      addToScore(1, 'finding the brass key '); 
    } 
  } 
; 

+toilette: Fixture 'Toilette' 'Toilette'
    "Toilette"
;

++duftspender: Thing 'Duftspender' 'Duftspender'
    "Duftspender"
;

+spiegelschrank: Fixture, OpenableContainer 'Spiegel' 'Spiegel'
    "Spiegel"
;

+waschbecken: Fixture 'Waschbecken' 'Waschbecken'
    "Waschbecken"
;

++wasserhahn: Fixture 'Wasserhahn' 'Wasserhahn'
    "Wasserhahn"
;
    
+tuerWC: Fixture 'Tür' 'Tür'
    "Tür"
;

+schalter: Fixture 'Lichtschalter' 'Lichtschalter'
    "Lichtschalter"
;

+deckenlampe: Fixture 'Deckenlampe' 'Deckenlampe'
    "Deckenlampe"
;

+luftschacht: Fixture 'Luftschacht' 'Luftschacht'
    "Luftschacht"
;