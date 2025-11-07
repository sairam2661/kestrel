"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2xi32>) -> tensor<2xi32>, sym_name = "test_fn"}> ({
  ^bb0(%arg8: tensor<2xi32>):
    "func.return"(%arg8) : (tensor<2xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<2xi32>, tensor<2xi32>, i1) -> tensor<2xi32>, sym_name = "test_scf"}> ({
  ^bb0(%arg5: tensor<2xi32>, %arg6: tensor<2xi32>, %arg7: i1):
    %12 = "scf.if"(%arg7) ({
      "scf.yield"(%arg5) : (tensor<2xi32>) -> ()
    }, {
      "scf.yield"(%arg6) : (tensor<2xi32>) -> ()
    }) : (i1) -> tensor<2xi32>
    "func.return"(%12) : (tensor<2xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<?xi32>) -> tensor<?xi32>, sym_name = "test_dyn_noop"}> ({
  ^bb0(%arg4: tensor<?xi32>):
    "func.return"(%arg4) : (tensor<?xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>, sym_name = "test_extract_insert"}> ({
  ^bb0(%arg2: tensor<2xi32>, %arg3: tensor<2xi32>):
    %1 = "arith.constant"() <{value = 0 : index}> : () -> index
    %2 = "arith.constant"() <{value = 1 : index}> : () -> index
    %3 = "tensor.empty"() : () -> tensor<2xi32>
    %4 = "tensor.extract"(%arg2, %1) : (tensor<2xi32>, index) -> i32
    %5 = "tensor.extract"(%arg3, %1) : (tensor<2xi32>, index) -> i32
    %6 = "arith.addi"(%4, %5) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    %7 = "tensor.insert"(%6, %3, %1) : (i32, tensor<2xi32>, index) -> tensor<2xi32>
    %8 = "tensor.extract"(%arg2, %2) : (tensor<2xi32>, index) -> i32
    %9 = "tensor.extract"(%arg3, %2) : (tensor<2xi32>, index) -> i32
    %10 = "arith.addi"(%8, %9) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    %11 = "tensor.insert"(%10, %7, %2) : (i32, tensor<2xi32>, index) -> tensor<2xi32>
    "func.return"(%11) : (tensor<2xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>, sym_name = "test_materialize"}> ({
  ^bb0(%arg0: tensor<2xi32>, %arg1: tensor<2xi32>):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith.overflow<none>}> : (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>
    "func.return"(%0) : (tensor<2xi32>) -> ()
  }) : () -> ()
}) : () -> ()

