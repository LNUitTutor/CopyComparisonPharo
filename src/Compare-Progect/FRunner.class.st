"
Run an example with an ordered collection of figures
"
Class {
	#name : 'FRunner',
	#superclass : 'Object',
	#category : 'Compare-Progect',
	#package : 'Compare-Progect'
}

{ #category : 'services' }
FRunner class >> getOrigin [

	^ OrderedCollection withAll: {
			  FCircle new.
			  FRectangle new.
			  (FCircle newWithRadius: 2.0).
			  (FRectangle newWithLength: 2.0 andWidth: 1.0) }
]

{ #category : 'services' }
FRunner class >> printCollection: collection withTitle: title [

	Transcript
		cr;
		show: title;
		cr.
	collection do: [ :fig |
			Transcript
				show: fig;
				cr;
				show: '  S = ' , fig area printString , '   P = '
					, fig perimeter printString;
				cr ]
]

{ #category : 'services' }
FRunner class >> runExample [

	<script>
	| origin copy |
	origin := self getOrigin.
	self
		printCollection: origin
		withTitle: '--- The origin collection of figures'.
	copy := origin deepCopy.
	copy do: [ :fig | fig scalingBy: 2.0 ].
	self
		printCollection: copy
		withTitle: '--- The copy after scaling by 2.0'.
	self
		printCollection: origin
		withTitle: '--- The origin after scaling copy by 2.0'
]
