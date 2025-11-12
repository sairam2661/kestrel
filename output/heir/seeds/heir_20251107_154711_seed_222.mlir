"builtin.module"() ({
  "func.func"() <{function_type = (tensor<512xi32>, tensor<512xi32>) -> tensor<512xi32>, sym_name = "tensor_mutation"}> ({
  ^bb0(%arg0: tensor<512xi32>, %arg1: tensor<512xi32>):
    %0 = "arith.constant"() <{value = dense<10 : i32> : tensor<512xi32>}> : () -> tensor<512xi32>
    %1 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflow_none}> : (tensor<512xi32>, tensor<512xi32>) -> tensor<512xi32>
    %2 = "arith.cmpi"(%1, %arg1, "gt") <{overflowFlags = #arith_overflow_none}> : (tensor<512xi32>, tensor<512xi32>) -> tensor<i1>
    %3 = "tensor_ext.assign_layout"(%2, "strides: [1]") : (tensor<i1>, tensor<i1>) -> tensor<i1>
    %4 = "scf.if"(%3) <{results = [tensor<512xi32>, tensor<512xi32>]}> ({
    ^bb0():
      %5 = "tensor.insert"(%arg0, %0, %0) <{indices = [0]}> : (tensor<512xi32>, tensor<512xi32>, index) -> tensor<512xi32>
      %6 = "arith.addi"(%5, %1) <{overflowFlags = #arith_overflow_none}> : (tensor<512xi32>, tensor<512xi32>) -> tensor<512xi32>
      scf.yield %5, %6 : tensor<512xi32>, tensor<512xi32>
    ^bb1():
      %7 = "arith.addi"(%arg0, %1) <{overflowFlags = #arith_overflow_none}> : (tensor<512xi32>, tensor<512xi32>) -> tensor<512xi32>
      %8 = "tensor.insert"(%arg1, %0, %0) <{indices = [0]}> : (tensor<512xi32>, tensor<512xi32>, index) -> tensor<512xi32>
      scf.yield %7, %8 : tensor<512xi32>, tensor<512xi32>
    }) : () -> (tensor<512xi32>, tensor<512xi32>)
    %9 = "func.return"(%4#0) : (tensor<512xi32>) -> ()
  }) : () -> ()
}) : () -> ()