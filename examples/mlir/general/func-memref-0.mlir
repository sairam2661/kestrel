"builtin.module"() ({
  "func.func"() <{arg_attrs = [{llvm.noalias}, {llvm.noalias}], function_type = (memref<2xf32>, memref<2xf32>) -> (), sym_name = "check_noalias"}> ({
  ^bb0(%arg0: memref<2xf32>, %arg1: memref<2xf32>):
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

