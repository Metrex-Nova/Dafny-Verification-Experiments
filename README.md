# Dafny Verification Experiments

A collection of Dafny verification experiments demonstrating formal verification techniques for various algorithms and data structures.

## Project Overview

This repository contains formally verified implementations of common algorithms using Dafny, a verification-aware programming language. Each implementation includes comprehensive specifications, loop invariants, and postconditions that are mathematically proven correct.

## Features

- Formally Verified Code: All implementations are mathematically proven correct
- Comprehensive Specifications: Complete pre/post conditions and invariants
- Test Cases: Multiple verification scenarios for each algorithm
- Learning Documentation: Detailed explanations of verification challenges and solutions

## Repository Structure

dafny-verification-experiments/
│
├── src/
│   ├── Task1_AbsoluteValue.dfy        # Absolute value function
│   ├── Task2_FindFirstNegative.dfy    # Array search algorithm
│   ├── Task3_Factorial.dfy            # Factorial computation
│   └── Task4_Tribonacci.dfy           # Tribonacci sequence
│
├── docs/
│   └── index.html                     # Interactive documentation
│
├── README.md                          # This file
└── verification-report.md             # Detailed verification analysis

## Implementations

### Task 1: Absolute Value Function

- File: src/Task1_AbsoluteValue.dfy
- Description: Simple absolute value computation with mathematical guarantees
- Key Specifications:
  - Output is non-negative
  - Output equals input or its negation

### Task 2: Find First Negative Number in Array

- File: src/Task2_FindFirstNegative.dfy
- Description: Array search with comprehensive bounds checking
- Key Specifications:
  - Returns -1 if no negative numbers exist
  - Returns correct index with array bounds verification
  - Maintains loop invariants for partial array verification

### Task 3: Factorial Computation

- File: src/Task3_Factorial.dfy
- Description: Iterative factorial with functional specification
- Key Features:
  - Separate pure function for specification
  - Loop invariants tracking partial computations
  - Termination proof via decreases clause

### Task 4: Tribonacci Sequence

- File: src/Task4_Tribonacci.dfy
- Description: Efficient iterative Tribonacci computation
- Key Features:
  - Base case handling for n = 0, 1, 2
  - Strong loop invariants tracking three sequence values
  - Correspondence with recursive mathematical definition

## Verification Results

All implementations successfully pass Dafny verification with:

- 100% Verification Success Rate
- Complete Specification Coverage
- Termination Proofs
- Bounds Safety Guarantees

## Getting Started

### Prerequisites

- Dafny (version 4.x or later)
- .NET Runtime (for Dafny execution)

### Installation

1. Install Dafny:
   dotnet tool install -g dafny

2. Clone repository:
   git clone https://github.com/your-username/dafny-verification-experiments.git
   cd dafny-verification-experiments

### Running Verification

Verify individual tasks:

- Verify Absolute Value:
  dafny verify src/Task1_AbsoluteValue.dfy

- Verify Array Search:
  dafny verify src/Task2_FindFirstNegative.dfy

- Verify Factorial:
  dafny verify src/Task3_Factorial.dfy

- Verify Tribonacci:
  dafny verify src/Task4_Tribonacci.dfy

Verify all tasks at once:

- dafny verify src/*.dfy

### Viewing Documentation

Open docs/index.html in your web browser to view the interactive verification report.

## Testing

Each implementation includes built-in verification tests, for example:

method TestAbs() {
  var r1 := Abs(5); assert r1 == 5;
  var r2 := Abs(-7); assert r2 == 7;
  var r3 := Abs(0); assert r3 == 0;
}

Run specific test methods:

- dafny run --method=TestAbs src/Task1_AbsoluteValue.dfy

## Learning Resources

### Key Verification Concepts Demonstrated

- Loop Invariants: Maintaining correct state through iterations
- Postconditions: Guaranteeing correct output properties
- Preconditions: Ensuring valid input states
- Termination Proofs: Using decreases clauses
- Pure Functions: Mathematical specifications
- Array Bounds Safety: Complete index verification

### Common Verification Patterns

- Iterative Algorithms: Loop invariants and termination
- Array Processing: Bounds checking and element access
- Mathematical Functions: Correspondence with pure specifications
- Search Algorithms: Partial correctness and completeness

## Verification Challenges Solved

Task        Challenge                   Solution
Absolute    Weak postconditions         Added mathematical relationship
Array       Missing loop invariants     Added element content tracking
Factorial   Method calls in specs       Used pure functions
Tribonacci  Weak invariants             Strengthened to track sequence values

## Contributing

Contributions are welcome. Please feel free to submit pull requests for:

- Additional verified algorithms
- Improved specifications
- More test cases
- Documentation enhancements

### Contribution Guidelines

- Ensure all code passes Dafny verification
- Include comprehensive specifications
- Add test cases for edge conditions
- Update documentation accordingly

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Acknowledgments

- Dafny Language Team for the verification tools
- Formal methods community for verification techniques and patterns
