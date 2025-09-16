"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<i16>, sym_name = "cast_int_to_int_trunc"}> ({
    %0 = "tosa.const"() <{values = dense<-1> : tensor<i32>}> : () -> tensor<i32>
    %1 = "tosa.cast"(%0) : (tensor<i32>) -> tensor<i16>
    "func.return"(%1) : (tensor<i16>) -> ()
  }) : () -> ()
}) : () -> ()

