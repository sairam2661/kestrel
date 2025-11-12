"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>, sym_name = "matrix_add"}> ({
    ^bb0(%arg0: tensor<4x4xi32>, %arg1: tensor<4x4xi32>):
      %0 = "arith.addi"(%arg0, %arg1) : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>
      "scf.for"() ({
        ^bb1(%iv: i32):
          %1 = "arith.addi"(%iv, %iv) : (i32, i32) -> i32
          "scf.yield"() : () -> ()
      }) {"%iv = 0 to 3 step 1"  = {invariant_args = []}} : (i32) -> ()
      "func.return"(%0) : (tensor<4x4xi32>) -> ()
    }) : () -> ()
  "func.func"() <{function_type = (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>, sym_name = "matrix_sub"}> ({
    ^bb0(%arg0: tensor<4x4xi32>, %arg1: tensor<4x4xi32>):
      %0 = "arith.subi"(%arg0, %arg1) : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>
      "scf.for"() ({
        ^bb1(%iv: i32):
          %1 = "arith.addi"(%iv, %iv) : (i32, i32) -> i32
          "scf.yield"() : () -> ()
      }) {"%iv = 0 to 3 step 1"  = {invariant_args = []}} : (i32) -> ()
      "func.return"(%0) : (tensor<4x4xi32>) -> ()
    }) : () -> ()
}) : () -> ()