"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32, tensor<i8>) -> i32, sym_name = "mixed_dialects"}> ({
  ^bb0(%arg0: i32, %arg1: f32, %arg2: tensor<i8>):
    %0 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
    %1 = "arith.addf"(%arg1, %arg1) : (f32, f32) -> f32
    %2 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    "scf.for"(%arg0, %2, %2) ({
    ^bb1(%iv: i32):
      %3 = "arith.addi"(%iv, %2) : (i32, i32) -> i32
      "scf.yield"() : () -> ()
    }) : () -> ()
    %4 = "arith.cmpi"(%arg0, %2, "eq") : (i32, i32) -> i1
    "scf.if"(%4) ({
    ^bb2(%if_cond: i1):
      %5 = "arith.cmpf"(%arg1, %1, "eq") : (f32, f32) -> i1
      "scf.yield"() : () -> ()
    }) : () -> ()
    "func.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()