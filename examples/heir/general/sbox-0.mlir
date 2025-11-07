"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}], function_type = (i8) -> i8, sym_name = "sub_bytes"}> ({
  ^bb0(%arg0: i8):
    %0 = "arith.constant"() <{value = dense<[99, 124, 119, 123, -14, 107, 111, -59]> : tensor<8xi8>}> : () -> tensor<8xi8>
    %1 = "arith.index_cast"(%arg0) : (i8) -> index
    %2 = "tensor.extract"(%0, %1) : (tensor<8xi8>, index) -> i8
    "func.return"(%2) : (i8) -> ()
  }) : () -> ()
}) : () -> ()

