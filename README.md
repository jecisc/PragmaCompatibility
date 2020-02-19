# PragmaCompatibility

[![Build Status](https://travis-ci.org/jecisc/PragmaCompatibility.svg?branch=master)](https://travis-ci.org/jecisc/PragmaCompatibility)

I am a tiny tiny project to manage the `keyword` -> `selector` compatibility of Pragma before and after Pharo 6.1

## Quick start

Originaly, Pragma implemented a `#keyword` method to get the keyword of a Pragma. In Pharo 7 a method `#selector` was included to do the same thing and `#keyword` was deprecated in Pharo8.

The major problem lie in the fact that `#selector` existed in Pharo 6 and had a differente meaning. Thus, it is hard to manipulate the keyword of a pragma in Pharo 6, 7 and 8+ at the same time.

This project adds a method `#pragmaSelector` to `Pragma` calling the right method depending on the Pharo version.

## Installation

To install PragmaCompatibility on your Pharo image, execute the following script: 

```Smalltalk
Metacello new
	githubUser: 'jecisc' project: 'PragmaCompatibility' commitish: 'v1.x.x' path: 'src';
	baseline: 'PragmaCompatibility';
	load
```

To add PragmaCompatibility to your baseline:

```Smalltalk
spec
	baseline: 'PragmaCompatibility'
	with: [ spec repository: 'github://jecisc/PragmaCompatibility:v1.x.x/src' ]
```

Note you can replace the #master by another branch such as #development or a tag such as #v1.0.0, #v1.? or #v1.2.? .

## Version management 

This project use semantic versioning to define the releases. This means that each stable release of the project will be assigned a version number of the form `vX.Y.Z`. 

- **X** defines the major version number
- **Y** defines the minor version number 
- **Z** defines the patch version number

When a release contains only bug fixes, the patch number increases. When the release contains new features that are backward compatible, the minor version increases. When the release contains breaking changes, the major version increases. 

Thus, it should be safe to depend on a fixed major version and moving minor version of this project.

## Smalltalk versions compatibility

| Version 	| Compatible Pharo versions 	|
|-------------	|---------------------------	|
| 1.x.x       	| Pharo 61, 70, 80, 90		|

## Contact

If you have any questions or problems do not hesitate to open an issue or contact cyril (a) ferlicot.me 
