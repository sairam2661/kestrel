"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}, {}], function_type = (tensor<32xi16>, index) -> i16, sym_name = "simple_sum_bound"}> ({
  ^bb0(%arg0: tensor<32xi16>, %arg1: index):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 0 : i16}> : () -> i16
    %2 = "arith.constant"() <{value = 1 : index}> : () -> index
    %3 = "scf.for"(%0, %arg1, %2, %1) ({
    ^bb0(%arg2: index, %arg3: i16):
      %4 = "tensor.extract"(%arg0, %arg2) : (tensor<32xi16>, index) -> i16
      %5 = "arith.addi"(%4, %arg3) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
      "scf.yield"(%5) : (i16) -> ()
    }) : (index, index, index, i16) -> i16
    "func.return"(%3) : (i16) -> ()
  }) : () -> ()
}) : () -> ()

