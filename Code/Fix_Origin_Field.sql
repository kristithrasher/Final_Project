/*
select PERSON_ID, ORIGIN, origin2
		--, strpos(ORIGIN, 'NY')
		--, substring(origin, 1, strpos(ORIGIN, 'NY')-1) || 'New York'
		--,substring(origin, 1, length(origin)-2) || 'California'
		from person where 
	
	--origin LIKE '%TN%' AND ORIGIN2 IS NULL;
	
	--UPPER(origin) LIKE '%BRAND%' OR UPPER(origin) LIKE '%HKG%'
	--'%P%CHINA%' OR UPPER(origin) LIKE 'BE%CHINA'--OR UPPER(origin) LIKE '%ANN%' AND
	 ORIGIN2 IS NULL

OR upper(origin) like '%E%, TN%'

Brunswick, Maine

select count(*) from person where origin2 is null

*/
---------

UPDATE person
SET origin2 = 'Chicago, Illinois'
WHERE UPPER(origin) LIKE '%CHICAGO%';

UPDATE person
SET origin2 = 'Montgomery, Alabama'
WHERE UPPER(origin) LIKE 'ALABAMA%';

UPDATE person
SET origin2 = origin
WHERE UPPER(origin) LIKE '%, ALABAMA%';

UPDATE person
SET origin2 = 'Hartford, Connecticut'
WHERE UPPER(origin) LIKE '%CONNEC%';

UPDATE person
SET origin2 = substring(origin, 1, length(origin)-2) || 'Connecticut'
WHERE UPPER(origin) LIKE '%, CT';

UPDATE person
SET origin2 = 'Austin, Texas'
WHERE UPPER(origin) LIKE 'TEXAS%';

UPDATE person
SET origin2 = 'Austin, Texas'
WHERE UPPER(origin) LIKE '%TX%' ;

UPDATE person
SET origin2 = 'Annapolis, Maryland'
WHERE UPPER(origin) LIKE '%MARY%' OR UPPER(origin) LIKE 'MD';

UPDATE person
SET origin2 = origin
WHERE UPPER(origin) LIKE '%, MD';

UPDATE person
SET origin2 = 'Sacramento, California'
WHERE UPPER(origin) LIKE 'CALIFORNIA';

UPDATE person
SET origin2 = origin
WHERE UPPER(origin) LIKE '%, CALIFORNIA%';

UPDATE person
SET origin2 = 'Sacramento, California'
WHERE UPPER(origin) LIKE '%CALIFORNIA%' AND origin2 IS null ;

UPDATE person
SET origin2 = 'New York, New York'
WHERE UPPER(origin) LIKE '%NEW%YORK%CITY%' OR UPPER(origin) LIKE '%NYC%' ;

UPDATE person
SET origin2 = 'Albany, New York'
WHERE UPPER(origin) LIKE 'NEW%YORK';

UPDATE person
SET origin2 = 'New York, New York'
WHERE UPPER(origin) LIKE '%NEW%YOR%NY%' ;

UPDATE person
SET origin2 = 'Albany, New York'
WHERE UPPER(origin) LIKE 'NEW%YO%' AND origin2 IS NULL ;

UPDATE person
SET origin2 = 'Westchester, New York'
WHERE UPPER(origin) LIKE 'W%NEW%YO%' ;

UPDATE person
SET origin2 = 'Albany, New York'
WHERE UPPER(origin) LIKE 'U%NEW%YO%';

UPDATE person
SET origin2 = 'Cincinnati, Ohio'
WHERE UPPER(origin) LIKE '%CIN%';

UPDATE person
SET origin2 = 'Columbus, Ohio'
WHERE UPPER(origin) LIKE '%OH%' AND ORIGIN2 IS NULL;

UPDATE person
SET origin2 = 'Miami, Florida'
WHERE UPPER(origin) LIKE '%MIAMI%';

UPDATE person
SET origin2 = 'Tallahassee, Florida'
WHERE UPPER(origin) LIKE 'FL%';

UPDATE person
SET origin2 = 'Trenton, New Jersey'
WHERE UPPER(origin) LIKE 'NEW%JERSEY' AND ORIGIN2 IS NULL;

UPDATE person
SET origin2 = 'Trenton, New Jersey'
WHERE UPPER(origin) LIKE 'NJ%' ;

UPDATE person
SET origin2 = 'Washington, District of Columbia'
WHERE UPPER(origin) LIKE '%WASH%D%' OR UPPER(origin) LIKE '%DC%' ;

