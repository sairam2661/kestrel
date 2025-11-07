"builtin.module"() ({
  "func.func"() <{function_type = (tensor<f32>) -> tensor<f32>, sym_name = "eliminate_materializations"}> ({
  ^bb0(%arg4: tensor<f32>):
    %8 = "torch_c.from_builtin_tensor"(%arg4) : (tensor<f32>) -> !torch.vtensor<[],f32>
    %9 = "torch_c.to_builtin_tensor"(%8) : (!torch.vtensor<[],f32>) -> tensor<f32>
    "func.return"(%9) : (tensor<f32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i1) -> i1, sym_name = "eliminate_materializations$torch.bool"}> ({
  ^bb0(%arg3: i1):
    %6 = "torch_c.from_i1"(%arg3) : (i1) -> !torch.bool
    %7 = "torch_c.to_i1"(%6) : (!torch.bool) -> i1
    "func.return"(%7) : (i1) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i64) -> i64, sym_name = "eliminate_materializations$torch.int"}> ({
  ^bb0(%arg2: i64):
    %4 = "torch_c.from_i64"(%arg2) : (i64) -> !torch.int
    %5 = "torch_c.to_i64"(%4) : (!torch.int) -> i64
    "func.return"(%5) : (i64) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (f64) -> f64, sym_name = "eliminate_materializations$torch.float"}> ({
  ^bb0(%arg1: f64):
    %2 = "torch_c.from_f64"(%arg1) : (f64) -> !torch.float
    %3 = "torch_c.to_f64"(%2) : (!torch.float) -> f64
    "func.return"(%3) : (f64) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i64) -> i64, sym_name = "eliminate_materializations$torch.Generator"}> ({
  ^bb0(%arg0: i64):
    %0 = "torch_c.i64_to_generator"(%arg0) : (i64) -> !torch.Generator
    %1 = "torch_c.generator_to_i64"(%0) : (!torch.Generator) -> i64
    "func.return"(%1) : (i64) -> ()
  }) : () -> ()
}) : () -> ()

