"builtin.module"() ({
  "func.func"() <{function_type = () -> !torch.bool, sym_name = "torch_c.from_i1"}> ({
    %22 = "arith.constant"() <{value = true}> : () -> i1
    %23 = "torch_c.from_i1"(%22) : (i1) -> !torch.bool
    "func.return"(%23) : (!torch.bool) -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> i1, sym_name = "torch_c.to_i1"}> ({
    %20 = "torch.constant.bool"() <{value = true}> : () -> !torch.bool
    %21 = "torch_c.to_i1"(%20) : (!torch.bool) -> i1
    "func.return"(%21) : (i1) -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> !torch.int, sym_name = "torch_c.from_i64"}> ({
    %18 = "arith.constant"() <{value = 5 : i64}> : () -> i64
    %19 = "torch_c.from_i64"(%18) : (i64) -> !torch.int
    "func.return"(%19) : (!torch.int) -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> i64, sym_name = "torch_c.to_i64"}> ({
    %16 = "torch.constant.int"() <{value = 5 : i64}> : () -> !torch.int
    %17 = "torch_c.to_i64"(%16) : (!torch.int) -> i64
    "func.return"(%17) : (i64) -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> i64, sym_name = "torch_c.from_i64$to_i64"}> ({
    %13 = "arith.constant"() <{value = 5 : i64}> : () -> i64
    %14 = "torch_c.from_i64"(%13) : (i64) -> !torch.int
    %15 = "torch_c.to_i64"(%14) : (!torch.int) -> i64
    "func.return"(%15) : (i64) -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> !torch.int, sym_name = "torch_c.to_i64$from_i64"}> ({
    %10 = "torch.constant.int"() <{value = 5 : i64}> : () -> !torch.int
    %11 = "torch_c.to_i64"(%10) : (!torch.int) -> i64
    %12 = "torch_c.from_i64"(%11) : (i64) -> !torch.int
    "func.return"(%12) : (!torch.int) -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> !torch.float, sym_name = "torch_c.from_f64"}> ({
    %8 = "arith.constant"() <{value = 5.000000e+00 : f64}> : () -> f64
    %9 = "torch_c.from_f64"(%8) : (f64) -> !torch.float
    "func.return"(%9) : (!torch.float) -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> f64, sym_name = "torch_c.to_f64"}> ({
    %6 = "torch.constant.float"() <{value = 5.000000e+00 : f64}> : () -> !torch.float
    %7 = "torch_c.to_f64"(%6) : (!torch.float) -> f64
    "func.return"(%7) : (f64) -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> f64, sym_name = "torch_c.from_f64$to_f64"}> ({
    %3 = "arith.constant"() <{value = 5.000000e+00 : f64}> : () -> f64
    %4 = "torch_c.from_f64"(%3) : (f64) -> !torch.float
    %5 = "torch_c.to_f64"(%4) : (!torch.float) -> f64
    "func.return"(%5) : (f64) -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> !torch.float, sym_name = "torch_c.to_f64$from_f64"}> ({
    %0 = "torch.constant.float"() <{value = 5.000000e+00 : f64}> : () -> !torch.float
    %1 = "torch_c.to_f64"(%0) : (!torch.float) -> f64
    %2 = "torch_c.from_f64"(%1) : (f64) -> !torch.float
    "func.return"(%2) : (!torch.float) -> ()
  }) : () -> ()
}) : () -> ()

