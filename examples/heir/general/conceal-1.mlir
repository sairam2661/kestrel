"builtin.module"() ({
  "func.func"() <{function_type = (memref<3xi1>) -> !secret.secret<memref<3xi1>>, sym_name = "conceal_memref"}> ({
  ^bb0(%arg0: memref<3xi1>):
    %0 = "secret.conceal"(%arg0) : (memref<3xi1>) -> !secret.secret<memref<3xi1>>
    "func.return"(%0) : (!secret.secret<memref<3xi1>>) -> ()
  }) : () -> ()
}) : () -> ()

