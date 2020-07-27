Class {
	#name : #MDLApplicationTest56,
	#superclass : #MDLApplicationTest,
	#category : #SmallAmpTempClasses
}

{ #category : #'as yet unclassified' }
MDLApplicationTest56 class >> allTestSelectors [
		| answer |
		answer := Set withAll: self testSelectors.
		answer addAll: self superclass allTestSelectors.
		^ answer asSortedCollection asOrderedCollection
]

{ #category : #'as yet unclassified' }
MDLApplicationTest56 >> testAddScreen_amp [
	<madeBySmallAmp>
	| screen |
	'I test correctness of: 

- `^ ''
html > body {
	font-family: "Roboto" , "Helvetica" , "Arial" , "sans-serif" ;
}

.mdl-layout__container {
		position: static;
	}
''` in method: `MDLApplication >> #style`

'.
	screen := WAComponent new.
	app addScreen: screen.
	self
		assert: app style
		equals:
			'
html > body {
	font-family: "Roboto" , "Helvetica" , "Arial" , "sans-serif" ;
}

.mdl-layout__container {
		position: static;
	}
'
]
