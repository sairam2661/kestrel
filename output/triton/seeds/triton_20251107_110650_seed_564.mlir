"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_division"}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
      %1 = "arith.divsi"(%arg0, %arg1) <{signedness = #arithSigned}> : (i32, i32) -> i32
      %2 = "arith.remsi"(%arg0, %arg1) <{signedness = #arithSigned}> : (i32, i32) -> i32
      %3 = "arith.select"(%2, %0, %1) <{predicate = "ne"}> : (i32, i32, i32) -> i32
      "tt.return"(%3) : (i32) -> ()
  }) : () -> ()
}) : () -> ()



"builtin.module"() ({
  "tt.func"() <{function_type = (i32) -> (), sym_name = "loop_example"}> ({
    ^bb0(%arg0: i32):
      %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
      %1 = "arith.constant"() <{value = 10 : i32}> : () -> i32
      "scf.for"(%0, %1, %arg0) ({
        ^bb0(%arg1: i32):
          %2 = "arith.addi"(%arg1, %arg1) <{overflowFlags = #arithOverflowNone}> : (i32, i32) -> i32
          "scf.yield"() : () -> ()
      }) {tt.num_stages = 2 : i32} : (i32, i32, i32) -> ()
      "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()



"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>, sym_name = "tensor_add"}> ({
    ^bb0(%arg0: tensor<2xi32>, %arg1: tensor<2xi32>):
      %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arithOverflowNone}> : (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>
      "tt.return"(%0) : (tensor<2xi32>) -> ()
  }) : () -> ()
}) : () -> ()



"builtin.module"() ({
  "tt.func"() <{function_type = (i32) -> (), sym_name = "call_example"}> ({
    ^bb0(%arg0: i32):
      "tt.call"(%arg0) <{callee = @loop_example}> : (i32) -> ()
      "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()



"builtin.module"() ({
  "tt.func"() <{function_type = () -> (), sym_name = "reduce_example"}> ({
    ^bb0():
      %0 = "tt.make_range"() <{start = 0 : i32, end = 8 : i32}> : () -> tensor<8xi32>
      "tt.reduce"(%0) ({
        ^bb0(%arg0: i32, %arg1: i32):
          %1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arithOverflowNone}> : (i32, i32) -> i32
          "scf.yield"(%1) : (i32) -> ()
      }) {tt.operator = "+"} : (tensor<8xi32>) -> i32
      "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()



"builtin.module"() ({
  "tt.func"() <{function_type = (i32) -> (), sym_name = "expand_example"}> ({
    ^bb0(%arg0: i32):
      %0 = "tt.expand_dims"(%arg0) <{axis = 0}> : (i32) -> tensor<1xi32>
      "tt.return"(%0) : (tensor<1xi32>) -> ()
  }) : () -> ()
}) : () -> ()



"builtin.module"() ({
  "tt.func"() <{function_type = () -> (), sym_name = "scratch_alloc_example"}> ({
    ^bb0():
      "ttg.global_scratch_alloc"() <{size = 1024 : i32}> : () -> ()
      "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()



"builtin.module"() ({
  "tt.func"() <{function_type = (i32) -> i32, sym_name = "if_example"}> ({
    ^bb0(%arg0: i32):
      %0 = "arith.constant"() <{value = 5 : i32}> : () -> i32
      "scf.if"(%arg0) ({
        %1 = "arith.addi"(%arg0, %0) <{overflowFlags = #arithOverflowNone}> : (i32, i32) -> i32
        "scf.yield"(%1) : (i32) -> ()
      }, {
        %2 = "arith.muli"(%arg0, %0) <{overflowFlags = #arithOverflowNone}> : (i32, i32) -> i32
        "scf.yield"(%2) : (i32) -> ()
      }) : (i32) -> i32
      "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()