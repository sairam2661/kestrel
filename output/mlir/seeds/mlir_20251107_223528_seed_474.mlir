"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x2xi32>, tensor<4x2xf32>) -> (), sym_name = "mixed_dialect_operations"}> ({
    ^bb0(%arg0: tensor<4x2xi32>, %arg1: tensor<4x2xf32>):
      %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
      %1 = "arith.constant"() <{value = 3.14 : f32}> : () -> f32
      %2 = "scf.if"(%0) <{sym_name = "if_block"}> ({
        ^bb1(%arg2: i32):
          %3 = "arith.addi"(%arg2, %0) : (i32, i32) -> i32
          "scf.yield"(%3) : (i32) -> ()
      }) : (i32) -> i32
      %4 = "arith.cmpf"("oeq", %1, %1) : (f32, f32) -> i1
      %5 = "scf.for"(%0, %2, %0) <{sym_name = "for_block"}> ({
        ^bb2(%arg3: i32, %arg4: i32):
          %6 = "arith.addf"(%1, %1) : (f32, f32) -> f32
          "scf.yield"(%arg4) : (i32) -> ()
      }) : (i32) -> i32
      "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()