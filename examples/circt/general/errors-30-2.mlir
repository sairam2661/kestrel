"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<input in0 : i32>, parameters = [], sym_name = "graphRegionToSSACFG"}> ({
  ^bb0(%arg0: i32):
    %0 = "comb.add"(%arg0, %1) : (i32, i32) -> i32
    %1 = "comb.add"(%arg0, %0) : (i32, i32) -> i32
    "hw.output"() : () -> ()
  }) : () -> ()
}) : () -> ()

