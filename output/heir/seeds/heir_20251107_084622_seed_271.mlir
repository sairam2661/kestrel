"builtin.module"() ({
  "func.func"() <{function_type = (!secretsecreti16, !secretsecreti16, !secretsecreti16) -> !secretsecreti16, sym_name = "complex_for_loops"}> ({
  ^bb0(%arg0: !secretsecreti16, %arg1: !secretsecreti16, %arg2: !secretsecreti16):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 0 : i16}> : () -> i16
    %2 = "arith.constant"() <{value = 1 : index}> : () -> index
    %3 = "secret.generic"(%arg0, %arg1, %arg2) ({
    ^bb0(%arg3: tensor<10x10xi16>, %arg4: tensor<10x10xi16>, %arg5: tensor<10x10xi16>):
      %6 = "scf.for"(%0, %arg3, %2, %1) ({
      ^bb0(%arg6: index, %arg7: tensor<10x10xi16>):
        %8 = "scf.for"(%0, %arg4, %2, %1) ({
        ^bb0(%arg9: index, %arg10: tensor<10x10xi16>):
          %11 = "arith.addi"(%arg7, %arg10) <{overflowFlags = #arith_overflownone}> : (tensor<10x10xi16>, tensor<10x10xi16>) -> tensor<10x10xi16>
          "scf.yield"(%11) : (tensor<10x10xi16>) -> ()
        }) {lower = 0 : i64, upper = 10 : i64} : (index, tensor<10x10xi16>) -> tensor<10x10xi16>
        %12 = "arith.addi"(%8, %arg5) <{overflowFlags = #arith_overflownone}> : (tensor<10x10xi16>, tensor<10x10xi16>) -> tensor<10x10xi16>
        "scf.yield"(%12) : (tensor<10x10xi16>) -> ()
      }) {lower = 0 : i64, upper = 10 : i64} : (index, tensor<10x10xi16>) -> tensor<10x10xi16>
      "secret.yield"(%6) : (tensor<10x10xi16>) -> ()
    }) : (!secretsecreti16, !secretsecreti16, !secretsecreti16) -> !secretsecreti16
    "func.return"(%3) : (!secretsecreti16) -> ()
  }) : () -> ()
}) : () -> ()