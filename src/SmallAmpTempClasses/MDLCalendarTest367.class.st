Class {
	#name : #MDLCalendarTest367,
	#superclass : #MDLCalendarTest,
	#category : #SmallAmpTempClasses
}

{ #category : #'as yet unclassified' }
MDLCalendarTest367 class >> allTestSelectors [
		| answer |
		answer := Set withAll: self testSelectors.
		answer addAll: self superclass allTestSelectors.
		^ answer asSortedCollection asOrderedCollection
]

{ #category : #'as yet unclassified' }
MDLCalendarTest367 >> testDaysForWeekWithFirstDayBeingASaturday_amp_A7 [
	"I test correctness of: 

- `yearsInterval - 9` in method: `MDLCalendar >> #selectPreviousYears`

"

	<madeBySmallAmp>
	calendar
		currentDate: (Date year: 2016 month: 05 day: 10);
		selectPreviousYears.
	self assert: calendar yearsInterval fourth equals: 2006
]

{ #category : #'as yet unclassified' }
MDLCalendarTest367 >> testIntervalSetCurrentDateModifyInterval_amp_A1 [
	"I test correctness of: 

- `yearsInterval + 9` in method: `MDLCalendar >> #selectNextYears`

"

	<madeBySmallAmp>
	calendar
		currentDate: Date tomorrow;
		selectNextYears.
	self assert: calendar yearsInterval fourth equals: 2028
]
