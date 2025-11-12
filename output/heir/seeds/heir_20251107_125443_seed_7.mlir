"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "tensor_add_and_select"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %1 = "arith.constant"() <{value = 100 : i32}> : () -> i32
    %2 = "arith.cmpi"("slt", %0, %1) : (tensor<4xi32>, i32) -> tensor<4xi1>
    %3 = "arith.select"(%2, %0, %1) : (tensor<4xi1>, tensor<4xi32>, i32) -> tensor<4xi32>
    "func.return"(%3) : (tensor<4xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "int_add_and_select"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow}> : (i32, i32) -> i32
    %1 = "arith.constant"() <{value = 100 : i32}> : () -> i32
    %2 = "arith.cmpi"("slt", %0, %1) : (i32, i32) -> i1
    %3 = "arith.select"(%2, %0, %1) : (i1, i32, i32) -> i32
    "func.return"(%3) : (i32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<2xi16>, tensor<2xi16>) -> tensor<2xi16>, sym_name = "tensor_add_and_select_small"}> ({
  ^bb0(%arg0: tensor<2xi16>, %arg1: tensor<2xi16>):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow}> : (tensor<2xi16>, tensor<2xi16>) -> tensor<2xi16>
    %1 = "arith.constant"() <{value = 50 : i16}> : () -> i16
    %2 = "arith.cmpi"("slt", %0, %1) : (tensor<2xi16>, i16) -> tensor<2xi1>
    %3 = "arith.select"(%2, %0, %1) : (tensor<2xi1>, tensor<2xi16>, i16) -> tensor<2xi16>
    "func.return"(%3) : (tensor<2xi16>) -> ()
  }) : () -> ()
}) : () -> ()