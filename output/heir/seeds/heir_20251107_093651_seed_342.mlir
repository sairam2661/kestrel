"builtin.module"() ({
  "func.func"() <{function_type = (tensor<8xi8>, tensor<8xi8>) -> tensor<8xi8>, sym_name = "tensor_xor"}> ({
  ^bb0(%arg0: tensor<8xi8>, %arg1: tensor<8xi8>):
    %0 = "tensor.apply_elementwise"(%arg0, %arg1, "arith.xori") <{shape = [8]}> : (tensor<8xi8>, tensor<8xi8>, tensor<8xi8>) -> tensor<8xi8>
    "func.return"(%0) : (tensor<8xi8>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (index, index) -> index, sym_name = "mixed_add_and_mul"}> ({
  ^bb0(%arg0: index, %arg1: index):
    %0 = "arith.constant"() <{value = 2 : index}> : () -> index
    %1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_flagless}> : (index, index) -> index
    %2 = "arith.muli"(%1, %0) <{overflowFlags = #arith_overflow_flagless}> : (index, index) -> index
    "func.return"(%2) : (index) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "nested_if_else"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.cmpi"(%arg0, %arg1, "slt") : (i32, i32) -> i1
    %1:2 = "scf.if"(%0) ({
    ^bb0(%arg2: i1):
      %2 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_flagless}> : (i32, i32) -> i32
      "scf.yield"(%2) : (i32) -> ()
    }) : (i1) -> (i32)
    %3 = "arith.cmpi"(%arg0, %arg1, "sgt") : (i32, i32) -> i1
    %4:2 = "scf.if"(%3) ({
    ^bb0(%arg2: i1):
      %5 = "arith.subi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_flagless}> : (i32, i32) -> i32
      "scf.yield"(%5) : (i32) -> ()
    }) : (i1) -> (i32)
    "func.return"(%1#0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()