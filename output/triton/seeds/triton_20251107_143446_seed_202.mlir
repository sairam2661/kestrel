"builtin.module"() ({
  "tt.func"() <{function_type = (i32, tensor<4xi32>) -> (i32, tensor<4xi32>), sym_name = "complex_arithmetic"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<4xi32>):
    %0 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflow_NONE}> : (i32, i32) -> i32
    %2 = "arith.divsi"(%arg0, %0) <{overflowFlags = #arith_overflow_NONE}> : (i32, i32) -> i32
    %3 = "arith.remsi"(%arg0, %0) <{overflowFlags = #arith_overflow_NONE}> : (i32, i32) -> i32
    %4 = "arith.muli"(%arg0, %0) <{overflowFlags = #arith_overflow_NONE}> : (i32, i32) -> i32
    %5 = "tt.addptr"(%arg1, %arg0) <{alignment = 4 : i64}> : (tensor<4xi32>, i32) -> !tt_ptr
    %6 = "tt.make_range"() <{start = 0 : i32, end = 4 : i32}> : () -> tensor<4xi32>
    %7 = "tt.reduce"(%6, %arg1) <{operation = "add"}> ({
      ^bb0(%arg2: i32, %arg3: tensor<4xi32>):
        %8 = "arith.addi"(%arg2, %arg3) <{overflowFlags = #arith_overflow_NONE}> : (i32, i32) -> i32
        "scf.yield"(%8) : (i32) -> ()
    }) : (tensor<4xi32>, tensor<4xi32>) -> i32
    "scf.if"(%1) ({
      %9 = "arith.select"(%1, %2, %3) : (i32, i32, i32) -> i32
      "scf.yield"(%9) : (i32) -> ()
    }, {
      %10 = "arith.select"(%2, %3, %4) : (i32, i32, i32) -> i32
      "scf.yield"(%10) : (i32) -> ()
    }) : (i32) -> i32
    "tt.return"(%1, %5) : (i32, !tt_ptr) -> ()
  }) : () -> ()
}) : () -> ()