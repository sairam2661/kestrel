"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> i32, sym_name = "complex_arithmetic_flow"}> ({
  ^bb0(%arg0: i32):
    %1 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %2 = "arith.addi"(%arg0, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %3 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %4 = "arith.subi"(%2, %3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %5 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %6 = "arith.muli"(%4, %5) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %7 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %8 = "arith.addi"(%6, %7) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %9 = "arith.constant"() <{value = 15 : i32}> : () -> i32
    %10 = "arith.cmpi"(%8, %9, "slt") : (i32, i32) -> i1
    %11 = "arith.constant"() <{value = 100 : i32}> : () -> i32
    %12 = "arith.constant"() <{value = 200 : i32}> : () -> i32
    %13 = "arith.select"(%10, %11, %12) : (i1, i32, i32) -> i32
    "func.return"(%13) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "nested_scf_for"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %2 = "arith.constant"() <{value = 0 : index}> : () -> index
    %3 = "arith.constant"() <{value = 10 : index}> : () -> index
    %4 = "arith.constant"() <{value = 1 : index}> : () -> index
    "scf.for"(%2, %3, %4) ({
    ^bb0(%iv: index):
      %6 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      %7 = "arith.addi"(%arg0, %6) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %8 = "scf.for"(%2, %3, %4) ({
      ^bb0(%jv: index):
        %10 = "arith.addi"(%arg1, %7) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
        "scf.yield"() : () -> ()
      }) : (index) -> ()
      "scf.yield"() : () -> ()
    }) : (index) -> ()
    "func.return"(%arg0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()