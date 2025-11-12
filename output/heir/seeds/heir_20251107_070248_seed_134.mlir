"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5xi32>, tensor<5xi32>) -> tensor<5xi32>, sym_name = "mixed_operations"}> ({
  ^bb0(%arg0: tensor<5xi32>, %arg1: tensor<5xi32>):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "tensor.extract"(%arg0, %0) : (tensor<5xi32>, index) -> i32
    %2 = "scf.if"(%1) ({
      %3 = "arith.constant"() <{value = 100 : i32}> : () -> i32
      "scf.yield"(%3) : (i32) -> ()
    }, {
      %4 = "arith.constant"() <{value = 200 : i32}> : () -> i32
      "scf.yield"(%4) : (i32) -> ()
    }) : (i32) -> i32
    %5 = "arith.addi"(%1, %2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %6 = "tensor.insert"(%5, %arg1, %0) : (i32, tensor<5xi32>, index) -> tensor<5xi32>
    %7 = "scf.for"(%0, %0, %0, %5) ({
    ^bb0(%arg2: index, %arg3: i32):
      %8 = "arith.muli"(%arg3, %2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%8) : (i32) -> ()
    }) {lower = 0 : i64, upper = 5 : i64} : (index, index, index, i32) -> i32
    %9 = "tensor.insert"(%7, %arg0, %0) : (i32, tensor<5xi32>, index) -> tensor<5xi32>
    "func.return"(%9) : (tensor<5xi32>) -> ()
  }) : () -> ()
}) : () -> ()