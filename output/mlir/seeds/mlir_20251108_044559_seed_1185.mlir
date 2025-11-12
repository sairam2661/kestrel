"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32, tensor<2x3x4xi16>) -> (i32, f32), sym_name = "mixed_dialects_example"}> ({
  ^bb0(%arg0: i32, %arg1: f32, %arg2: tensor<2x3x4xi16>):
    %0 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
    %1 = "arith.addf"(%arg1, %arg1) : (f32, f32) -> f32
    %2 = "tosa.identity"(%arg2) : (tensor<2x3x4xi16>) -> tensor<2x3x4xi16>
    %3 = "scf.if"(%0) ({
      ^bb1(%arg3: i32):
        "scf.yield"(%arg3) : (i32) -> i32
    }) {
      "scf.yield"  = 0 : i32
    } : (i32) -> i32
    "func.return"(%3, %1) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()