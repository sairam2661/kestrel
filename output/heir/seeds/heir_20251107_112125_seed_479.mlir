"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "tensor_operations"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %0 = "arith.constant"() <{value = dense<1> : tensor<4xi32>}> : () -> tensor<4xi32>
    %1 = "arith.addi"(%arg0, %0) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %2 = "arith.subi"(%arg1, %0) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %3 = "tensor.extract_element"(%1) <{indices = [2]}> : (tensor<4xi32>) -> i32
    %4 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %5 = "arith.cmpi"(%3, %4) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %6 = "scf.if"(%5) ({
    ^bb0:
      %7 = "arith.constant"() <{value = 10 : i32}> : () -> i32
      "scf.yield"(%7) : (i32) -> ()
    }) : (i32) -> (i32)
    %8 = "tensor.insert_element"(%6, %1) <{indices = [2]}> : (i32, tensor<4xi32>) -> tensor<4xi32>
    "func.return"(%8) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()