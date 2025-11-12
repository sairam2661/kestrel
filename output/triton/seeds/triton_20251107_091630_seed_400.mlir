"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "fuzz_complex"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %1 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %3:3 = "scf.for"(%arg0, %1, %2, %arg0, %arg0, %arg0) ({
    ^bb0(%arg2: i32, %arg3: i32, %arg4: i32, %arg5: i32, %arg6: i32):
      %4 = "arith.addi"(%arg5, %arg3) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
      %5 = "arith.xori"(%arg6, %arg4) : (i32, i32) -> i32
      %6 = "scf.if"(%arg5) ({
        %7 = "arith.cmpi"(%arg4, %arg6) <{predicate = 1 : i64}> : (i32, i32) -> i1
        ^bb0:
          "scf.yield"(%7) : (i1) -> ()
      }, {
        %7 = "arith.cmpi"(%arg4, %arg6) <{predicate = 0 : i64}> : (i32, i32) -> i1
        ^bb0:
          "scf.yield"(%7) : (i1) -> ()
      }) : (i1) -> i1
      %8 = "arith.select"(%6, %arg4, %arg5) : (i1, i32, i32) -> i32
      "scf.yield"(%4, %5, %8) : (i32, i32, i32) -> ()
    }) : (i32, i32, i32, i32, i32) -> (i32, i32, i32)
    %9 = "arith.subi"(%3#0, %3#1) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    "tt.return"(%9) : (i32) -> ()
  }) : () -> ()
  "tt.func"() <{function_type = (i32) -> (i32, i32), sym_name = "fuzz_tensor"}> ({
  ^bb0(%arg0: i32):
    %1 = "tt.make_range"(%arg0) <{start = 0 : i32, end = 10 : i32, step = 1 : i32}> : (i32) -> tensor<10xi32>
    %2 = "tt.expand_dims"(%1, 0) : (tensor<10xi32>) -> tensor<1x10xi32>
    %3 = "tt.reduce"(%2, "arith.addi") <{dimensions = [0], keepdims = 1 : i1}> : (tensor<1x10xi32>, tensor<1x10xi32>) -> tensor<1xi32>
    "tt.return"(%3#0, %3#1) : (i32, i32) -> ()
  }) : () -> ()
}) : () -> ()