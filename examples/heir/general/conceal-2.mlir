"builtin.module"() ({
  "func.func"() <{function_type = (memref<3xi2>) -> !secret.secret<memref<3xi2>>, sym_name = "conceal_memref_iN"}> ({
  ^bb0(%arg0: memref<3xi2>):
    %0 = "secret.conceal"(%arg0) : (memref<3xi2>) -> !secret.secret<memref<3xi2>>
    "func.return"(%0) : (!secret.secret<memref<3xi2>>) -> ()
  }) : () -> ()
}) : () -> ()

