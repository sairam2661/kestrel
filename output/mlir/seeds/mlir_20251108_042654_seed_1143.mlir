"builtin.module"() ({
  "func.func"() <{function_type = (tensor<i32>, tensor<i32>) -> tensor<i32>, sym_name = "complex_control_flow"}> ({
  ^bb0(%arg0: tensor<i32>, %arg1: tensor<i32>):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow}> : (tensor<i32>, tensor<i32>) -> tensor<i32>
    "scf.if"(%0) <{predicate = "arith.cmpi", operands = ["eq", 0 : i32]}> ({
    ^bb1:
      %1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      "scf.yield"(%1) : (i32) -> ()
    }) : (i32) -> ()
    "scf.for"(%0, %0, %0) <{lowerBound = 0 : index, upperBound = 10 : index, step = 1 : index}> ({
    ^bb2(%arg2: index):
      %2 = "arith.addi"(%arg2, %arg2) <{overflowFlags = #arith_overflow}> : (index, index) -> index
      "scf.yield"(%2) : (index) -> ()
    }) : (index, index, index) -> ()
    "func.return"(%0) : (tensor<i32>) -> ()
  }) : () -> ()
}) : () -> ()