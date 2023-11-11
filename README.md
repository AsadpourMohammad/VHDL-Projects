# VHDL

## Command Guide

### Syntax Check

```bash
    ghdl -s file.vhdl
    ghdl -s file_tb.vhdl
```

### Analyze

```bash
    ghdl -a file.vhdl
    ghdl -a file_tb.vhdl
```

### Elaborate

```bash
    ghdl -e file_tb
```

### Run

```bash
    ghdl -r file_tb
```

### Run with generating vcd file for GTKWave

```bash
    ghdl -r file_tb --vcd=file.vcd
```

### View with GTKWave

```bash
    gtkwave file.vcd
```
