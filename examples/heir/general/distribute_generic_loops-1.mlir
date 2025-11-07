"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}], function_type = (tensor<32xi16>) -> i16, sym_name = "simple_sum"}> ({
  ^bb0(%arg0: tensor<32xi16>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 0 : i16}> : () -> i16
    %2 = "arith.constant"() <{value = 32 : index}> : () -> index
    %3 = "arith.constant"() <{value = 1 : index}> : () -> index
    %4 = "scf.for"(%0, %2, %3, %1) ({
    ^bb0(%arg1: index, %arg2: i16):
      %5 = "tensor.extract"(%arg0, %arg1) : (tensor<32xi16>, index) -> i16
      %6 = "arith.addi"(%5, %arg2) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
      "scf.yield"(%6) : (i16) -> ()
    }) : (index, index, index, i16) -> i16
    "func.return"(%4) : (i16) -> ()
  }) : () -> ()
}) : () -> ()

