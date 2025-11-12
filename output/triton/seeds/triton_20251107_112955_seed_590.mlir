"builtin.module"() ({
  "tt.func"() <{function_type = (i32, tensor<32xi32>) -> (i32, tensor<32xi32>), sym_name = "complex_interaction"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<32xi32>):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.cmpi"(%arg0, %0, "eq") <{predicate = "eq"}> : (i32, i32) -> i1
    "scf.if"(%1) ({
      "tt.return"(%arg0, %arg1) : (i32, tensor<32xi32>) -> ()
    }) : i1,   !"scf"
    %2 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %3 = "arith.addi"(%arg0, %2) <{overflowFlags = #arith_overflowFlags} > : (i32, i32) -> i32
    %4 = "arith.muli"(%arg0, %2) <{overflowFlags = #arith_overflowFlags} > : (i32, i32) -> i32
    %5 = "arith.divsi"(%arg0, %2) <{signedness = "signed"}> : (i32, i32) -> i32
    %6 = "arith.xori"(%arg0, %2) <{overflowFlags = #arith_overflowFlags} > : (i32, i32) -> i32
    "scf.for"(%0, %arg0, %2, %arg0) ({
    ^bb0(%indvar: index, %arg2: i32):
      %7 = "arith.addi"(%arg2, %indvar) <{overflowFlags = #arith_overflowFlags} > : (i32, index) -> i32
      "scf.yield"(%arg2, %7) : (i32, i32) -> ()
    }) : (index, i32, i32, i32) -> (i32, i32)
    "tt.return"(%3, %4) : (i32, i32) -> ()
  }) : () -> ()
}) : () -> ()