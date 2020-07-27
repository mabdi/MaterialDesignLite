Class {
	#name : #MDLButtonColumnDescriptionTest83,
	#superclass : #MDLButtonColumnDescriptionTest,
	#category : #SmallAmpTempClasses
}

{ #category : #'as yet unclassified' }
MDLButtonColumnDescriptionTest83 class >> allTestSelectors [
		| answer |
		answer := Set withAll: self testSelectors.
		answer addAll: self superclass allTestSelectors.
		^ answer asSortedCollection asOrderedCollection
]

{ #category : #'as yet unclassified' }
MDLButtonColumnDescriptionTest83 >> testRenderOn_amp [
	"I test correctness of: 

- `^ onClickBlock` in method: `MDLButtonColumnDescription >> #onClickBlock`

"

	<madeBySmallAmp>
	| columnDescription aMDLButtonColumnDescription |
	aMDLButtonColumnDescription := MDLButtonColumnDescription new.
	self
		assert:
			aMDLButtonColumnDescription onClickBlock class
		equals: BlockClosure.
	columnDescription := aMDLButtonColumnDescription
		iconName: 'delete';
		yourself
]
