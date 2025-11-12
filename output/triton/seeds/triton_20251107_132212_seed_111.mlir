"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.divisibility = 8 : i32}, {tt.divisibility = 4 : i32}], function_type = (i32, i32, i32) -> (i32, i32), sym_name = "complex_flow"}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: i32):
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 20 : i32}> : () -> i32
    %2 = "arith.cmpi"(%arg0, %arg1, "slt") : (i32, i32) -> i1
    %3:2 = "scf.if"(%2) ({
      %4 = "arith.addi"(%arg0, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %5:2 = "scf.for"(%arg2, %4, %1, "parallel") ({
      ^bb1(%arg3: i32):
        %6 = "arith.muli"(%arg3, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
        "scf.yield"() : () -> ()
      }) : (i32, i32, i32, i32) -> ()
      %7 = "arith.addi"(%4, %5#1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%4, %7) : (i32, i32) -> ()
    }, {
      %4 = "arith.subi"(%arg0, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %5 = "arith.xori"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%4, %5) : (i32, i32) -> ()
    }) : (i1) -> (i32, i32)
    "tt.return"(%3#0, %3#1) : (i32, i32) -> ()
  }) : () -> ()
}) : () -> ()