UPDATE person
SET origin2 = 'Olympia, Washington'
WHERE UPPER(origin) LIKE '%WASH%ST%';

UPDATE person
SET origin2 = 'Atlanta, Georgia'
WHERE UPPER(origin) LIKE '%GEOR%' OR UPPER(origin) LIKE '%GA' OR UPPER(origin) LIKE '%ATLANT%';

UPDATE person
SET origin2 = 'Ann Arbor, Michigan'
--WHERE UPPER(origin) LIKE '%, MI';
WHERE UPPER(origin) LIKE '%, MI' OR UPPER(origin) LIKE '%ANN%';

UPDATE person
SET origin2 = 'Lansing, Michigan'
WHERE UPPER(origin) LIKE '%MICHIGAN';

UPDATE person
SET origin2 = 'Detroit, Michigan'
WHERE UPPER(origin) LIKE '%DETRO%';

UPDATE person
SET origin2 = origin
WHERE UPPER(origin) LIKE '%NM%';

UPDATE person
SET origin2 = substring(origin, 1, strpos(ORIGIN, 'NY')-1) || 'New York'
WHERE origin LIKE '%, NY%' AND ORIGIN2 IS NULL;

UPDATE person
SET origin2 = 'Brooklyn, New York'
WHERE UPPER(origin) LIKE '%BROO%' AND ORIGIN2 IS NULL;

UPDATE person
SET origin2 = 'Boston, Massachusetts'
WHERE UPPER(origin) LIKE '%BOS%' AND ORIGIN2 IS NULL;

UPDATE person
SET origin2 = 'Los Angeles, California'
WHERE UPPER(origin) LIKE 'LOS%' AND ORIGIN2 IS NULL;

UPDATE person
SET origin2 = substring(origin, 1, length(origin)-2) || 'California'
WHERE UPPER(origin) LIKE '%, CA' AND origin NOT LIKE 'SF%' AND ORIGIN2 IS NULL;

UPDATE person
SET origin2 = 'San Francisco, California'
WHERE (UPPER(origin) LIKE 'SF%' OR UPPER(origin) LIKE 'SAN%FRAN%' OR UPPER(origin) LIKE '%94115%')
AND ORIGIN2 IS NULL;

UPDATE person
SET origin2 = 'Des Moines, Iowa'
WHERE UPPER(origin) LIKE '%IOWA%';

UPDATE person
SET origin2 = 'Saint Louis, Missouri'
WHERE UPPER(origin) LIKE '%LOUIS, %';

UPDATE person
SET origin2 = substring(origin, 1, length(origin)-2) || 'Pennsylvania'
WHERE UPPER(origin) LIKE '%, PA%';

UPDATE person
SET origin2 = 'Harrisburg, Pennsylvania'
WHERE UPPER(origin) = 'PA' OR UPPER(origin) LIKE '%PENN%';

UPDATE person
SET origin2 = 'Saint Paul, Minnesota'
WHERE UPPER(origin) LIKE '%MINNES%';

UPDATE person
SET origin2 = 'Minneapolis, Minnesota'
WHERE UPPER(origin) LIKE '%MINNEA%';

UPDATE person
SET origin2 = 'Houston, Texas'
WHERE UPPER(origin) LIKE '%HOUS%';

UPDATE person
SET origin2 = 'Philadelphia, Pennsylvania'
WHERE UPPER(origin) LIKE 'PHILA%' AND ORIGIN2 IS NULL;

UPDATE person
SET origin2 = 'Albany, New York'
WHERE UPPER(origin) LIKE 'NY';

UPDATE person
SET origin2 = 'Phoenix, Arizona'
WHERE UPPER(origin) LIKE '%ARIZO%';

UPDATE person
SET origin2 = 'Boston, Massachusetts'
WHERE UPPER(origin) LIKE 'MASS%';

UPDATE person
SET origin2 = 'Cleveland, Ohio'
WHERE UPPER(origin) LIKE '%CLE%';

UPDATE person
SET origin2 = 'Baton Rouge, Louisiana'
WHERE UPPER(origin) LIKE '%LOUISIA%';

UPDATE person
SET origin2 = origin
WHERE UPPER(origin) LIKE '%, COLORA%';

UPDATE person
SET origin2 = 'Denver, Colorado'
WHERE UPPER(origin) LIKE '%COLORA%' and ORIGIN2 IS NULL;

UPDATE person
SET origin2 = 'Cherry Hill, New Jersey'
WHERE UPPER(origin) LIKE '%CHERR%';

UPDATE person
SET origin2 = 'Lincoln, Nebraska'
WHERE UPPER(origin) LIKE 'NEBRA%';

