"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<input in1 : i8, input in2 : i8, input in3 : i8>, parameters = [], sym_name = "bar"}> ({
  ^bb0(%arg0: i8, %arg1: i8, %arg2: i8):
    %0 = "comb.add"(%arg0, %arg1) : (i8, i8) -> i8
    %1 = "comb.add"(%arg0, %arg1, %arg2) : (i8, i8, i8) -> i8
    %2 = "comb.add"(%arg0, %arg2, %arg2) : (i8, i8, i8) -> i8
    %3 = "comb.icmp"(%arg0, %arg1) <{predicate = 6 : i64}> : (i8, i8) -> i1
    %4 = "scf.if"(%3) ({
      %6 = "comb.add"(%arg0) : (i8) -> i8
      "scf.yield"(%6) : (i8) -> ()
    }, {
      %5 = "comb.xor"(%0) : (i8) -> i8
      "scf.yield"(%5) : (i8) -> ()
    }) : (i1) -> i8
    "hw.output"() : () -> ()
  }) : () -> ()
}) : () -> ()

