# C++ Development Environment Setup for CS101(Windows)

This guide walks you through setting up a complete C++ development environment on Windows, including the **g++** compiler, the **gdb** debugger, **SimpleCpp**, and **VS Code**.

## Prerequisites

Make sure the following files from this repository are downloaded to your machine:

- `install-gpp.bat`
- `simplecpp-windows (1).zip`

---

## 1. Install g++ and gdb

1. Open a terminal in the folder containing `install-gpp.bat`.
2. Run the installer:
   ```
   ./install-gpp.bat
   ```
3. Wait for the installation to complete fully before moving on.

---

## 2. Install SimpleCpp

1. Unzip `simplecpp-windows (1).zip`.
2. Open the extracted folder.
3. Open a terminal inside the extracted folder.
4. Run the installer:
   ```
   ./install.bat
   ```

---

## 3. Install VS Code

1. Download and install VS Code from the official site: https://code.visualstudio.com/
2. Open VS Code and go to the **Extensions** panel.
3. Search for and install the **C/C++** extension by **Microsoft**.

---

## 4. Test Your Installation

1. Inside the extracted SimpleCpp folder, open the `examples` folder.
2. Open a terminal in the `examples` folder.
3. Compile and run the sample program:
   ```
   s++ turtle_square.cpp
   ./a
   ```

If the program runs without any errors, **congratulations — your installation is complete and working correctly!** 
---

## Troubleshooting

- Make sure each installation step finishes completely before starting the next.
- If a `./` command isn't recognized, confirm your terminal is opened in the correct folder.
