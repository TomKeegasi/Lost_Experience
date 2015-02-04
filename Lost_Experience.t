#charset "iso-8859-1"

#include <tads.h>
#include <advlite.h>


/* 
 *
 */
versionInfo: GameID {
	IFID				= '79CDE520-AEF6-4AC0-B851-BFB89B023BFB'
	name				= 'Lost Experience'
	headline			= '!!!'
	desc				= '!!!'
	htmlDesc			= '!!!'
	authorEmail			= 'Tom Keegasi <TomKeegasi+LEIF@googlemail.com>'
	byline				= 'by Tom Keegasi'
	htmlByline			= 'by <a href="mailto:TomKeegasi+LEIF@googlemail.com">Tom Keegasi</a>'
	url					= '!!!'
	version				= 'v0.1'
	forgivenessLevel	= 'Merciful'
	firstPublished		= '2015'
	releaseDate			= '2015-02-04'
	languageCode		= 'en-GB'
	presentationProfile	= 'Multimedia'
	licenseType			= 'Freeware'
	CopyingRules		= 'No-Cost Only; Compilations Allowed'
	
	showCredit() {
		"<div align='center'>Geschichte wurde erdacht und programmiert von Tom Keegasi.</br>
		Angelehnt an <a href='http://www.scp-wiki.net/the-black-queen' target='_blank'>The Black Queen</a> von Dr. Gears.</br>
		Programmiert mit TADS Workbench in TADS3.</div></br>";
	}
	
	showAbout() {
		"<a href='http://www.geocaching.com/seek/cache_details.aspx?guid=!!!' target='_blank'>Geocache</a></br>
		<div align='center'><a href='http://de.wikipedia.org/wiki/Geocaching' target='_blank'>Was ist Geocaching?</a></br>
		<a href='http://de.wikipedia.org/wiki/Interactive_Fiction' target='_blank'>Was ist Interactive-Fiction?</a></div>";
	}
}


/*
 *
 */
gameMain: GameMainDef {
    initialPlayerChar = playerCharacter

    showIntro() {
        "!!!";
    }

    showGoodbye() {
		if  (a < b) then 
		
		end
		<< >>
		< >
        " < Test > << var.Method() >> <<!!!>></br>
        <a href='http://ifdb.tads.org/viewgame?id=ju778uv5xaswnlpl' target='_blank'>Photopia</a>";
    }
}



playerCharacter: Actor 
    location = toilet
;



/*
 *
 */
toilet: Room {
	roomTitle = 'Toilet'
	vocab = 'Toilet'
	desc = "Toilet"
}

+toilette: Fixture, Chair {
    vocab = 'Toilet'
    desc = "Toilet"
}