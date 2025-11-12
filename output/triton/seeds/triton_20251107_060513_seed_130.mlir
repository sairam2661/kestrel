"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.divisibility = 8 : i32}, {tt.divisibility = 4 : i32}], function_type = (i32, i32, i32) -> i32, sym_name = "complex_reduce"}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: i32):
    %0 = "tt.make_range"() <{end = 16 : i32, start = 0 : i32}> : () -> tensor<16xi32>
    %1 = "arith.constant"() <{value = dense<2> : tensor<16xi32>}> : () -> tensor<16xi32>
    %2 = "arith.constant"() <{value = dense<3> : tensor<16xi32>}> : () -> tensor<16xi32>
    %3 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %4 = "arith.addi"(%arg1, %arg2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %5 = "arith.xori"(%arg0, %arg2) : (i32, i32) -> i32
    %6 = "arith.cmpi"(%3, %4) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %7 = "arith.divsi"(%arg1, %arg2) <{signedness = #arith_signedness_signed}> : (i32, i32) -> i32
    %8 = "arith.select"(%6, %arg0, %arg2) : (i1, i32, i32) -> i32
    %9 = "tt.reduce"(%0) <{axis = 0 : i32}> ({
    ^bb1(%arg3: i32, %arg4: i32):
      %10 = "arith.addi"(%arg3, %arg4) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "tt.reduce.return"(%10) : (i32) -> ()
    }) : (tensor<16xi32>) -> i32
    "tt.return"(%9) : (i32) -> ()
  }) : () -> ()
}) : () -> ()


"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.divisibility = 16 : i32}], function_type = (i32, i32, i32) -> i32, sym_name = "mixed_types"}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: i32):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %3 = "arith.subi"(%arg0, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %4 = "arith.divsi"(%arg1, %1) <{signedness = #arith_signedness_signed}> : (i32, i32) -> i32
    %5 = "arith.xori"(%arg2, %2) : (i32, i32) -> i32
    %6 = "arith.cmpi"(%3, %4) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %7 = "arith.select"(%6, %arg0, %arg2) : (i1, i32, i32) -> i32
    "scf.if"(%6) ({
      ^bb1:
        "scf.for"(%7, %7, %arg1) ({
        ^bb0(%arg3: i32, %arg4: i32):
          %8 = "arith.addi"(%arg3, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
          "scf.yield"(%8) : (i32) -> ()
        }) : (i32, i32, i32) -> ()
        "scf.yield"() : () -> ()
    }, {
      ^bb2:
        "scf.yield"() : () -> ()
    }) : (i1) -> ()
    "tt.return"(%7) : (i32) -> ()
  }) : () -> ()
}) : () -> ()