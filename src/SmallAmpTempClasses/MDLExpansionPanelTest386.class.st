Class {
	#name : #MDLExpansionPanelTest386,
	#superclass : #MDLExpansionPanelTest,
	#category : #SmallAmpTempClasses
}

{ #category : #'as yet unclassified' }
MDLExpansionPanelTest386 class >> allTestSelectors [
		| answer |
		answer := Set withAll: self testSelectors.
		answer addAll: self superclass allTestSelectors.
		^ answer asSortedCollection asOrderedCollection
]

{ #category : #'as yet unclassified' }
MDLExpansionPanelTest386 >> testIsFolded_amp [
	"I test correctness of: 

- `^ shadow` in method: `MDLExpansionPanel >> #shadow` when {#shadow->2}

- `^ expandedBlock` in method: `MDLExpansionPanel >> #expandedBlock` when {#expandedBlock->nil}

"

	<madeBySmallAmp>
	| expansionPanel |
	expansionPanel := MDLExpansionPanel new.
	self
		assert: expansionPanel shadow equals: 2;
		assert: expansionPanel expandedBlock isNil.
	expansionPanel
		isExpanded: true;
		isExpanded: false
]

{ #category : #'as yet unclassified' }
MDLExpansionPanelTest386 >> testUseLazyExpansionStrategy_amp [
	"I test correctness of: 

- `^ descriptions` in method: `MDLExpansionPanel >> #descriptions` when {#descriptions->#('')}

- `^ title` in method: `MDLExpansionPanel >> #title` when {#title->''}

"

	<madeBySmallAmp>
	| expansionPanel |
	expansionPanel := MDLExpansionPanel new.
	self
		assert: expansionPanel descriptions class equals: Array;
		assert: expansionPanel title equals: ''.
	expansionPanel useLazyExpansionStrategy
]
