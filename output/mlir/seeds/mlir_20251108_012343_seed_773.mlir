"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>, sym_name = "complex_control_flow"}> ({
    ^bb0(%arg0: tensor<2x2xi32>, %arg1: tensor<2x2xi32>):
      %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      %1 = "scf.if"(%0) <{results = 1 : i32}> ({
        ^bb1(%cond: i32):
          %2 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_none}> : (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>
          "scf.yield"(%2) : (tensor<2x2xi32>) -> tensor<2x2xi32>
      }) {
        "scf.yield" = 0 : i32
      }
      : (i32) -> (tensor<2x2xi32>)
      %3 = "scf.for"() <{lowerBound = 0 : index, upperBound = 2 : index, step = 1 : index, parallelLoops = false, unitStrideLoops = false}> ({
        ^bb2(%iv: index):
          %4 = "arith.constant"(%iv) <{value = 1 : index}> : (index) -> index
          %5 = "arith.addi"(%4, %0) <{overflowFlags = #arith_overflow_none}> : (index, i32) -> i32
          "scf.yield"() : () -> ()
      }) {
        "scf.yield" = () -> ()
      }
      : () -> ()
      "func.return"(%1) : (tensor<2x2xi32>) -> ()
    }) : () -> ()
}) : () -> ()