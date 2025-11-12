"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32, tensor<2x3xf32>) -> (i32, tensor<2x3xf32>), sym_name = "complexOpSequence"}> ({
  ^bb0(%arg0: i32, %arg1: f32, %arg2: tensor<2x3xf32>):
    %0 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
    %1 = "arith.addf"(%arg1, %arg1) : (f32, f32) -> f32
    "scf.if"(%0) ({
      %2 = "arith.cmpi"(%0, %0, "eq") : (i32, i32) -> i1
      "scf.yield"() : () -> ()
    }, {
    }) : (i32) -> ()
    "scf.for"(%arg0, %arg0, %0, 1) ({
      ^bb1(%iv: i32):
        %3 = "arith.addf"(%1, %1) : (f32, f32) -> f32
        "scf.yield"() : () -> ()
    }) : (i32, i32, i32, i32) -> ()
    "func.return"(%0, %arg2) : (i32, tensor<2x3xf32>) -> ()
  }) : () -> ()
}) : () -> ()