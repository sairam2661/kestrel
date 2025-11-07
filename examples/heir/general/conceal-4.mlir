"builtin.module"() ({
  "func.func"() <{function_type = (memref<3x3xi1>) -> !secret.secret<memref<3x3xi1>>, sym_name = "conceal_MxN"}> ({
  ^bb0(%arg0: memref<3x3xi1>):
    %0 = "secret.conceal"(%arg0) : (memref<3x3xi1>) -> !secret.secret<memref<3x3xi1>>
    "func.return"(%0) : (!secret.secret<memref<3x3xi1>>) -> ()
  }) : () -> ()
}) : () -> ()

