"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<i32>, sym_name = "cast_int_to_int_sign"}> ({
    %0 = "tosa.const"() <{values = dense<-1> : tensor<i16>}> : () -> tensor<i16>
    %1 = "tosa.cast"(%0) : (tensor<i16>) -> tensor<i32>
    "func.return"(%1) : (tensor<i32>) -> ()
  }) : () -> ()
}) : () -> ()

