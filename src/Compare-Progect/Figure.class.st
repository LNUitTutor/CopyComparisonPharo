"
Abstract base class for the hierarchy of flat figures
"
Class {
	#name : 'Figure',
	#superclass : 'Object',
	#category : 'Compare-Progect',
	#package : 'Compare-Progect'
}

{ #category : 'calculating' }
Figure >> area [

	^ self subclassResponsibility
]

{ #category : 'calculating' }
Figure >> perimeter [

	^ self subclassResponsibility
]

{ #category : 'accessing' }
Figure >> scalingBy: aNumber [

	^ self subclassResponsibility
]
