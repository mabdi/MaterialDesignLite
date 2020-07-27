Class {
	#name : #MDLChipInitialTest52,
	#superclass : #MDLChipInitialTest,
	#category : #SmallAmpTempClasses
}

{ #category : #'as yet unclassified' }
MDLChipInitialTest52 class >> allTestSelectors [
		| answer |
		answer := Set withAll: self testSelectors.
		answer addAll: self superclass allTestSelectors.
		^ answer asSortedCollection asOrderedCollection
]

{ #category : #'as yet unclassified' }
MDLChipInitialTest52 >> testHexColor_amp_L0 [
	<madeBySmallAmp>
	self
		should: [ self
				assert: [ :html | html mdlChipContact hexColor: '' ]
				generatedIncludes:
					'<span class="mdl-color-text--white mdl-chip__contact" style="background-color: #009587" id="id1"></span>' ]
		raise: SubscriptOutOfBounds
]
