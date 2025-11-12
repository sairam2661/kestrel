"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10xi64>, i64) -> tensor<10xi64>, sym_name = "tensor_manipulation"}> ({
  ^bb0(%arg0: tensor<10xi64>, %arg1: i64):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %4 = "arith.constant"() <{value = 4 : index}> : () -> index
    %5 = "arith.constant"() <{value = 5 : index}> : () -> index
    %6 = "arith.constant"() <{value = 6 : index}> : () -> index
    %7 = "arith.constant"() <{value = 7 : index}> : () -> index
    %8 = "arith.constant"() <{value = 8 : index}> : () -> index
    %9 = "arith.constant"() <{value = 9 : index}> : () -> index
    %10 = "arith.constant"() <{value = 10 : index}> : () -> index
    %11 = "arith.constant"() <{value = -1 : i64}> : () -> i64
    %12 = "arith.constant"() <{value = 2 : i64}> : () -> i64
    %13 = "arith.constant"() <{value = 3 : i64}> : () -> i64
    %14 = "arith.addi"(%arg1, %12) <{overflowFlags = #arith_overflowflags} > : (i64, i64) -> i64
    %15 = "arith.addi"(%14, %13) <{overflowFlags = #arith_overflowflags} > : (i64, i64) -> i64
    %16 = "scf.for"(%0, %10, %1, %15) ({
    ^bb0(%arg2: index, %arg3: tensor<10xi64>):
      %17 = "tensor.extract"(%arg3, %arg2) : (tensor<10xi64>, index) -> i64
      %18 = "arith.addi"(%17, %arg1) <{overflowFlags = #arith_overflowflags} > : (i64, i64) -> i64
      %19 = "tensor.insert"(%18, %arg3, %arg2) : (i64, tensor<10xi64>, index) -> tensor<10xi64>
      "scf.yield"(%19) : (tensor<10xi64>) -> ()
    }) {lower = 0 : i64, upper = 10 : i64} : (index, index, index, tensor<10xi64>) -> tensor<10xi64>
    "func.return"(%16) : (tensor<10xi64>) -> ()
  }) : () -> ()
}) : () -> ()


"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "conditional_add"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.cmpi"(%arg0, %arg1) <{predicate = 5 : i64}> : (i32, i32) -> i1
    %1 = "scf.if"(%0) ({
    ^bb0(%arg2: i1):
      %2 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflowflags} > : (i32, i32) -> i32
      "scf.yield"(%2) : (i32) -> ()
    }, {
      %3 = "arith.subi"(%arg0, %arg1) <{overflowFlags = #arith_overflowflags} > : (i32, i32) -> i32
      "scf.yield"(%3) : (i32) -> ()
    }) : (i1) -> i32
    "func.return"(%1) : (i32) -> ()
  }) : () -> ()
}) : () -> ()


"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5xi32>, tensor<5xi32>, i32) -> tensor<5xi32>, sym_name = "elementwise_operation"}> ({
  ^bb0(%arg0: tensor<5xi32>, %arg1: tensor<5xi32>, %arg2: i32):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %4 = "arith.constant"() <{value = 4 : index}> : () -> index
    %5 = "arith.constant"() <{value = 5 : index}> : () -> index
    %6 = "scf.for"(%0, %5, %1, %arg2) ({
    ^bb0(%arg3: index, %arg4: tensor<5xi32>):
      %7 = "tensor.extract"(%arg0, %arg3) : (tensor<5xi32>, index) -> i32
      %8 = "tensor.extract"(%arg1, %arg3) : (tensor<5xi32>, index) -> i32
      %9 = "arith.mul"(%7, %8) : (i32, i32) -> i32
      %10 = "tensor.insert"(%9, %arg4, %arg3) : (i32, tensor<5xi32>, index) -> tensor<5xi32>
      "scf.yield"(%10) : (tensor<5xi32>) -> ()
    }) {lower = 0 : i64, upper = 5 : i64} : (index, index, index, tensor<5xi32>) -> tensor<5xi32>
    "func.return"(%6) : (tensor<5xi32>) -> ()
  }) : () -> ()
}) : () -> ()