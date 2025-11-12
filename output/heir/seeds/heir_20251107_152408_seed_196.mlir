"builtin.module"() ({
  "func.func"() <{arg_attrs = [{tfhe_rust.encrypt}, {tfhe_rust.encrypt}], function_type = (!secret
  )
  ->
  !secret, sym_name = "encrypted_add"}> ({
  ^bb0(%arg0: !secret, %arg1: !secret):
    %0 = "tfhe_rust.add"(%arg0, %arg1) <{carry = false}> : (!secret, !secret) -> !secret
    "func.return"(%0) : (!secret) -> ()
  }) : () -> ()
}) : () -> ()