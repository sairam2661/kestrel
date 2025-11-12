"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, index) -> tensor<4xi32>, sym_name = "tensor_manipulation"}> ({
    ^bb0(%arg0: tensor<4xi32>, %arg1: index):
      %0 = "arith.constant"() <{value = 2 : i32}> : () -> i32
      %1 = "arith.constant"() <{value = 1 : index}> : () -> index
      %2 = "arith.constant"() <{value = 0 : index}> : () -> index
      %3 = "tensor.extract"(%arg0, %arg1) : (tensor<4xi32>, index) -> i32
      %4 = "arith.muli"(%3, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %5 = "tensor.insert"(%4, %arg0, %arg1) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
      %6 = "arith.addi"(%1, %arg1) <{overflowFlags = #arith_overflownone}> : (index, index) -> index
      %7 = "arith.cmpi"(%6, %2) <{predicate = 2 : i64}> : (index, index) -> i1
      %8 = "scf.if"(%7) ({
        ^bb0:
          %9 = "arith.constant"() <{value = 3 : i32}> : () -> i32
          %10 = "tensor.insert"(%9, %arg0, %6) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
          "scf.yield"(%10) : (tensor<4xi32>) -> tensor<4xi32>
      }) {
        "scf.yield" = "scf.yield" : (tensor<4xi32>) -> tensor<4xi32>
      }
      : (i1) -> tensor<4xi32>
      "func.return"(%8) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()