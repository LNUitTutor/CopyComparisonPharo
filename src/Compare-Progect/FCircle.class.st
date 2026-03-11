"
A model of the circle. Can calculate area() and perimeter().
"
Class {
	#name : 'FCircle',
	#superclass : 'Figure',
	#instVars : [
		'radius'
	],
	#category : 'Compare-Progect',
	#package : 'Compare-Progect'
}

{ #category : 'instance creation' }
FCircle class >> newWithRadius: aNumber [

	^ self basicNew radius: aNumber
]

{ #category : 'calculating' }
FCircle >> area [

	^ Float pi * radius squared
]

{ #category : 'initialization' }
FCircle >> initialize [

	radius := 1.0
]

{ #category : 'calculating' }
FCircle >> perimeter [

	^ Float pi * radius * 2.0
]

{ #category : 'printing' }
FCircle >> printOn: aStream [

	aStream
		nextPutAll: 'Circle(';
		print: radius;
		nextPut: $)
]

{ #category : 'accessing' }
FCircle >> radius: aNumber [

	radius := aNumber max: 0.1
]

{ #category : 'accessing' }
FCircle >> scalingBy: aNumber [

	radius := radius * (aNumber max: 0.1)
]
