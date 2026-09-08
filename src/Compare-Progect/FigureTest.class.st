Class {
	#name : 'FigureTest',
	#superclass : 'TestCase',
	#category : 'Compare-Progect',
	#package : 'Compare-Progect'
}

{ #category : 'tests' }
FigureTest >> testRadius [
self assert: (FRectangle newWithLength: 3 andWidth: 4) radius closeTo: 2.5
]
