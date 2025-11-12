"builtin.module"() ({
  "func.func"() <{function_type = (tensor<8xi8>, !secretsecret) -> (i8, !secretsecret), sym_name = "complex_control_flow_with_secret"}> ({
  ^bb0(%arg0: tensor<8xi8>, %arg1: !secretsecret):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 8 : index}> : () -> index
    %2 = "arith.constant"() <{value = 1 : index}> : () -> index
    %3 = "arith.constant"() <{value = 42 : i8}> : () -> i8

    "scf.for"(%0, %1, %2, %3) ({
    ^bb0(%arg2: index, %arg3: i8):
      %4 = "tensor.extract"(%arg0, %arg2) : (tensor<8xi8>, index) -> i8
      %5 = "arith.addi"(%4, %arg3) <{overflowFlags = #arithoverflownone}> : (i8, i8) -> i8

      "scf.if"(%5) ({
      ^bb0:
        %6 = "arith.select"(%5, %5, %3) : (i8, i8, i8) -> i8
        "scf.yield"() : () -> ()
      }) {
      } : (i8) -> ()

      "scf.yield"(%5) : (i8) -> ()
    }) : (index, i8, index, i8) -> i8

    "func.return"(%3, %arg1) : (i8, !secretsecret) -> ()
  }) : () -> ()
}) : () -> ()