UPDATE person
SET origin2 = 'Raleigh, North Carolina'
WHERE UPPER(origin) LIKE '%NORTH%CAR%';

UPDATE person
SET origin2 = 'Seattle, Washington'
WHERE UPPER(origin) LIKE '%SEAT%';

UPDATE person
SET origin2 = origin
WHERE UPPER(origin) LIKE '%MILW%';

UPDATE person
SET origin2 = origin || ', New York'
WHERE UPPER(origin) LIKE '%STATEN%ISLAND';

UPDATE person
SET origin2 = 'Poughkeepsie, New York'
WHERE UPPER(origin) LIKE '%POU%';

UPDATE person
SET origin2 = 'Memphis, Tennessee'
WHERE UPPER(origin) LIKE '%MEM%';

UPDATE person
SET origin2 = 'Pittsburgh, Pennsylvania'
WHERE UPPER(origin) LIKE '%PIT%';

UPDATE person
SET origin2 = 'Long Island, New York'
WHERE UPPER(origin) LIKE '%LONG%' AND ORIGIN2 IS NULL;

UPDATE person
SET origin2 = origin
WHERE UPPER(origin) LIKE '%DALL%';

UPDATE person
SET origin2 = 'Santa Fe, New Mexico'
WHERE UPPER(origin) LIKE 'NEW%M%';

UPDATE person
SET origin2 = 'Portland, Oregon'
WHERE UPPER(origin) LIKE '%PORT%';

UPDATE person
SET origin2 = 'Madison, Wisconsin'
WHERE UPPER(origin) LIKE 'WISCONSIN';

UPDATE person
SET origin2 = 'Lexington, Massachusetts'
WHERE UPPER(origin) LIKE '%LEXING%';

UPDATE person
SET origin2 = 'Woburn, Massachusetts'
WHERE UPPER(origin) LIKE '%WOBURN%';

UPDATE person
SET origin2 = origin
WHERE UPPER(origin) LIKE '%KANSAS%CITY%';

UPDATE person
SET origin2 = 'Topeka, Kansas'
WHERE UPPER(origin) LIKE '%KANSAS%%' AND ORIGIN2 IS NULL;

UPDATE person
SET origin2 = 'San Diego, California'
WHERE UPPER(origin) LIKE 'SAN%DIEGO';

UPDATE person
SET origin2 = 'Richmond, Virginia'
WHERE UPPER(origin) LIKE '%VIRGI%' AND ORIGIN2 IS NULL;

UPDATE person
SET origin2 = origin
WHERE UPPER(origin) LIKE '%VEGAS%';

UPDATE person
SET origin2 = 'Cambridge, Massachusetts'
WHERE UPPER(origin) LIKE '%CAMBRI%';

UPDATE person
SET origin2 = 'Honolulu, Hawaii'
WHERE UPPER(origin) LIKE 'HAWA%';

UPDATE person
SET origin2 = 'Queens, New York'
WHERE UPPER(origin) LIKE '%QUEENS%';

UPDATE person
SET origin2 = 'Baltimore, Maryland'
WHERE UPPER(origin) LIKE '%BALTIM%';

UPDATE person
SET origin2 = 'Berkeley, California'
WHERE UPPER(origin) LIKE '%BERKELEY';

UPDATE person
SET origin2 = 'Indianapolis, Indiana'
WHERE UPPER(origin) LIKE '%INDIANA';

UPDATE person
SET origin2 = 'Salt Lake City, Utah'
WHERE UPPER(origin) LIKE '%SALT%';

UPDATE person
SET origin2 = 'Trenton, New Jersey'
WHERE UPPER(origin) LIKE 'NORTH%NEW%JERS%';

UPDATE person
SET origin2 = 'Helena, Montana'
WHERE UPPER(origin) LIKE '%MONTANA%';

UPDATE person
SET origin2 = 'Hartford, Connecticut'
WHERE UPPER(origin) LIKE 'CT%';

UPDATE person
SET origin2 = 'Beijing, China'
WHERE UPPER(origin) LIKE 'CHINA' OR UPPER(origin) LIKE 'BE%CHINA' OR UPPER(origin) LIKE '%P%CHINA%';

UPDATE person
SET origin2 = origin
WHERE UPPER(origin) LIKE '%SHAN%CHINA%';

UPDATE person
SET origin2 = 'Madrid, Spain'
WHERE UPPER(origin) LIKE '%SPAIN%';

UPDATE person
SET origin2 = 'Buenos Aires, Argentina'
WHERE UPPER(origin) LIKE '%ARGENTINA%';

