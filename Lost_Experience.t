#charset "iso-8859-1"

#include <adv3.h>
#include <de_de.h>


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
    languageCode        = 'de-DE'
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

wc: Room 'WC' 'WC' 
    "WC"
;

+portemonnaie: Thing, Container 'Portemonnaie' 'Portemonnaie'
    "Portemonnaie"
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