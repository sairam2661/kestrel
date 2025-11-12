"builtin.module"() ({
  "func.func"() <{function_type = (i32, i8) -> (i32, vector<4xi8>), sym_name = "complex_op_chain"}> ({
  ^bb0(%arg0: i32, %arg1: i8):
    %0 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
    %1 = "arith.extui"(%arg1) : (i8) -> i32
    %2 = "arith.muli"(%0, %1) : (i32, i32) -> i32
    %3 = "arith.constant"() <{value = 4 : index}> : () -> index
    %4 = "memref.alloc"() <{type = vector<4xi8>, memref_size = 4}> : () -> memref<4xi8>
    %5 = "arith.constant"() <{value = 255 : i8}> : () -> i8
    %6 = "memref.store"(%5, %4, %3) : (i8, memref<4xi8>, index) -> ()
    "func.return"(%2, %4) : (i32, memref<4xi8>) -> ()
  }) : () -> ()
}) : () -> ()