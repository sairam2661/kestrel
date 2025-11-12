"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?xi32>, tensor<?xi32>) -> tensor<?xi32>, sym_name = "elementwise_add"}> ({
  ^bb0(%arg0: tensor<?xi32>, %arg1: tensor<?xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<?xi32>, tensor<?xi32>) -> tensor<?xi32>
    "func.return"(%0) : (tensor<?xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<?xi32>) -> tensor<?xi32>, sym_name = "negate_elements"}> ({
  ^bb0(%arg0: tensor<?xi32>):
    %0 = "arith.negi"(%arg0) : (tensor<?xi32>) -> tensor<?xi32>
    "func.return"(%0) : (tensor<?xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "complex_control_flow"}> ({
    "scf.if"() ({
      %2 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
      "scf.yield"(%2) : (i32) -> ()
    }, {
      "scf.yield"() : () -> ()
    }) : () -> ()
    "scf.for"() ({
      %3 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
      %4 = "llvm.mlir.constant"() <{value = 10 : i32}> : () -> i32
      %5 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
      "scf.yield"(%3, %4, %5) : (i32, i32, i32) -> ()
    }, {
      %6 = "scf.yield"() : () -> ()
    }) : () -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()