UPDATE person
SET origin2 = 'Bern, Switzerland'
WHERE UPPER(origin) LIKE '%SWITZER%';

UPDATE person
SET origin2 = 'Jerusalem, Israel'
WHERE UPPER(origin) LIKE '%ISRAEL%';

UPDATE person
SET origin2 = 'Dhaka, Bangladesh'
WHERE UPPER(origin) LIKE '%BANGLA%';

UPDATE person
SET origin2 = 'Paris, France'
WHERE UPPER(origin) LIKE 'FRANCE%';

UPDATE person
SET origin2 = 'Manila, Philippines'
WHERE UPPER(origin) LIKE '%PHILIPP%';

UPDATE person
SET origin2 = 'Taipei, Taiwan'
WHERE UPPER(origin) LIKE '%TAIW%';

UPDATE person
SET origin2 = 'Bogota, Colombia'
WHERE UPPER(origin) LIKE '%COLOM%';

UPDATE person
SET origin2 = 'Tirana, Albania'
WHERE UPPER(origin) LIKE '%ALBANIA%';

UPDATE person
SET origin2 = 'Athens, Greece'
WHERE UPPER(origin) LIKE 'GREECE%';

UPDATE person
SET origin2 = 'Moscow, Russia'
WHERE UPPER(origin) LIKE 'RUSSIA%';

UPDATE person
SET origin2 = 'Panama City, Panama'
WHERE UPPER(origin) LIKE '%PANAMA%';

UPDATE person
SET origin2 = 'Tashkent, Uzbekistan'
WHERE UPPER(origin) LIKE '%UZB%';

UPDATE person
SET origin2 = 'Montevideo, Uruguay'
WHERE UPPER(origin) LIKE '%URUGU%';

UPDATE person
SET origin2 = 'Baku, Azerbaijan'
WHERE UPPER(origin) LIKE '%AZER%';

UPDATE person
SET origin2 = 'Berlin, Germany'
WHERE UPPER(origin) LIKE 'GERMAN%';

UPDATE person
SET origin2 = 'Budapest, Hungary'
WHERE UPPER(origin) LIKE '%BUDA%';

UPDATE person
SET origin2 = 'Yaounde, Cameroon'
WHERE UPPER(origin) LIKE '%CAMER%';

UPDATE person
SET origin2 = 'Brasilia, Brazil'
WHERE UPPER(origin) LIKE '%BRAZI%';

UPDATE person
SET origin2 = 'Kathmandu, Nepal'
WHERE UPPER(origin) LIKE '%NEPAL%';

UPDATE person
SET origin2 = 'Reykjavík, Iceland'
WHERE UPPER(origin) LIKE '%ICELAN%';

UPDATE person
SET origin2 = 'Warsaw, Poland'
WHERE UPPER(origin) LIKE '%POLAND%';

UPDATE person
SET origin2 = 'Belgrade, Yugoslavia'
WHERE UPPER(origin) LIKE '%YUGOSL%';

UPDATE person
SET origin2 = 'London, England'
WHERE UPPER(origin) LIKE 'LONDO%' OR UPPER(origin) LIKE '%UK' OR UPPER(origin) LIKE '%ENGLAND%' OR UPPER(origin) LIKE 'UK%';

UPDATE person
SET origin2 = 'Rome, Italy'
WHERE UPPER(origin) LIKE 'ITALY';

UPDATE person
SET origin2 = 'Milan, Italy'
WHERE UPPER(origin) LIKE '%MI%ITALY%';

UPDATE person
SET origin2 = 'Genoa, Italy'
WHERE UPPER(origin) LIKE '%GE%ITALY%';

UPDATE person
SET origin2 = 'Ottawa, Canada'
WHERE UPPER(origin) LIKE 'CANADA' OR UPPER(origin) LIKE 'O%CANADA';

UPDATE person
SET origin2 = origin
WHERE UPPER(origin) LIKE 'T%CANADA';

UPDATE person
SET origin2 = 'Tokyo, Japan'
WHERE UPPER(origin) LIKE 'JAPAN%' OR UPPER(origin) LIKE 'TOKYO%';

UPDATE person
SET origin2 = 'Santiago, Chile'
WHERE UPPER(origin) LIKE '%CHILE%';

UPDATE person
SET origin2 = 'Mexico City, Mexico'
WHERE UPPER(origin) LIKE 'MEXICO%' ;

UPDATE person
SET origin2 = 'Stockholm, Sweden'
WHERE UPPER(origin) LIKE '%SWEDEN%';

