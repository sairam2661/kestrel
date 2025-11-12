"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi8>, tensor<16xi8>) -> (tensor<16xi8>), sym_name = "xor_and_nested_if"}> ({
  ^bb0(%arg0: tensor<16xi8>, %arg1: tensor<16xi8>):
    %0 = "arith.xori"(%arg0, %arg1) : (tensor<16xi8>, tensor<16xi8>) -> tensor<16xi8>
    %1 = "arith.constant"() <{value = 0 : i8}> : () -> i8
    %2 = "arith.constant"() <{value = 255 : i8}> : () -> i8
    "scf.for"(%1, %2, %1) ({
    ^bb0(%arg2: i8):
      %3 = "scf.if"(%arg2) ({
        %4 = "arith.addi"(%arg0, %arg1) : (tensor<16xi8>, tensor<16xi8>) -> tensor<16xi8>
        "scf.yield"(%4) : (tensor<16xi8>) -> ()
      }, {
        %5 = "arith.subi"(%arg0, %arg1) : (tensor<16xi8>, tensor<16xi8>) -> tensor<16xi8>
        "scf.yield"(%5) : (tensor<16xi8>) -> ()
      }) : (i8) -> tensor<16xi8>
      "scf.yield"() : () -> ()
    }) {tt.num_stages = 2 : i32} : (i8, i8, i8) -> ()
    "tt.return"(%0) : (tensor<16xi8>) -> ()
  }) : () -> ()
}) : () -> ()