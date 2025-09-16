"builtin.module"() ({
  "func.func"() <{function_type = (memref<*xi8>) -> memref<*xi8>, sym_name = "hoo", sym_visibility = "private"}> ({
  }) : () -> ()
  "func.func"() <{function_type = (memref<*xi8>) -> memref<*xi8>, sym_name = "check_unranked_memref_func_call"}> ({
  ^bb0(%arg0: memref<*xi8>):
    %0 = "func.call"(%arg0) <{callee = @hoo}> : (memref<*xi8>) -> memref<*xi8>
    "func.return"(%0) : (memref<*xi8>) -> ()
  }) : () -> ()
}) : () -> ()

