# VHDL

## Guide

All modules and their test benches can be compiled and run with the Makefile.

```bash
    make MODULE=module_name
```

The Makefile will run the following commands:

### Syntax Check

```bash
    ghdl -s module_name.vhdl
    ghdl -s module_name_tb.vhdl
```

### Analyze

```bash
    ghdl -a module_name.vhdl
    ghdl -a module_name_tb.vhdl
```

### Elaborate

```bash
    ghdl -e module_name_tb
```

### Run

```bash
    ghdl -r module_name_tb
```

### Run with generating vcd file for GTKWave

```bash
    ghdl -r module_name_tb --vcd=file.vcd
```

### View with GTKWave

```bash
    gtkwave module_name.vcd
```
