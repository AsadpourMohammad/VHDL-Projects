# VHDL

## Description

This repository contains VHDL modules and their test benches for learning purposes.

## Modules

<table>
  <tr>
    <td>
      <h3>Adder</h3>
      <ul>
        <li><a href="./ADDER/HA">Half Adder</a></li>
        <li><a href="./ADDER/FA">Full Adder</a></li>
      </ul>
    </td>
  </tr>
</table>

<table>
  <tr>
    <td>
      <h3>Multiplexer</h3>
      <ul>
        <li><a href="./MUX/2x1">2-to-1 MUX</a></li>
        <li><a href="./MUX/4x1">4-to-1 MUX</a></li>
      </ul>
    </td>
  </tr>
</table>

<table>
  <tr>
    <td>
      <h3>Latch</h3>
      <ul>
       <li><a href="./LATCH/SR">SR Latch</a></li>
     </ul>
   </td>
 </tr>
</table>

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
