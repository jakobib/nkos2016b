---
title: |
  Interoperability \
  of KOS Metadata Schemas \
  in BARTOC and JSKOS
shorttitle: Interoperability of KOS metadata schemas  
author:
 - name: Jakob Voß
   affiliation: VZG
 - name: Andreas Ledl
   affiliation: UB Basel
#institute: Verbundzentrale des GBV (VZG), Göttingen, Germany
date: 2016-10-16
#subtitle: '[10.5281/zenodo.61767](http://dx.doi.org/10.5281/zenodo.61767)'
place: 16^th^ European NKOS Workshop, Copenhagen
multifilter:
 - arrows
...

# BARTOC.org

![](bartoc-screenshot.png){height=75mm}

# Founding Reasons

* Make traditional resources more visible

* Provide key characteristics of resources

* Encourage human and machine assessment of these resources by applicability to
  semantic projects

* Promote information exchange and knowledge sharing

@Marjorie2011: Developing an eclectic terminology registry

# Collaborations

![](collaborations.png){height=75mm}

# Interoperability

<!--http://bartoc.org/en/node/20-->

![](bartoc-20.png){height=77mm}

# Interoperability

![](wikidata.png){height=75mm}

# NKOS DC Application Profile

@Zeng2015: Networked Knowledge Organization Systems Dublin Core Application Profile (NKOS AP) v0.2

* BARTOC is aligned with NKOS AP
* Some fields not applicable
* RDF is not strict enough (literal vs. resource, repeatability...)

-> BARTOC RDF $\subset$ NKOS AP RDF $\cup$ schema.org

# BARTOC KOS metadata in RDF

\tiny

~~~
<http://bartoc.org/en/taxonomy/term/1> a skos:Concept;
  rdfs:label "thesaurus"@en ; skos:prefLabel "thesaurus"@en . 

<http://bartoc.org/en/node/20> a sioc:Item, schema:Dataset, foaf:Document;
  dc:type <http://bartoc.org/en/taxonomy/term/1>;	   
  schema:name "IATE", "Inter-Active Terminology for Europe"@en;
  dc:title "IATE";
  dc:creator "Translation Centre for the Bodies of the European Union";
  foaf:maker <http://viaf.org/viaf/167896131>,		   
    "Translation Centre for the Bodies of the European Union";
  dc:created "1999"^^xsd:gYear;
  nkos:sizeNote 
    "8.4 million terms, including approximately 540.000 abbreviations and 130 000 phrases (2016-06)" ;
  dc:description "In IATE you can find EU-specific terminology and jargon, as well as terms from all sorts of areas..."
  dc:identifier <http://iate.europa.eu>;
  dc:relation <http://www.wikidata.org/entity/Q1520860>; 
  schema:about 
	<http://bartoc.org/en/taxonomy/term/10656>,	
	<http://bartoc.org/en/taxonomy/term/11597>, 
	<http://bartoc.org/en/taxonomy/term/50220>, 
	<http://bartoc.org/en/taxonomy/term/50430>, 
	<http://bartoc.org/en/taxonomy/term/50770>; 
	<http://bartoc.org/en/taxonomy/term/51043>; 
	<http://bartoc.org/en/taxonomy/term/49253>, 
  dc:language 
	<http://bartoc.org/en/taxonomy/term/10746>, 
	<http://bartoc.org/en/taxonomy/term/10747>, 
	<http://bartoc.org/en/taxonomy/term/10748>, 
	<http://bartoc.org/en/taxonomy/term/10749>, 
    ...
~~~

# BARTOC KOS metadata in RDF

\tiny

~~~
<http://bartoc.org/en/taxonomy/term/1> a skos:Concept; # == <http://w3id.org/nkos/nkostype#thesaurus>
  rdfs:label "thesaurus"@en ; skos:prefLabel "thesaurus"@en . 

<http://bartoc.org/en/node/20> a sioc:Item, schema:Dataset, foaf:Document;
  dc:type <http://bartoc.org/en/taxonomy/term/1>;	   # == <http://w3id.org/nkos/nkostype#thesaurus>
  schema:name "IATE", "Inter-Active Terminology for Europe"@en;
  dc:title "IATE";
  dc:creator "Translation Centre for the Bodies of the European Union";
  foaf:maker <http://viaf.org/viaf/167896131>,		   # => VIAF
    "Translation Centre for the Bodies of the European Union";
  dc:created "1999"^^xsd:gYear;
  nkos:sizeNote 
    "8.4 million terms, including approximately 540.000 abbreviations and 130 000 phrases (2016-06)" ;
  dc:description "In IATE you can find EU-specific terminology and jargon, as well as terms from all sorts of areas..."
  dc:identifier <http://iate.europa.eu>;
  dc:relation <http://www.wikidata.org/entity/Q1520860>; # => Wikidata
  schema:about 
	<http://bartoc.org/en/taxonomy/term/10656>,	# == <http://dewey.info/class/001/e23/> DDC 001: Knowledge
	<http://bartoc.org/en/taxonomy/term/11597>, # == <http://eurovoc.europa.eu/4060> European Union
	<http://bartoc.org/en/taxonomy/term/50220>, # == s: civil society, communities, groups, people
	<http://bartoc.org/en/taxonomy/term/50430>, # == t: governments, political power, political units, sovereign states
	<http://bartoc.org/en/taxonomy/term/50770>; # == tUE: European Union, EU
	<http://bartoc.org/en/taxonomy/term/51043>; # == u: economies, economic systems
	<http://bartoc.org/en/taxonomy/term/49253>, # == v: technologies, technological systems, production systems
  dc:language 
	<http://bartoc.org/en/taxonomy/term/10746>, # == en (English)
	<http://bartoc.org/en/taxonomy/term/10747>, # == fr (French)
	<http://bartoc.org/en/taxonomy/term/10748>, # == de (German)
	<http://bartoc.org/en/taxonomy/term/10749>, # == es (Spanish)
    ...
~~~

# Metadata Schema Conversion

manual input -> BARTOC database fields (Drupal)

=> Drupal -> BARTOC RDFa (NKOS AP & schema.org)

=> Wrapper -> JSKOS (SKOS & extensions)

\rule{\textwidth}{1pt}

Conversions don't preserve all information (<=>) but normalize

See @Ledl2016 for conversion details (extended since)

# JSKOS

...JSKOS defines a data format based on RDF and JSON to express structure, metadata, mappings and other information about KOS in a uniform way. JSKOS also makes use of SKOS and JSON-LD...

# JSKOS

..second slide: JSKOS example...

# JSKOS Wrapper

* JSKOS API
* See jskos-php-examples (live demo and source code)

# Daily BARTOC Dumps in JSKOS

![](bartoc-dumps.png){width=110mm}


# Summary

* \> 1.900 KOS (and 70 KOS registries) described in BARTOC
* Controlled vocabularies:
	* EuroVoc, DDC, ISO 639-2, Wikidata, NKOS KOS Types Vocabulary, ILC...
* RDF Metadata Schema: NKOS AP + schema.org
* JSKOS format (via wrapper): SKOS + extensions
* Available as Open Data

# References

\scriptsize

See also <http://bartoc.org/> and <https://coli-conc.gbv.de/publications>.

