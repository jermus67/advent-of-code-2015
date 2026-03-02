Class {
	#name : 'BaselineOfAdventOfCode2015',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfAdventOfCode2015',
	#package : 'BaselineOfAdventOfCode2015'
}

{ #category : 'loading' }
BaselineOfAdventOfCode2015 class >> loadLepiter [
	IceRepository registry  
		detect: [ :aRepository |
			aRepository name = 'advent-of-code-2015' ]
		ifFound: [ :aRepository | 
			| defaultDatabase currentProperties |
			defaultDatabase := LeDatabasesRegistry defaultLogicalDatabase.
			currentProperties := defaultDatabase properties.
			currentProperties addRegisteredDirectory: aRepository repositoryDirectory / 'lepiter'.
			defaultDatabase reload ]
		ifNone: [
			self inform: 'Repository not found.' ]
]

{ #category : 'baseline' }
BaselineOfAdventOfCode2015 >> baseline: spec [
	<baseline>
		^ spec for: #common do: [
			spec package: 'AdventOfCode2015'
		]
]
