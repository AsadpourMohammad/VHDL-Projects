# VHDL

Projects for learning VHDL Language

## Description

This repository contains VHDL projects for learning purposes in Computer-Aided Design Systems (CADS) course.

Each project contains a module and its test bench.
Some projects contain different architectural implementations of the same module.

These projects were tested with GHDL with mcode backend on Manjaro Linux, and used 2002 VHDL standard.

## Modules

- Adder:
  - [Half Adder](./ADDER/HA)
  - [Full Adder](./ADDER/FA)

- Delayed OR:
  - [Delayed OR](./DELAYED-OR)

- Finite State Machine:
  - [FSM](./FSM)

- Latch:
  - [SR Latch](./LATCH/SR/)

- Multiplexer:
  - [2-to-1 MUX](./MUX/2x1/)
  - [4-to-1 MUX](./MUX/4x1/)

- Self Package:
  - [Self Package](./self-pkg)

## Requirements

- GHDL
- GTKWave

## Guide

All modules and their test benches can be compiled and run with the Makefile.

```bash
    make wave ADDRESS=module_address MODULE=module_name

    # Example
    make wave ADDRESS=./ADDER/HA MODULE=ha
```

The Makefile will run the following commands:

```bash
    # Syntax check
    ghdl -s --std=02 module_name.vhdl
    ghdl -s --std=02 module_name_tb.vhdl

    # Analyze
    ghdl -a --std=02 module_name.vhdl
    ghdl -a --std=02 module_name_tb.vhdl

    # Elaborate
    ghdl -e --std=02 module_name_tb

    # Run and generate wave file
    ghdl -r --std=02 module_name_tb --wave=module_name.ghw

    # View wave with GTKWave
    gtkwave module_name.ghw
```

You can also run theses commands using make:

```bash
    # Syntax check
    make check ADDRESS=module_address MODULE=module_name

    # Analyze
    make analyze ADDRESS=module_address MODULE=module_name
    
    # Elaborate
    make elaborate ADDRESS=module_address MODULE=module_name
    
    # Run
    make run ADDRESS=module_address MODULE=module_name
    
    # Run and generate wave file
    make wave ADDRESS=module_address MODULE=module_name
```

The `make wave` command will run all the previous commands and view the wave file with GTKWave.

You can also clean all the generated files with the following command:

```bash
    make clean
```
