Class {
	#name : #MDLNestedListTest431,
	#superclass : #MDLNestedListTest,
	#category : #SmallAmpTempClasses
}

{ #category : #'as yet unclassified' }
MDLNestedListTest431 class >> allTestSelectors [
		| answer |
		answer := Set withAll: self testSelectors.
		answer addAll: self superclass allTestSelectors.
		^ answer asSortedCollection asOrderedCollection
]

{ #category : #'as yet unclassified' }
MDLNestedListTest431 >> testElementsDisplayListWithMoreThanListSize_amp [
	"I test correctness of: 

- `^ isJsAction` in method: `MDLNestedList >> #isJsAction` when {#isJsAction->false}

- `^ actionBlock` in method: `MDLNestedList >> #actionBlock` when {#actionBlock->nil}

- `^ listStyle` in method: `MDLNestedList >> #listStyle` when {#listStyle->#standard}

- `^ filter` in method: `MDLNestedList >> #filter`

- `^ dragAndDropBlock` in method: `MDLNestedList >> #dragAndDropBlock` when {#dragAndDropBlock->nil}

- `^ childrenSortBlock` in method: `MDLNestedList >> #childrenSortBlock` when {#childrenSortBlock->nil}

"

	<madeBySmallAmp>
	list elements: (1 to: list listMaxSize * 2).
	self
		deny: list isJsAction;
		assert: list actionBlock isNil;
		assert: list listStyle equals: #standard;
		assert: list filter class
			equals: MDLInsensitiveBeginsWithFilter class;
		assert: list dragAndDropBlock isNil;
		assert: list childrenSortBlock isNil
]

{ #category : #'as yet unclassified' }
MDLNestedListTest431 >> testIndexOfRootElementContainingSelectedEntityAtSecondLevel_amp_A150 [
	"I test correctness of: 

- `^ Array with: self` in method: `MDLNestedList >> #states`

"

	<madeBySmallAmp>
	| aCollection |
	aCollection := list
		elements: self sampleElements keys;
		childrenBlock: self childrenBlockForSampleElements;
		selectedEntity: 2;
		selectedEntity: 8;
		states.
	self assert:
		aCollection class equals: Array
]

{ #category : #'as yet unclassified' }
MDLNestedListTest431 >> testIndexOfRootElementContainingSelectedEntityIfSelectedEntityIsNil_amp_A63 [
	<madeBySmallAmp>
	list
		elements: self sampleElements keys;
		childrenBlock: self childrenBlockForSampleElements;
		states;
		selectedEntity: nil
]

{ #category : #'as yet unclassified' }
MDLNestedListTest431 >> testRightIconBlockIsRenderedIfNeeded_amp_L9 [
	<madeBySmallAmp>
	list
		elements: self sampleElements keys;
		rightIconBlock: [ :item :html | html mdlIcon: 'mood' ]
]
