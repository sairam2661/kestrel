#loc = loc("/data/saiva/sut/seeds/circt/seeds/split_files/sim-errors-1.mlir":2:63)
"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<input val : i8, output res : !sim.fstring>, parameters = [], result_locs = [#loc], sym_name = "fmt_infinite_concat_canonicalize"}> ({
  ^bb0(%arg0: i8):
    %0 = "sim.fmt.char"(%arg0) : (i8) -> !sim.fstring
    %1 = "sim.fmt.lit"() <{literal = "Here we go round the"}> : () -> !sim.fstring
    %2 = "sim.fmt.lit"() <{literal = "prickly pear"}> : () -> !sim.fstring
    %3 = "sim.fmt.concat"(%2, %0, %5) : (!sim.fstring, !sim.fstring, !sim.fstring) -> !sim.fstring
    %4 = "sim.fmt.concat"(%2, %0, %2, %0, %3, %0) : (!sim.fstring, !sim.fstring, !sim.fstring, !sim.fstring, !sim.fstring, !sim.fstring) -> !sim.fstring
    %5 = "sim.fmt.concat"(%1, %0, %4) : (!sim.fstring, !sim.fstring, !sim.fstring) -> !sim.fstring
    %6 = "sim.fmt.lit"() <{literal = "At five o'clock in the morning."}> : () -> !sim.fstring
    %7 = "sim.fmt.concat"(%5, %0, %6) : (!sim.fstring, !sim.fstring, !sim.fstring) -> !sim.fstring
    "hw.output"(%7) : (!sim.fstring) -> ()
  }) : () -> ()
}) : () -> ()

