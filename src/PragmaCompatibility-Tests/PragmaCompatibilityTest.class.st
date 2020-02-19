Class {
	#name : #PragmaCompatibilityTest,
	#superclass : #TestCase,
	#category : #'PragmaCompatibility-Tests'
}

{ #category : #accessing }
PragmaCompatibilityTest >> method [
	<pragmaCompatibilityPragma>
]

{ #category : #tests }
PragmaCompatibilityTest >> testPramaSelector [
	| collected |
	collected := (PragmaCollector new filter: [ :prg | prg pragmaSelector = #pragmaCompatibilityPragma ]) reset collect: #method.
	self assert: collected size equals: 1
]
