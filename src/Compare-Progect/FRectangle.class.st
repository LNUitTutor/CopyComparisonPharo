"
A model of the rectangle. Can calculate area() and perimeter().
"
Class {
	#name : 'FRectangle',
	#superclass : 'Figure',
	#instVars : [
		'length',
		'width'
	],
	#category : 'Compare-Progect',
	#package : 'Compare-Progect'
}

{ #category : 'instance creation' }
FRectangle class >> newWithLength: a andWidth: b [

	^ self basicNew
		  length: a;
		  width: b
]

{ #category : 'calculating' }
FRectangle >> area [

	^ length * width
]

{ #category : 'accessing' }
FRectangle >> initialize [

	length := 3.0.
	width := 4.0
]

{ #category : 'accessing' }
FRectangle >> length [

	^ length
]

{ #category : 'accessing' }
FRectangle >> length: aNumber [

	length := aNumber max: 0.1
]

{ #category : 'calculating' }
FRectangle >> perimeter [

	^ (length + width) * 2.0
]

{ #category : 'printing' }
FRectangle >> printOn: aStream [

	aStream
		nextPutAll: 'Rectangle[';
		print: length;
		nextPut: $x;
		print: width;
		nextPut: $]
]

{ #category : 'accessing' }
FRectangle >> scalingBy: aNumber [

	| coef |
	coef := aNumber max: 0.1.
	length := length * coef.
	width := width * coef
]

{ #category : 'accessing' }
FRectangle >> width [

	^ width
]

{ #category : 'accessing' }
FRectangle >> width: aNumber [

	width := aNumber max: 0.1
]
