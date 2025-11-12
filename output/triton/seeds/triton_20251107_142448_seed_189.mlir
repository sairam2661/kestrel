"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<32xi8>, tensor<32xi8>) -> tensor<32xi16>, sym_name = "vector_add_cast"}> ({
  ^bb0(%arg0: tensor<32xi8>, %arg1: tensor<32xi8>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<32xi8>, tensor<32xi8>) -> tensor<32xi8>
    %1 = "arith.extsi"(%0) : (tensor<32xi8>) -> tensor<32xi16>
    "tt.return"(%1) : (tensor<32xi16>) -> ()
  }) : () -> ()
}) : () -> ()