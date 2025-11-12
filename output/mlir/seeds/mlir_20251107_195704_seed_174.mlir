"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xi32>) -> tensor<2x2xi32>, sym_name = "complex_operations"}> ({
    ^bb0(%arg0: tensor<2x2xi32>):
      %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
      %1 = "arith.constant"() <{value = 20 : i32}> : () -> i32
      %2 = "arith.addi"(%arg0, %0) : (tensor<2x2xi32>, i32) -> tensor<2x2xi32>
      %3 = "arith.muli"(%2, %1) : (tensor<2x2xi32>, i32) -> tensor<2x2xi32>
      %4 = "arith.subi"(%3, %0) : (tensor<2x2xi32>, i32) -> tensor<2x2xi32>
      %5 = "arith.divisi"(%4, %1) : (tensor<2x2xi32>, i32) -> tensor<2x2xi32>
      "func.return"(%5) : (tensor<2x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()