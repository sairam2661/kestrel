"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3xi32>, i32, i32) -> tensor<2x3xi32>, sym_name = "dynamic_tensor_insert_extract"}> ({
  ^bb0(%arg0: tensor<2x3xi32>, %arg1: i32, %arg2: i32):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %4 = "arith.constant"() <{value = 4 : index}> : () -> index
    %5 = "scf.if"(%arg1) ({
      %6 = "tensor.extract"(%arg0, %0, %1) : (tensor<2x3xi32>, index, index) -> i32
      %7 = "arith.addi"(%6, %arg2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%7) : (i32) -> ()
    }, {
      %8 = "tensor.extract"(%arg0, %2, %3) : (tensor<2x3xi32>, index, index) -> i32
      %9 = "arith.subi"(%8, %arg2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%9) : (i32) -> ()
    }) : (i32) -> i32
    %10 = "scf.if"(%arg2) ({
      %11 = "tensor.insert"(%5, %arg0, %0, %1) : (i32, tensor<2x3xi32>, index, index) -> tensor<2x3xi32>
      "scf.yield"(%11) : (tensor<2x3xi32>) -> ()
    }, {
      %12 = "tensor.insert"(%5, %arg0, %2, %3) : (i32, tensor<2x3xi32>, index, index) -> tensor<2x3xi32>
      "scf.yield"(%12) : (tensor<2x3xi32>) -> ()
    }) : (tensor<2x3xi32>) -> tensor<2x3xi32>
    "func.return"(%10) : (tensor<2x3xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32, i32, i32, i32) -> i32, sym_name = "complex_select"}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32):
    %0 = "arith.cmpi"(%arg0, %arg1) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %1 = "arith.cmpi"(%arg2, %arg3) <{predicate = 5 : i64}> : (i32, i32) -> i1
    %2 = "arith.andi"(%0, %1) : (i1, i1) -> i1
    %3 = "arith.select"(%2, %arg0, %arg1) : (i1, i32, i32) -> i32
    "func.return"(%3) : (i32) -> ()
  }) : () -> ()
}) : () -> ()