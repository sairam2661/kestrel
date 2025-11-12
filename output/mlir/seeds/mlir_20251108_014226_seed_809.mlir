"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "mixed_types_and_loops"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
    %1 = "arith.addf"(%arg1, %arg1) : (f32, f32) -> f32
    %2 = "arith.cmpi"(%0, %arg0) <{predicate = 7 : i64}> : (i32, i32) -> i1
    %3 = "arith.cmpf"(%1, %arg1) <{predicate = 7 : i64}> : (f32, f32) -> i1
    "scf.for"(%arg0) <{lower_bound = 0 : index, upper_bound = 4 : index, step = 1 : index}> ({
    ^bb1(%iv: index):
      %4 = "arith.addi"(%iv, %iv) : (index, index) -> index
      %5 = "arith.addf"(%arg1, %arg1) : (f32, f32) -> f32
      %6 = "arith.cmpi"(%0, %0) <{predicate = 7 : i64}> : (i32, i32) -> i1
      %7 = "arith.cmpf"(%1, %1) <{predicate = 7 : i64}> : (f32, f32) -> i1
      "scf.yield"() : () -> ()
    }) : (index) -> ()
    "func.return"(%2, %3) : (i1, i1) -> ()
  }) : () -> ()
}) : () -> ()