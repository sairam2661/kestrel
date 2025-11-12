"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<32x32xi8>, tensor<32x32xi8>, tensor<32x32xi8>) -> tensor<32x32xi8>, sym_name = "complex_op_sequence"}> ({
  ^bb0(%arg0: tensor<32x32xi8>, %arg1: tensor<32x32xi8>, %arg2: tensor<32x32xi8>):
    %0 = "ttg.global_scratch_alloc"() <{size = 1048576 : i32}> : () -> memref<1048576xi8>
    %1 = "arith.addi"(%arg0, %arg1) : (tensor<32x32xi8>, tensor<32x32xi8>) -> tensor<32x32xi8>
    %2 = "arith.muli"(%1, %arg2) : (tensor<32x32xi8>, tensor<32x32xi8>) -> tensor<32x32xi8>
    %3 = "arith.constant"() <{value = dense<255> : tensor<32x32xi8>}> : () -> tensor<32x32xi8>
    %4 = "arith.andi"(%2, %3) : (tensor<32x32xi8>, tensor<32x32xi8>) -> tensor<32x32xi8>
    %5 = "ttg.global_scratch_alloc"() <{size = 1048576 : i32}> : () -> memref<1048576xi8>
    %6 = "arith.xori"(%4, %arg0) : (tensor<32x32xi8>, tensor<32x32xi8>) -> tensor<32x32xi8>
    %7 = "ttg.global_scratch_alloc"() <{size = 1048576 : i32}> : () -> memref<1048576xi8>
    %8 = "arith.orc"(%6, %arg1) : (tensor<32x32xi8>, tensor<32x32xi8>) -> tensor<32x32xi8>
    "tt.return"(%8) : (tensor<32x32xi8>) -> ()
  }) : () -> ()
}) : () -> ()