UPDATE person
SET origin2 = 'New Delhi, India'
WHERE UPPER(origin) LIKE 'INDIA';

UPDATE person
SET origin2 = origin
WHERE UPPER(origin) LIKE 'N%INDIA%' OR UPPER(origin) LIKE 'B%INDIA%';

UPDATE person
SET origin2 = 'Toronto, Canada'
WHERE UPPER(origin) LIKE 'TORONTO%';

UPDATE person
SET origin2 = 'Brussels, Belgium'
WHERE UPPER(origin) LIKE '%BELGI%';

UPDATE person
SET origin2 = 'Canberra, Australia'
WHERE UPPER(origin) LIKE '%AUSTRALIA%' ;

UPDATE person
SET origin2 = 'Singapore, Singapore'
WHERE UPPER(origin) LIKE '%SINGA%';

UPDATE person
SET origin2 = 'New Delhi, India'
WHERE UPPER(origin) LIKE 'INDIA%' AND ORIGIN2 IS NULL;

UPDATE person
SET origin2 = 'San Jose, Costa Rica'
WHERE UPPER(origin) LIKE '%COSTA%';

UPDATE person
SET origin2 = 'Kuala Lumpur, Malaysia'
WHERE UPPER(origin) LIKE '%MALAY%';

UPDATE person
SET origin2 = 'Seoul, South Korea'
WHERE UPPER(origin) LIKE '%KOREA' ;

UPDATE person
SET origin2 = 'Paris, France'
WHERE UPPER(origin) LIKE '%PARIS%';

UPDATE person
SET origin2 = 'Nashville, Tennessee'
WHERE UPPER(origin) LIKE 'TN' ;

UPDATE person
SET origin2 = 'Salem, Oregon'
WHERE UPPER(origin) LIKE 'OREGON';

UPDATE person
SET origin2 = 'Jakarta, Indonesia'
WHERE UPPER(origin) LIKE '%INDONE%' ;

UPDATE person
SET origin2 = 'Burlington, Vermont'
WHERE UPPER(origin) LIKE '%BURLING%';

UPDATE person
SET origin2 = 'Nashville, Tennessee'
WHERE UPPER(origin) LIKE '%NASH%';

UPDATE person
SET origin2 = 'Tehran, Iran'
WHERE UPPER(origin) LIKE '%IRAN%' OR UPPER(origin) LIKE '%PERSIA%';

UPDATE person
SET origin2 = 'Columbia, South Carolina'
WHERE UPPER(origin) LIKE '%SOUTH%CARO%'; 

UPDATE person
SET origin2 = origin
WHERE UPPER(origin) LIKE '%SOUTH%ORAN%';

UPDATE person
SET origin2 = 'Sofia, Bulgaria'
WHERE UPPER(origin) LIKE '%BULGARIA%' OR UPPER(origin) LIKE '%SOFIA%';

UPDATE person
SET origin2 = 'Bucharest, Romania'
WHERE UPPER(origin) LIKE '%ROMANIA%' ;
 
UPDATE person
SET origin2 = 'City of Victoria, Hong Kong'
WHERE UPPER(origin) LIKE '%HONG%' OR UPPER(origin) LIKE '%HKG%';

UPDATE person
SET origin2 = 'Manhattan, New York'
WHERE UPPER(origin) LIKE '%MANHATTAN%';

UPDATE person
SET origin2 = 'Moscow, Russia'
WHERE UPPER(origin) LIKE '%SIBERIA%';

UPDATE person
SET origin2 = 'Prague, Czech Republic'
WHERE UPPER(origin) LIKE '%CZECH%';

UPDATE person
SET origin2 = 'San Juan, Puerto Rico'
WHERE UPPER(origin) LIKE '%PUERTO%';

UPDATE person
SET origin2 = 'Westchester, New York'
WHERE UPPER(origin) LIKE '%WESTCHE%';

UPDATE person
SET origin2 = 'Bronx, New York'
WHERE UPPER(origin) LIKE '%BRONX%';

UPDATE person
SET origin2 = 'Brunswick, Maine'
WHERE UPPER(origin) LIKE '%BOWDO%';

UPDATE person
SET origin2 = 'Waltham, Massachusetts'
WHERE UPPER(origin) LIKE '%BRAND%';

UPDATE person
SET origin2 = 'Charlotte, North Carolina'
WHERE UPPER(origin) LIKE '%UNCC%';
--------
 
select PERSON_ID, ORIGIN, origin2
from person 
where ORIGIN2 IS NULL
