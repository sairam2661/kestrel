"builtin.module"() ({
  "func.func"() <{function_type = (!torch_constant_i64, !torch_constant_i64) -> !torch_constant_i64, sym_name = "add_and_multiply"}> ({
  ^bb0(%arg0: !torch_constant_i64, %arg1: !torch_constant_i64):
    %2 = "torch.constant.i64"() <{value = 2 : i64}> : () -> !torch_constant_i64
    %3 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_constant_i64, !torch_constant_i64) -> !torch_constant_i64
    %4 = "torch.aten.mul.Tensor"(%3, %2) : (!torch_constant_i64, !torch_constant_i64) -> !torch_constant_i64
    "func.return"(%4) : (!torch_constant_i64) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (!torch_constant_f64, !torch_constant_f64) -> !torch_constant_f64, sym_name = "divide_and_subtract"}> ({
  ^bb0(%arg0: !torch_constant_f64, %arg1: !torch_constant_f64):
    %2 = "torch.constant.f64"() <{value = 0.5 : f64}> : () -> !torch_constant_f64
    %3 = "torch.aten.div.Tensor"(%arg0, %arg1) : (!torch_constant_f64, !torch_constant_f64) -> !torch_constant_f64
    %4 = "torch.aten.sub.Tensor"(%3, %2) : (!torch_constant_f64, !torch_constant_f64) -> !torch_constant_f64
    "func.return"(%4) : (!torch_constant_f64) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (!torch_constant_i64) -> i64, sym_name = "to_i64"}> ({
  ^bb0(%arg0: !torch_constant_i64):
    %2 = "torch_c.to_i64"(%arg0) : (!torch_constant_i64) -> i64
    "func.return"(%2) : (i64) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (!torch_constant_f64) -> f64, sym_name = "to_f64"}> ({
  ^bb0(%arg0: !torch_constant_f64):
    %2 = "torch_c.to_f64"(%arg0) : (!torch_constant_f64) -> f64
    "func.return"(%2) : (f64) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (!torch_constant_i32) -> !torch_constant_i32, sym_name = "increment"}> ({
  ^bb0(%arg0: !torch_constant_i32):
    %2 = "torch.constant.i32"() <{value = 1 : i32}> : () -> !torch_constant_i32
    %3 = "torch.aten.add.Tensor"(%arg0, %2) : (!torch_constant_i32, !torch_constant_i32) -> !torch_constant_i32
    "func.return"(%3) : (!torch_constant_i32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (!torch_constant_i64, !torch_constant_i64) -> !torch_constant_i64, sym_name = "multiply_and_add"}> ({
  ^bb0(%arg0: !torch_constant_i64, %arg1: !torch_constant_i64):
    %2 = "torch.constant.i64"() <{value = 3 : i64}> : () -> !torch_constant_i64
    %3 = "torch.aten.mul.Tensor"(%arg0, %arg1) : (!torch_constant_i64, !torch_constant_i64) -> !torch_constant_i64
    %4 = "torch.aten.add.Tensor"(%3, %2) : (!torch_constant_i64, !torch_constant_i64) -> !torch_constant_i64
    "func.return"(%4) : (!torch_constant_i64) -> ()
  }) : () -> ()
}) : () -> ()