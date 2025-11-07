"builtin.module"() ({
  "func.func"() <{function_type = (!secret.secret<tensor<32xi16>>, !secret.secret<index>) -> !secret.secret<i16>, sym_name = "for_loop_with_data_dependent_lower_bound"}> ({
  ^bb0(%arg0: !secret.secret<tensor<32xi16>>, %arg1: !secret.secret<index>):
    %0 = "arith.constant"() <{value = 32 : index}> : () -> index
    %1 = "arith.constant"() <{value = 0 : i16}> : () -> i16
    %2 = "arith.constant"() <{value = 1 : index}> : () -> index
    %3 = "secret.generic"(%arg0, %arg1) ({
    ^bb0(%arg2: tensor<32xi16>, %arg3: index):
      %4 = "scf.for"(%arg3, %0, %2, %1) ({
      ^bb0(%arg4: index, %arg5: i16):
        %5 = "tensor.extract"(%arg2, %arg4) : (tensor<32xi16>, index) -> i16
        %6 = "arith.addi"(%5, %arg5) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
        "scf.yield"(%6) : (i16) -> ()
      }) : (index, index, index, i16) -> i16
      "secret.yield"(%4) : (i16) -> ()
    }) : (!secret.secret<tensor<32xi16>>, !secret.secret<index>) -> !secret.secret<i16>
    "func.return"(%3) : (!secret.secret<i16>) -> ()
  }) : () -> ()
}) : () -> ()

