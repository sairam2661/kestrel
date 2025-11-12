"builtin.module"() ({
  "func.func"() <{function_type = (i64, f32) -> (i64, f32), sym_name = "mixed_dialects_example"}> ({
  ^bb0(%arg0: i64, %arg1: f32):
    %0 = "arith.addi"(%arg0, %arg0) : (i64, i64) -> i64
    %1 = "arith.addf"(%arg1, %arg1) : (f32, f32) -> f32
    %2 = "arith.cmpi"(%arg0, %arg0, "eq") : (i64, i64) -> i1
    %3 = "arith.cmpf"(%arg1, %arg1, "oeq") : (f32, f32) -> i1
    %4 = "scf.for"() <{lower_bound = 0 : index, upper_bound = 10 : index, step = 1 : index}> ({
    ^bb1(%iv: index):
      %5 = "arith.addi"(%iv, %iv) : (index, index) -> index
      %6 = "scf.yield"(%5) : (index) -> ()
    }) : (index) -> (index)
    "func.return"(%0, %1) : (i64, f32) -> ()
  }) : () -> ()
}) : () -> ()