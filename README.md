# UIViewDebug

## Description

Objective-C extensions for debugging UIViews.

## Installation

Simply plop this repo into your project, and you should be good to go.

## Usage

### Auto-bordering UIViews

	UIView *view = [[UIView alloc] init];
	[view giveBorder]; // give the view a randomly colored 1px border
	[view borderSubviews]; // random-color borders all subviews
