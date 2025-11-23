# Dafny Verification Experiments

A collection of Dafny verification experiments demonstrating formal verification techniques for various algorithms and data structures.

## Project Overview

This repository contains formally verified implementations of common algorithms using [Dafny](https://github.com/dafny-lang/dafny), a verification-aware programming language. Each implementation includes comprehensive specifications, loop invariants, and postconditions that are mathematically proven correct.

## Features

- **Formally Verified Code**: All implementations are mathematically proven correct
- **Comprehensive Specifications**: Complete pre/post conditions and invariants
- **Test Cases**: Multiple verification scenarios for each algorithm
- **Learning Documentation**: Detailed explanations of verification challenges and solutions

## Repository Structure
dafny-verification-experiments/
│
├── src/
│ ├── Task1_AbsoluteValue.dfy # Absolute value function
│ ├── Task2_FindFirstNegative.dfy # Array search algorithm
│ ├── Task3_Factorial.dfy # Factorial computation
│ └── Task4_Tribonacci.dfy # Tribonacci sequence
│
├── docs/
│ └── index.html # Interactive documentation
│
├── README.md # This file
└── verification-report.md # Detailed verification analysis
