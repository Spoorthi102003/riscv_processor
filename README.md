# RISCV-processor
This is the RISCV processor that is built for R-type(add, and, sub, or) instruction, load and store instructions.

# System-Verilog coding
SystemVerilog is a hardware description and verification language used in the design and verification of digital systems, particularly in the field of electronic design automation (EDA). It is an extension of Verilog, which is one of the most widely used hardware description languages.

SystemVerilog incorporates features for both hardware description and verification, making it a versatile language for describing the behavior and structure of digital circuits and for creating testbenches to verify their functionality. Some key features of SystemVerilog include:

**Design Constructs**: SystemVerilog supports various design constructs like modules, interfaces, and packages, allowing for the modular and hierarchical description of digital systems. It also includes object-oriented programming (OOP) features, such as classes and inheritance, which enhance code reuse and maintainability.

**Assertion and Verification**: SystemVerilog provides built-in support for assertions, which are statements specifying properties that must always hold true. This is crucial for formal verification and debugging. Additionally, it includes constructs for constrained random testing, enabling efficient and thorough verification of digital designs.

**Data Types**: SystemVerilog introduces new data types, such as the logic type, which provides better control and representation of data compared to traditional Verilog. This enhances code readability and helps catch errors early in the design process.

# Structural modeling
Structural modeling in the context of digital design refers to the description of a digital system's architecture and interconnections using components and their interrelationships. It's a way of representing a system's hardware at a higher level of abstraction, emphasizing the organization and connectivity of its constituent elements.

* We have constructed different modules and used structural modeling to combine all of them together using a top-level-entity module risc_processor.

![Screenshot 2023-11-12 145139](https://github.com/Spoorthi102003/riscv_processor/assets/143829280/f6d0ee1b-72e2-43c6-9c66-9d6e0a592a6d)

# RTL netlist generator
* A netlist is a textual representation of an electronic circuit, describing its components and their interconnections in terms of nets, or electrical connections. It serves as a crucial intermediary step in the digital design process, providing a detailed overview of the circuit's structure before being used for further synthesis, simulation, or implementation.

Here is the output of the RTL simulation

![Screenshot 2023-11-12 143336](https://github.com/Spoorthi102003/riscv_processor/assets/143829280/3d89719e-3d80-41b9-9a85-ff4cba914f57)

![Screenshot 2023-11-12 143356](https://github.com/Spoorthi102003/riscv_processor/assets/143829280/6ff4619c-d0cc-4e49-bcb1-6183bcedb08d)

![Screenshot 2023-11-12 143411](https://github.com/Spoorthi102003/riscv_processor/assets/143829280/5c992e73-2e91-4cc0-8052-005f3f3f9cdb)

![Screenshot 2023-11-12 143430](https://github.com/Spoorthi102003/riscv_processor/assets/143829280/2843965d-0242-464b-a266-e8307a791f7f)





















