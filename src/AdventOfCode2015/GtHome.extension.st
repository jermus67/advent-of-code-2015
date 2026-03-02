Extension { #name : 'GtHome' }

{ #category : '*AdventOfCode2015' }
GtHome >> gtAdventOfCodeSection [
	<gtHomeSection>
	^ GtHomeStartPageSection new
		title: 'Advent of Code 2015';
		description: 'Testing the GlamorousToolkit with AOC 2015';
		databaseName: 'jermus67/advent-of-code-2015/lepiter';
		startPageName: 'Advent of Code 2015';
		priority: 8
]
