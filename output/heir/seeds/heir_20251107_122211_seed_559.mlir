"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>, sym_name = "tensor_add_with_conditional"}> ({
  ^bb0(%arg0: tensor<10xi32>, %arg1: tensor<10xi32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 10 : index}> : () -> index
    %2 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %3 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %4 = "tensor.empty"() <{type = tensor<10xi32>}> : () -> tensor<10xi32>
    %5 = "scf.for"(%0, %1, %0, %4) ({
    ^bb0(%arg2: index, %arg3: tensor<10xi32>):
      %6 = "tensor.extract"(%arg0, %arg2) : (tensor<10xi32>, index) -> i32
      %7 = "tensor.extract"(%arg1, %arg2) : (tensor<10xi32>, index) -> i32
      %8 = "arith.cmpi"(%6, %3) <{predicate = 0 : i64}> : (i32, i32) -> i1
      %9 = "scf.if"(%8) ({
        %10 = "arith.addi"(%6, %7) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
        "scf.yield"(%10) : (i32) -> ()
      }, {
        "scf.yield"(%3) : (i32) -> ()
      }) : (i1) -> i32
      %11 = "tensor.insert"(%9, %arg3, %arg2) : (i32, tensor<10xi32>, index) -> tensor<10xi32>
      "scf.yield"(%arg2, %11) : (index, tensor<10xi32>) -> ()
    }) {lower = 0 : i64, upper = 10 : i64} : (index, index, index, tensor<10xi32>) -> tensor<10xi32>
    "func.return"(%5) : (tensor<10xi32>) -> ()
  }) : () -> ()
}) : () -> ()