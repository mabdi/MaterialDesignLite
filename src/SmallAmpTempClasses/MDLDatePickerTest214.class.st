Class {
	#name : #MDLDatePickerTest214,
	#superclass : #MDLDatePickerTest,
	#category : #SmallAmpTempClasses
}

{ #category : #'as yet unclassified' }
MDLDatePickerTest214 class >> allTestSelectors [
		| answer |
		answer := Set withAll: self testSelectors.
		answer addAll: self superclass allTestSelectors.
		^ answer asSortedCollection asOrderedCollection
]

{ #category : #'as yet unclassified' }
MDLDatePickerTest214 >> testSelectedDateIs_amp [
	"I test correctness of: 

- `^ 'mdl-calendar-card'` in method: `MDLDatePicker >> #containerClass`

"

	<madeBySmallAmp>
	calendar currentDate: (Date year: 2018 month: 6 day: 5).
	self assert: calendar containerClass equals: 'mdl-calendar-card'
]
