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
	spec
		for: #'pharo6.x'
		do: [ spec
				package: 'PragmaCompatibility-Pharo6';
				package: 'PragmaCompatibility-Tests' with: [ spec requires: 'PragmaCompatibility-Pharo6' ].

			spec
				group: 'Core' with: #('PragmaCompatibility-Pharo6');
				group: 'Tests' with: #('PragmaCompatibility-Tests') ].
	spec
		for: (self pharoVersionsFrom: 7)
		do: [ spec
				package: 'PragmaCompatibility-Pharo7';
				package: 'PragmaCompatibility-Tests' with: [ spec requires: 'PragmaCompatibility-Pharo7' ].

			spec
				group: 'Core' with: #('PragmaCompatibility-Pharo7');
				group: 'Tests' with: #('PragmaCompatibility-Tests') ]
]

{ #category : #baselines }
BaselineOfPragmaCompatibility >> pharoVersionsFrom: aVersion [
	^ (aVersion to: SystemVersion current major) collect: [ :v | ('pharo' , v asString , '.x') asSymbol ]
]

{ #category : #accessing }
BaselineOfPragmaCompatibility >> projectClass [
	^ MetacelloCypressBaselineProject
]
