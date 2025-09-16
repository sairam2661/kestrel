"builtin.module"() ({
  "builtin.module"() <{sym_name = "llvm_unreachable"}> ({
    "func.func"() <{function_type = (tensor<4x4xf32>) -> tensor<4x4xi1>, sym_name = "fn_with_llvm_unreachable", sym_visibility = "private"}> ({
    ^bb0(%arg1: tensor<4x4xf32>):
      "llvm.unreachable"() : () -> ()
    }) : () -> ()
    "func.func"() <{function_type = (tensor<4x4xf32>) -> (), sym_name = "main", sym_visibility = "private"}> ({
    ^bb0(%arg0: tensor<4x4xf32>):
      %0 = "func.call"(%arg0) <{callee = @fn_with_llvm_unreachable}> : (tensor<4x4xf32>) -> tensor<4x4xi1>
      "llvm.return"() : () -> ()
    }) : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "no_block_func_declaration", sym_visibility = "private"}> ({
  }) : () -> ()
}) : () -> ()

