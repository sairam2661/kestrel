"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_interaction", sym_visibility = "public"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 10 : index}> : () -> index
    %2 = "arith.constant"() <{value = 1 : index}> : () -> index
    %3 = "scf.for"(%0, %1, %2, %arg0) ({
    ^bb0(%arg2: index, %arg3: i32):
      %4 = "arith.muli"(%arg3, %arg2) <{overflowFlags = #arith_overflownone}> : (i32, index) -> i32
      %5 = "arith.xori"(%4, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%5) : (i32) -> ()
    }) : (index, index, index, i32) -> i32
    "tt.return"(%3) : (i32) -> ()
  }) : () -> ()
}) : () -> ()


"builtin.module"() ({
  "tt.func"() <{function_type = (i32) -> i32, sym_name = "conditional_logic", sym_visibility = "public"}> ({
  ^bb0(%arg0: i32):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 5 : index}> : () -> index
    %2 = "arith.constant"() <{value = 1 : index}> : () -> index
    %3 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %4 = "arith.constant"() <{value = 20 : i32}> : () -> i32
    %5 = "scf.if"(%arg0) ({
    ^bb0:
      %6 = "arith.addi"(%arg0, %3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%6) : (i32) -> ()
    ^bb1:
      %7 = "arith.subi"(%arg0, %4) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%7) : (i32) -> ()
    }) : (i32) -> i32
    "tt.return"(%5) : (i32) -> ()
  }) : () -> ()
}) : () -> ()


"builtin.module"() ({
  "tt.func"() <{function_type = (!tt_ptrf32, i32) -> i32, sym_name = "ptr_arithmetic", sym_visibility = "public"}> ({
  ^bb0(%arg0: !tt_ptrf32, %arg1: i32):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 10 : index}> : () -> index
    %2 = "arith.constant"() <{value = 1 : index}> : () -> index
    %3 = "scf.for"(%0, %1, %2, %arg0) ({
    ^bb0(%arg2: index, %arg3: !tt_ptrf32):
      %4 = "tt.addptr"(%arg3, %arg2) : (!tt_ptrf32, index) -> !tt_ptrf32
      "scf.yield"(%4) : (!tt_ptrf32) -> ()
    }) : (index, index, index, !tt_ptrf32) -> !tt_ptrf32
    "tt.return"(%3) : (!tt_ptrf32) -> ()
  }) : () -> ()
}) : () -> ()


"builtin.module"() ({
  "tt.func"() <{function_type = () -> i32, sym_name = "tensor_reduction", sym_visibility = "public"}> ({
  ^bb0:
    %0 = "tt.make_range"() <{end = 10 : i32, start = 0 : i32}> : () -> tensor<10xi32>
    %1 = "tt.reduce"(%0) ({
    ^bb0(%arg0: i32, %arg1: i32):
      %2 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%2) : (i32) -> ()
    }) : (tensor<10xi32>) -> i32
    "tt.return"(%1) : (i32) -> ()
  }) : () -> ()
}) : () -> ()


"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "nested_loops", sym_visibility = "public"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 3 : index}> : () -> index
    %2 = "arith.constant"() <{value = 1 : index}> : () -> index
    %3 = "scf.for"(%0, %1, %2, %arg0) ({
    ^bb0(%arg2: index, %arg3: i32):
      %4 = "scf.for"(%0, %1, %2, %arg3) ({
      ^bb0(%arg4: index, %arg5: i32):
        %6 = "arith.addi"(%arg5, %arg4) <{overflowFlags = #arith_overflownone}> : (i32, index) -> i32
        "scf.yield"(%6) : (i32) -> ()
      }) : (index, index, index, i32) -> i32
      "scf.yield"(%4) : (i32) -> ()
    }) : (index, index, index, i32) -> i32
    "tt.return"(%3) : (i32) -> ()
  }) : () -> ()
}) : () -> ()