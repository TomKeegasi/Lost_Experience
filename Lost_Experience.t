#charset "iso-8859-1"

#include <adv3.h>
#include <de_de.h>


versionInfo: GameID {
    IFID                = ' !!! '
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
    initialPlayerChar = pc

    showIntro() {
        "!!!</br></br>";
    }

    showGoodbye() {
        "!!!</br>
        Weitere IF Empfehlung: <a href='http://ifdb.tads.org/viewgame?id=ju778uv5xaswnlpl' target='_blank'>Photopia</a>";
    }
}


pc: Actor {
    location = office
}


office: Room 'Büro' 'Büro' 
    "Büro"
;

+Stuhl: Chair 'Stuhl' 'Stuhl'
    "Stuhl"
;

+Steckdose: Fixture 'Steckdose' 'Steckdose'
    "Steckdose"
;

+Tuer: Fixture 'Tür' 'Tür'
    "Tür"
;

+Schreibtisch: Immovable 'Schreibtisch' 'Schreibtisch'
    "Schreitisch"
;

++Computer: Immovable 'Computer' 'Computer'
    "Computer"
;

++Monitor: Immovable 'Monitor' 'Monitor'
    "Monitor"
;

++Tastatur: Immovable 'Tastatur' 'Tastatur'
    "Tastatur"
;

++Maus: Immovable 'Maus' 'Maus'
    "Maus"
;

++Tischlampe: Immovable 'Tischlampe' 'Tischlampe'
    "Tischlampe"
;

++Bilderrahmen: Decoration 'Bilderrahmen' 'Bilderrahmen'
    "Bilderrahmen"
;

+++Bild: Component 'Bild' 'Bild'
    "Bild"
;

++Papierstapel: Decoration 'Papierstapel' 'Papierstapel'
    "Papierstapel"
;

+++Akten: Component 'Akten' 'Akten'
    "Akten"
;