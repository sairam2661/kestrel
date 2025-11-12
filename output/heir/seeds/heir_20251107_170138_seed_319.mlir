"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}], function_type = (tensor<1024xi16>) -> tensor<1024xi16>, sym_name = "complex_addition"}> ({
  ^bb0(%arg0: tensor<1024xi16>):
    %1 = "arith.constant"() <{value = 42 : index}> : () -> index
    %2 = "tensor.extract"(%arg0, %1) : (tensor<1024xi16>, index) -> i16
    %3 = "arith.constant"() <{value = 21 : i16}> : () -> i16
    %4 = "arith.addi"(%2, %3) <{overflowFlags = #arith_overflow_flags}> : (i16, i16) -> i16
    %5 = "arith.constant"() <{value = 2 : index}> : () -> index
    %6 = "tensor.extract"(%arg0, %5) : (tensor<1024xi16>, index) -> i16
    %7 = "arith.addi"(%4, %6) <{overflowFlags = #arith_overflow_flags}> : (i16, i16) -> i16
    %8 = "tensor.insert"(%7, %arg0, %1) : (i16, tensor<1024xi16>, index) -> tensor<1024xi16>
    "func.return"(%8) : (tensor<1024xi16>) -> ()
  }) : () -> ()
}) : () -> ()