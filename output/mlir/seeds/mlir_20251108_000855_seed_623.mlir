"builtin.module"() ({
  "func.func"() <{function_type = (i32, vector<16xi8>, tensor<2x2xi32>) -> memref<2x2xi32>, sym_name = "complex_op_chain"}> ({
  ^bb0(%arg0: i32, %arg1: vector<16xi8>, %arg2: tensor<2x2xi32>):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %2 = "arith.constant"() <{value = 0 : index}> : () -> index
    %3 = "arith.constant"() <{value = 1 : index}> : () -> index
    %4 = "memref.alloca"() <{alignment = 4 : i64, memref_type = memref<2x2xi32>}> : () -> memref<2x2xi32>
    "memref.store"(%arg2, %4, %2, %3) <{align = 4 : i64}> : (tensor<2x2xi32>, memref<2x2xi32>, index, index) -> ()
    %5 = "memref.load"(%4, %2, %3) <{align = 4 : i64}> : (memref<2x2xi32>, index, index) -> i32
    %6 = "arith.addi"(%5, %1) : (i32, i32) -> i32
    "memref.store"(%6, %4, %2, %3) <{align = 4 : i64}> : (i32, memref<2x2xi32>, index, index) -> ()
    %7 = "memref.load"(%4, %2, %3) <{align = 4 : i64}> : (memref<2x2xi32>, index, index) -> i32
    "func.return"(%4) : (memref<2x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()