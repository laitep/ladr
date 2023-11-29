<p align="center">
  <img width=512 src="imgs/prover9-5a-512t.gif">
</p>
<p align="center">
  <img width=512 src="imgs/prover9t.gif">
</p>

# Prover9 and Mace4

Prover9 is an automated theorem prover for first-order and equational logic, and Mace4 searches for finite models and counterexamples. Prover9 is the successor of the [Otter prover](http://www.cs.unm.edu/~mccune/otter/).

## Building from source

Both `CMake` and `make` are supported. To build using `make` (in-source), clone this repository and run

    make all

Cygwin is recommended for building on Windows.

The recommended way to run with `CMake` (out-of-source) is to run

    sh run_cmake.sh

Regardless of the method used, the end result will be the binaries available in the `bin` folder.

### Troubleshooting

If `make` complains about the `round` function not being found (or something else having to do with `math.h`), try moving the `-lm` parameters in [`provers.src/Makefile`](https://github.com/laitep/ladr/blob/main/provers.src/Makefile) to the end of the command, or use `CMake` instead.

## Pre-built binaries:

- [The GUI: Prover9 and Mace4 with a Graphical User Interface](https://github.com/laitep/Prover9-Mace4-v05/releases/tag/v1.0.0)
- [LADR: Command-line versions of Prover9, Mace4, and other programs (source only)](https://github.com/laitep/ladr/releases/tag/v1.0.0)

## Other Useful Links

- [Manual and Examples](https://laitep.github.io/ladr/)
- Help! If you have questions about Prover9/Mace4/LADR, please file a new [issue](https://github.com/laitep/ladr/issues/new).
- [Citing the programs in your publications](#citing-prover9-and-mace4)
- [Double-check your Prover9 Proofs with Ivy](http://www.cs.unm.edu/~mccune/ivy_check_prover9/)
- Turn on notifications (using the [`Watch`](https://github.com/laitep/ladr) button on the LADR GitHub page) if you would like to be notified of updates, bugs, etc.

**You should ignore any rumors that Prover9 is part of [a bigger plan](imgs/plan-9-from-outer-space.jpg).**

# Citing Prover9 and Mace4

Please use something like this:

```
W. McCune, LaiTeP contributors, "Prover9 and Mace4", https://github.com/laitep/ladr, 2005-2010, 2023.
```

Bibtex item:

```
@unpublished{ prover9-mace4,
    author = "W. McCune, {LaiTeP} contributors",
    title = "Prover9 and Mace4",
    note = "\verb|https://github.com/laitep/ladr|",
    year = "2005-2010, 2023"}
```

---

_This material is based upon work supported by the [National Science Foundation](http://www.nsf.gov) under Grant No. 0708218._

_Any opinions, findings and conclusions or recomendations expressed in this material are those of the author(s) and do not necessarily reflect the views of the National Science Foundation._
