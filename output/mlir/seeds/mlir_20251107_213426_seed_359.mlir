"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x4xi32>, index) -> tensor<4x4xi32>, sym_name = "dynamic_shape_addition"}> ({
    ^bb0(%arg0: tensor<4x4xi32>, %arg1: index):
      %0 = "arith.constant"() <{value = 4 : index}> : () -> index
      %1 = "arith.cmpi"(%arg1, %0, "ne") : (index, index) -> i1
      %2 = "scf.if"(%1) ({
        ^bb1(%2: i1):
          %3 = "arith.constant"() <{value = 1 : i32}> : () -> i32
          "scf.yield"(%3) : (i32)
      }) : (i1) -> i32
      %4 = "arith.addi"(%arg0, %2) : (tensor<4x4xi32>, i32) -> tensor<4x4xi32>
      "func.return"(%4) : (tensor<4x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()