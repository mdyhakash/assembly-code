# Assembly Language Programs for emu8086

This repository contains a collection of Assembly Language programs designed to work with the **emu8086** emulator. These programs cover basic operations, control flow, string manipulation, and pattern generation.

---

## Getting Started

### Step 1: Download and Install emu8086

To run these programs, you need to install the **emu8086** emulator:

1. Visit the [emu8086 website](https://emu8086-microprocessor-emulator.en.softonic.com/download).
2. Download and install the emulator on your computer by following the installation steps.
## emu8086 License Key
```
    User: ISHAAN,glaitm
    Key: 27R3VDEFYFX4N0VC3FRTQZX
```
---

## Table of Contents

- [Folder Structure](#folder-structure)
- [How to Run Programs](#how-to-run-programs)
- [Programs Overview](#programs-overview)
  - [Basic Operations](#basic-operations)
  - [Control Flow](#control-flow)
  - [String Manipulation](#string-manipulation)
  - [Patterns](#patterns)
- [Detailed Steps with Code](#detailed-steps-with-code)
- [Contributors](#contributors)
- [License](#license)

---

## Folder Structure

- **Mid Topics**: Programs covering basic operations such as increment, decrement, and variable handling.
- **Lab Tasks**: Programs implementing control flow, loops, and if-else logic.
- **Patterns**: Demonstrates creating patterns using loops.

---

## How to Run Programs

1. **Open emu8086**:

   - Launch the emu8086 emulator from your system.

2. **Load the Program**:

   - Copy the `.asm` file content into the code editor within emu8086 or use the `File -> Open` option to load a file.

3. **Assemble the Code**:

   - Click on the "Assemble" button or press `F5` to compile the code.
   - Ensure there are no errors during assembly.

4. **Run the Program**:

   - Once assembled, click on "Run" or press `F9` to execute the program step by step or in full.

5. **Debugging**:
   - Use the "Step" button or press `F8` to debug line by line.
   - Observe register changes and memory outputs in the emulator interface.

---

## Programs Overview

### Basic Operations

- **increment.asm**: Demonstrates incrementing a variable.
- **decrement.asm**: Demonstrates decrementing a variable.
- **sub.asm**: Implements subtraction.
- **inputoutput.asm**: Handles basic input and output operations.

### Control Flow

- **jump.asm**: Shows the usage of jump instructions.
- **ifElseCondition.asm**: Implements if-else logic.
- **loopusingJMP.asm**: Demonstrates loops using jump instructions.

### String Manipulation

- **lower_to_upper.asm**: Converts lowercase letters to uppercase.
- **upper_to_lower.asm**: Converts uppercase letters to lowercase.

### Patterns

- **pattern1usingforloop.asm**: Generates simple patterns with loops.
- **pattern4usingforloop.asm**: Demonstrates advanced pattern generation.

---

## Detailed Steps with Code

### Example: `increment.asm`

1. **Load the Program**:
   Copy the following code into emu8086:
   ```asm
   MOV AL, 5     ; Load 5 into register AL
   INC AL        ; Increment the value in AL
   HLT           ; Stop execution
   ```

### Example: loopusingJMP.asm

1. **Code Explanation:**
```
MOV CX, 5     ; Set loop counter to 5
START:        
    MOV AH, 2  ; Set function to display a character
    MOV DL, '*' ; Load ASCII value of '*' into DL
    INT 21h     ; Call DOS interrupt to display character
    LOOP START  ; Decrement CX and repeat if CX > 0
HLT           ; Stop execution

```
### This program displays a pattern of ***** using a loop.

2. **Steps:**

    - Load this code into emu8086.
    - Assemble and run the program.
    - Observe the output in the console.


## Contributors

**mdyhakash** Created and maintained the repository.

---

## License

This repository is licensed under the MIT License. You are free to use, modify, and distribute the code with attribution.

