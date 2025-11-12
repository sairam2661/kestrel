"builtin.module"() ({
  "tt.func"() <{function_type = (!tt_ptr, tensor<32x32xf32>, tensor<16x16xf32>, tensor<8x8xf32>) -> (!tt_ptr), sym_name = "nested_reduce_and_call"}> ({
  ^bb0(%arg0: !tt_ptr, %arg1: tensor<32x32xf32>, %arg2: tensor<16x16xf32>, %arg3: tensor<8x8xf32>):
    %c0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %c1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %c32 = "arith.constant"() <{value = 32 : i32}> : () -> i32
    %c16 = "arith.constant"() <{value = 16 : i32}> : () -> i32
    %c8 = "arith.constant"() <{value = 8 : i32}> : () -> i32

    %0 = "tt.reduce"(%arg1) <{axis = 0 : i32}> ({
    ^bb0(%arg4: f32, %arg5: f32):
      %6 = "arith.addf"(%arg4, %arg5) : (f32, f32) -> f32
      "tt.reduce.return"(%6) : (f32) -> ()
    }) : (tensor<32x32xf32>) -> tensor<32xf32>

    %1 = "tt.reduce"(%arg2) <{axis = 0 : i32}> ({
    ^bb0(%arg6: f32, %arg7: f32):
      %8 = "arith.addf"(%arg6, %arg7) : (f32, f32) -> f32
      "tt.reduce.return"(%8) : (f32) -> ()
    }) : (tensor<16x16xf32>) -> tensor<16xf32>

    %2 = "tt.reduce"(%arg3) <{axis = 0 : i32}> ({
    ^bb0(%arg8: f32, %arg9: f32):
      %10 = "arith.addf"(%arg8, %arg9) : (f32, f32) -> f32
      "tt.reduce.return"(%10) : (f32) -> ()
    }) : (tensor<8x8xf32>) -> tensor<8xf32>

    %3:2 = "scf.for"(%c0, %c8, %c32, %c0, %c0, %c0) ({
    ^bb0(%arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32):
      %16 = "arith.addi"(%arg10, %c1) : (i32, i32) -> i32
      %17 = "arith.addi"(%arg11, %c1) : (i32, i32) -> i32
      %18 = "arith.addi"(%arg12, %c1) : (i32, i32) -> i32
      %19 = "arith.addi"(%arg13, %c1) : (i32, i32) -> i32
      %20 = "arith.addi"(%arg14, %c1) : (i32, i32) -> i32
      %21 = "arith.addi"(%arg15, %c1) : (i32, i32) -> i32
      "scf.yield"(%16, %17, %18, %19, %20, %21) : (i32, i32, i32, i32, i32, i32) -> ()
    }) : (i32, i32, i32, i32, i32, i32) -> (i32, i32, i32, i32, i32, i32)

    %22 = "tt.call"() <{function = @another_func, arguments = ["%arg0", "%0", "%1", "%2"]}> : () -> !tt_ptr
    "tt.return"(%22) : (!tt_ptr) -> ()
  }) : () -> ()

  "tt.func"() <{function_type = (!tt_ptr, tensor<32xf32>, tensor<16xf32>, tensor<8xf32>) -> (), sym_name = "another_func"}> ({
  ^bb0(%arg0: !tt_ptr, %arg1: tensor<32xf32>, %arg2: tensor<16xf32>, %arg3: tensor<8xf32>):
    %c0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %c1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %c32 = "arith.constant"() <{value = 32 : i32}> : () -> i32
    %c16 = "arith.constant"() <{value = 16 : i32}> : () -> i32
    %c8 = "arith.constant"() <{value = 8 : i32}> : () -> i32

    %4 = "tt.reduce"(%arg1) <{axis = 0 : i32}> ({
    ^bb0(%arg4: f32, %arg5: f32):
      %6 = "arith.addf"(%arg4, %arg5) : (f32, f32) -> f32
      "tt.reduce.return"(%6) : (f32) -> ()
    }) : (tensor<32xf32>) -> tensor<32xf32>

    %5 = "tt.reduce"(%arg2) <{axis = 0 : i32}> ({
    ^bb0(%arg6: f32, %arg7: f32):
      %8 = "arith.addf"(%arg6, %arg7) : (f32, f32) -> f32
      "tt.reduce.return"(%8) : (f32) -> ()
    }) : (tensor<16xf32>) -> tensor<16xf32>

    %6 = "tt.reduce"(%arg3) <{axis = 0 : i32}> ({
    ^bb0(%arg8: f32, %arg9: f32):
      %10 = "arith.addf"(%arg8, %arg9) : (f32, f32) -> f32
      "tt.reduce.return"(%10) : (f32) -> ()
    }) : (tensor<8xf32>) -> tensor<8xf32>

    "tt.return"() : () -> ()
  }) : () -> ()

}) : () -> ()