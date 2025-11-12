"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>, sym_name = "complex_rotate"}> ({
  ^bb0(%arg0: tensor<4x4xi32>, %arg1: tensor<4x4xi32>):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %2 = "tensor_ext.rotate"(%arg0, %0) : (tensor<4x4xi32>, i32) -> tensor<4x4xi32>
    %3 = "tensor_ext.rotate"(%2, %1) : (tensor<4x4xi32>, i32) -> tensor<4x4xi32>
    %4 = "arith.addi"(%3, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>
    "func.return"(%4) : (tensor<4x4xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32) -> i32, sym_name = "nested_condition"}> ({
  ^bb0(%arg0: i32):
    %0 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %1 = "arith.cmpi"(%arg0, %0, "slt") : (i32, i32) -> i1
    scf.if %1 : i1 -> ()  ^bb1(%t: i1):
      %2 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
      "scf.yield"(%2) : (i32) -> ()
    ^bb2:
      "scf.yield"(%arg0) : (i32) -> ()
    %3 = "scf.yield"(%3) : (i32) -> ()
    "func.return"(%3) : (i32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<2x2xi8>) -> tensor<2x2xi8>, sym_name = "byte_rotation"}> ({
  ^bb0(%arg0: tensor<2x2xi8>):
    %0 = "arith.constant"() <{value = -1 : i32}> : () -> i32
    %1 = "tensor_ext.rotate"(%arg0, %0) : (tensor<2x2xi8>, i32) -> tensor<2x2xi8>
    "func.return"(%1) : (tensor<2x2xi8>) -> ()
  }) : () -> ()
}) : () -> ()