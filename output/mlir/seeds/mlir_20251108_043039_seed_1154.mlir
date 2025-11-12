"builtin.module"() ({
  "func.func"() <{function_type = (index, tensor<13x21xf32>) -> (index, tensor<13x21xf32>), sym_name = "process_data"}> ({
  ^bb0(%arg0: index, %arg1: tensor<13x21xf32>):
    %0 = "arith.constant"() <{value = 42 : index}> : () -> index
    %1 = "arith.cmpi"(%arg0, %0) <{predicate = 0 : i64}> : (index, index) -> i1
    "scf.if"(%1) ({
    ^bb1(%arg2: index, %arg3: tensor<13x21xf32>):
      %2 = "arith.constant"() <{value = 3.14 : f32}> : () -> f32
      %3 = "tosa.lut"(%arg3, %2) : (tensor<13x21xf32>, f32) -> tensor<13x21xf32>
      "scf.yield"(%arg2, %3) : (index, tensor<13x21xf32>) -> ()
    }) {
    } : (index, tensor<13x21xf32>) -> (index, tensor<13x21xf32>)
    "func.return"(%arg0, %arg1) : (index, tensor<13x21xf32>) -> ()
  }) : (index, tensor<13x21xf32>) -> (index, tensor<13x21xf32>)
}) : () -> ()