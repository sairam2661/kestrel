"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "mixed_dialects"}> ({
    ^bb0(%arg0: i32, %arg1: f32):
      %0 = "arith.cmpi"(%arg0, %arg0, "eq") : (i32, i32) -> i1
      %1 = "scf.if"(%0) ({
        ^bb0:
          %2 = "arith.addf"(%arg1, %arg1) : (f32, f32) -> f32
          "scf.yield"(%2) : (f32) -> ()
      }, {
        ^bb1:
          %3 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
          "scf.yield"(%3) : (i32) -> ()
      }) : (i1) -> (i32, f32)
      %4 = "func.call"() <{callee = "@sub_func", operands = [0, 1]}> : () -> (i32, f32)
      "func.return"(%4) : (i32, f32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "sub_func"}> ({
    ^bb0(%arg0: i32, %arg1: f32):
      %0 = "arith.const"() <{value = 1 : i32}> : () -> i32
      %1 = "arith.const"() <{value = 1.000000e+00 : f32}> : () -> f32
      %2 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
      %3 = "arith.addf"(%arg1, %1) : (f32, f32) -> f32
      "func.return"(%2, %3) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()