"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64) -> i64, sym_name = "complexFunc"}> ({
  ^bb0(%arg0: i32, %arg1: i64):
    %0 = "arith.addi"(%arg0, %arg1) : (i32, i64) -> i64
    %1 = "arith.muli"(%arg0, %arg0) : (i32, i32) -> i32
    %2 = "arith.extsi"(%1) : (i32) -> i64
    %3 = "arith.addi"(%0, %2) : (i64, i64) -> i64
    %4 = "arith.subi"(%3, %arg1) : (i64, i64) -> i64
    "func.return"(%4) : (i64) -> ()
  }) : () -> ()
}) : () -> ()


"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3xi8>, tensor<3xi16>) -> tensor<3xi32>, sym_name = "tensorFunc"}> ({
  ^bb0(%arg0: tensor<3xi8>, %arg1: tensor<3xi16>):
    %0 = "arith.extui"(%arg0) : (tensor<3xi8>) -> tensor<3xi32>
    %1 = "arith.extui"(%arg1) : (tensor<3xi16>) -> tensor<3xi32>
    %2 = "arith.addi"(%0, %1) : (tensor<3xi32>, tensor<3xi32>) -> tensor<3xi32>
    "func.return"(%2) : (tensor<3xi32>) -> ()
  }) : () -> ()
}) : () -> ()


"builtin.module"() ({
  "func.func"() <{function_type = (index, index) -> index, sym_name = "indexFunc"}> ({
  ^bb0(%arg0: index, %arg1: index):
    %0 = "arith.addi"(%arg0, %arg1) : (index, index) -> index
    %1 = "arith.subi"(%0, %arg0) : (index, index) -> index
    %2 = "arith.addi"(%1, %arg1) : (index, index) -> index
    "func.return"(%2) : (index) -> ()
  }) : () -> ()
}) : () -> ()


"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2x2xi32>, tensor<2x2x2xi32>) -> tensor<2x2x2xi32>, sym_name = "multiDimTensorFunc"}> ({
  ^bb0(%arg0: tensor<2x2x2xi32>, %arg1: tensor<2x2x2xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<2x2x2xi32>, tensor<2x2x2xi32>) -> tensor<2x2x2xi32>
    %1 = "arith.subi"(%arg0, %arg1) : (tensor<2x2x2xi32>, tensor<2x2x2xi32>) -> tensor<2x2x2xi32>
    %2 = "arith.addi"(%0, %1) : (tensor<2x2x2xi32>, tensor<2x2x2xi32>) -> tensor<2x2x2xi32>
    "func.return"(%2) : (tensor<2x2x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()


"builtin.module"() ({
  "func.func"() <{function_type = (i8, i16, i32) -> i64, sym_name = "mixedIntFunc"}> ({
  ^bb0(%arg0: i8, %arg1: i16, %arg2: i32):
    %0 = "arith.extsi"(%arg0) : (i8) -> i32
    %1 = "arith.extsi"(%arg1) : (i16) -> i32
    %2 = "arith.addi"(%0, %1) : (i32, i32) -> i32
    %3 = "arith.addi"(%2, %arg2) : (i32, i32) -> i32
    %4 = "arith.extsi"(%3) : (i32) -> i64
    "func.return"(%4) : (i64) -> ()
  }) : () -> ()
}) : () -> ()