"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>, sym_name = "mixed_ops"}> ({
  ^bb0(%arg0: tensor<128xi32>, %arg1: tensor<128xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %1 = "arith.subi"(%0, %arg0) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %2 = "arith.muli"(%1, %arg1) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %3 = "arith.cmpi"(%2, %arg0) <{predicate = 1 : i64}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi1>
    %4 = "arith.select"(%3, %2, %arg0) : (tensor<128xi1>, tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    "tt.return"(%4) : (tensor<128xi32>) -> ()
  }) : () -> ()
}) : () -> ()

"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<32xi8>, tensor<32xi8>) -> tensor<32xi8>, sym_name = "byte_ops"}> ({
  ^bb0(%arg0: tensor<32xi8>, %arg1: tensor<32xi8>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<32xi8>, tensor<32xi8>) -> tensor<32xi8>
    %1 = "arith.subi"(%0, %arg0) : (tensor<32xi8>, tensor<32xi8>) -> tensor<32xi8>
    %2 = "arith.muli"(%1, %arg1) : (tensor<32xi8>, tensor<32xi8>) -> tensor<32xi8>
    %3 = "arith.cmpi"(%2, %arg0) <{predicate = 1 : i64}> : (tensor<32xi8>, tensor<32xi8>) -> tensor<32xi1>
    %4 = "arith.select"(%3, %2, %arg0) : (tensor<32xi1>, tensor<32xi8>, tensor<32xi8>) -> tensor<32xi8>
    "tt.return"(%4) : (tensor<32xi8>) -> ()
  }) : () -> ()
}) : () -> ()

"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "int_ops"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %1 = "arith.subi"(%0, %arg0) : (i32, i32) -> i32
    %2 = "arith.muli"(%1, %arg1) : (i32, i32) -> i32
    %3 = "arith.cmpi"(%2, %arg0) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %4 = "arith.select"(%3, %2, %arg0) : (i1, i32, i32) -> i32
    "tt.return"(%4) : (i32) -> ()
  }) : () -> ()
}) : () -> ()