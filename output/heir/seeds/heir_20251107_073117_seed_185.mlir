"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi8>, i32) -> tensor<4xi8>, sym_name = "tensor_rotate_secret"}> ({
  ^bb0(%arg0: tensor<4xi8>, %arg1: i32):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %2 = "scf.if"(%arg1) <{result_types = [i32]}> ({
      ^bb0(%arg2: i1):
        %3 = "arith.addi"(%arg1, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
        "scf.yield"(%3) : (i32) -> ()
    }) : (i32) -> i32
    %4 = "tensor_ext.rotate"(%arg0, %2) <{axis = 0}> : (tensor<4xi8>, i32) -> tensor<4xi8>
    "func.return"(%4) : (tensor<4xi8>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<4xi8>, i32) -> tensor<4xi8>, sym_name = "tensor_rotate_public"}> ({
  ^bb0(%arg0: tensor<4xi8>, %arg1: i32):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %2 = "scf.if"(%arg1) <{result_types = [i32]}> ({
      ^bb0(%arg2: i1):
        %3 = "arith.addi"(%arg1, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
        "scf.yield"(%3) : (i32) -> ()
    }) : (i32) -> i32
    %4 = "tensor_ext.rotate"(%arg0, %2) <{axis = 0}> : (tensor<4xi8>, i32) -> tensor<4xi8>
    "func.return"(%4) : (tensor<4xi8>) -> ()
  }) : () -> ()
}) : () -> ()