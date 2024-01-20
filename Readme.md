# Bug in the preparation of the simulation of some stateful cells

How to reproduce:
```bash
bash run.sh
```

Yosys version: `Yosys 0.37+21 (git sha1 8649e3066, clang 10.0.0-4ubuntu1 -fPIC -Os)`

Instead of successful generation of `cxxrtl_obj_dir/cxxrtl.cpp`, we get the following error:
```
3.3.9. Executing PROC_DFF pass (convert process syncs to FFs).
Creating register for signal `\wrapper_cxxrtl.\top_i.celloutsig_0z' using process `\wrapper_cxxrtl.$flatten\top_i.$proc$top.sv:9$1'.
ERROR: Multiple edge sensitive events found for this signal!
```

From the source code, it does not look explicit that this means that always_ff blocks with multiple sensitive signals are not yet supported.
