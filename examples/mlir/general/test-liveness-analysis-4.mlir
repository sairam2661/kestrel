"builtin.module"() ({
  "func.func"() <{function_type = (tensor<f32>, tensor<f32>, i1) -> tensor<f32>, sym_name = "test_region_branch_result_in_different_result_1.c"}> ({
  ^bb0(%arg0: tensor<f32>, %arg1: tensor<f32>, %arg2: i1):
    %0 = "scf.if"(%arg2) ({
      "scf.yield"(%arg0) : (tensor<f32>) -> ()
    }, {
      "scf.yield"(%arg1) : (tensor<f32>) -> ()
    }) {tag = "region_branch"} : (i1) -> tensor<f32>
    "func.return"(%0) : (tensor<f32>) -> ()
  }) : () -> ()
}) : () -> ()

