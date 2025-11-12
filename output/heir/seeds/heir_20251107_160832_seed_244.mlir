"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10xi32>) -> i32, sym_name = "complex_control_flow_and_types"}> ({
    ^bb0(%arg0: tensor<10xi32>):
      %0 = "arith.constant"() <{value = 5 : index}> : () -> index
      %1 = "arith.constant"() <{value = 3 : index}> : () -> index
      %2 = "arith.constant"() <{value = 0 : i32}> : () -> i32
      %3 = "scf.for"(%0, %1, %0, %2) ({
      ^bb1(%arg2: index, %arg3: i32):
        %4 = "tensor.extract"(%arg0, %arg2) : (tensor<10xi32>, index) -> i32
        %5 = "arith.cmpi"(%4, %2) <{predicate = 0 : i64}> : (i32, i32) -> i1
        %6 = "scf.if"(%5) ({
        ^bb2:
          %7 = "arith.addi"(%4, %arg3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
          "scf.yield"(%7) : (i32) -> ()
        }) {
        } : (i1) -> i32
        "scf.yield"(%6) : (i32) -> ()
      }) : (index, i32) -> i32
      "func.return"(%3) : (i32) -> ()
  }) : () -> ()
}) : () -> ()