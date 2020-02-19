"
I am a baseline to define the structure and dependencies of the PragmaCompatibility project.
"
Class {
	#name : #BaselineOfPragmaCompatibility,
	#superclass : #BaselineOf,
	#category : #BaselineOfPragmaCompatibility
}

{ #category : #baseline }
BaselineOfPragmaCompatibility >> baseline: spec [
	<baseline>
	spec for: #'pharo6.x' do: [ spec package: 'PragmaCompatibility-Pharo6' ].
	spec for: (self pharoVersionsFrom: 7) do: [ spec package: 'PragmaCompatibility-Pharo7' ]
]

{ #category : #baselines }
BaselineOfPragmaCompatibility >> pharoVersionsFrom: aVersion [
	^ (aVersion to: SystemVersion current major) collect: [ :v | ('pharo' , v asString , '.x') asSymbol ]
]

{ #category : #accessing }
BaselineOfPragmaCompatibility >> projectClass [
	^ MetacelloCypressBaselineProject
]
