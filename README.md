# Quantum Computing Lab (MATLAB)

Hands-on quantum computing activities for first-year engineering students, built on top of an
open-source MATLAB simulator of a universal, gate-based quantum computer. Students compare a
classical "black box" analysis with the Deutsch algorithm (Activity 1), then build their own
multi-qubit circuits to check hand calculations (Activity 2).

## Running it

Open this folder in MATLAB and run one of the activity scripts:

| Script | What it does |
| --- | --- |
| `classicalAnalysis.m` | Activity 1, part 1: probe an unknown single-bit operation (`blackBox`) classically |
| `quantumAnalysis.m` | Activity 1, part 2: identify the same operation with one query using the Deutsch algorithm |
| `quantumRunner.m` | Activity 2: enter any number of qubits, their states, and a sequence of gates; prints the final state and plots outcome probabilities |

`blackBox.p` is distributed as MATLAB P-code so students cannot read which operation it hides.
`identity.m`, `negation.m`, `constant0.m`, and `constant1.m` are the four known single-bit
operations to test against it.

## Authorship and license

The simulator core is by **Martin V.** and is distributed under the BSD-style license in
[`license.txt`](license.txt), which applies to these files and must be kept with them:

| File | Author |
| --- | --- |
| `quantumComputer.m` | Martin V. |
| `getOperator.m` | Martin V. |
| `initializeRegistersInt.m` | Martin V. |
| `algorithmPreprocess.m` | Martin V. |
| `getControledOperator.m` | Martin V., edited by Michael Kuban (v1.1: input checks and default values) |
| `initializeRegisters.m` | Martin V., edited by Michael Kuban (v1.1: single cell-array input) |

The lab activities and their supporting functions are by **Michael J. P. Kuban** and are released
under the MIT License (see [`LICENSE`](LICENSE)):
`classicalAnalysis.m`, `quantumAnalysis.m`, `quantumRunner.m`, `deutschPreprocess.m`,
`deutschPostprocess.m`, `getAlgorithm.m`, `getQbits.m`, `identity.m`, `negation.m`,
`constant0.m`, `constant1.m`, and `blackBox.p`.
